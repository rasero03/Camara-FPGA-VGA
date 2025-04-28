library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Rxdata is
    port( 
        pclk       : in std_logic;
        VSYNC      : in std_logic;
        HREF       : in std_logic;
        clk        : in std_logic;
        oclk       : out std_logic := '0';
        D          : in std_logic_vector(7 downto 0);
        dato       : out std_logic;
        VSYNC_reg  : buffer std_logic;
        HREF_reg   : buffer std_logic;
        addr_wr    : out std_logic_vector(18 downto 0)
    );
end Rxdata;

architecture comp of Rxdata is
    signal ybyte    : std_logic := '0';
    constant htop   : integer := 639;
    constant vtop   : integer := 479;
    signal d_reg    : std_logic_vector(7 downto 0);
    signal oclk_r   : std_logic := '0';
begin

    -- Generación de reloj para la cámara
    process (clk)
    begin
        if rising_edge(clk) then
            oclk_r <= not oclk_r;
            oclk <= oclk_r;
        end if;
    end process;

    -- Procesamiento de datos desde la cámara
    process (pclk)
        variable hcont : integer range 0 to 639 := 0;
        variable vcont : integer range 0 to 479 := 0;
        variable est   : integer := 0;
        variable flg_strt : std_logic := '0';
    begin
        if rising_edge(pclk) then
            VSYNC_reg <= VSYNC;
            HREF_reg <= HREF;

            case(est) is
                when 0 =>
                    if(VSYNC_reg = '1' and flg_strt = '0') then
                        flg_strt := '1';
                    end if;
                    if(VSYNC_reg = '0' and flg_strt = '1') then
                        est := 1;
                    end if;

                when 1 =>
                    if(vcont < vtop) then
                        if(HREF_reg = '1') then
                            est := 2;
                        end if;
                    elsif(vcont = vtop) then
                        flg_strt := '0';
                        vcont := 0;
                        est := 0;
                    end if;

                when 2 =>
                    if(hcont < htop) then
                        if(ybyte = '0') then
                            ybyte <= '1';
                        else
                            d_reg <= D;
                            ybyte <= '0';

                            -- Conversión a blanco y negro 1-bit
                            if (to_integer(unsigned(d_reg)) > 127) then
                                dato <= '1';
                            else
                                dato <= '0';
                            end if;

                            -- Dirección basada en coordenadas
                            addr_wr <= std_logic_vector(to_unsigned(vcont * 640 + hcont, addr_wr'length));

                            hcont := hcont + 1;
                        end if;
                    else
                        hcont := 0;
                        vcont := vcont + 1;
                        est := 1;
                    end if;

                when others =>
                    est := 0;
            end case;
        end if;
    end process;
end comp;
