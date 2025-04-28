library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Memoria is
    port(
        clk      : in  std_logic;
        ent      : in  std_logic;
        sal      : out std_logic;
        pos_h    : in  integer range 0 to 639;
        pos_v    : in  integer range 0 to 479;
        addr_wr  : in  std_logic_vector(18 downto 0)
    );
end Memoria;

architecture comp of Memoria is

    component Memory
        port (
            clock     : in  std_logic;
            data      : in  std_logic_vector(0 downto 0);
            rdaddress : in  std_logic_vector(18 downto 0);
            wraddress : in  std_logic_vector(18 downto 0);
            wren      : in  std_logic;
            q         : out std_logic_vector(0 downto 0)
        );
    end component;

    constant ANCHO : integer := 640;

    signal clk_cam     : std_logic := '0';
    signal clk_vga     : std_logic := '0';
    signal s_wradd     : std_logic_vector(18 downto 0);
    signal s_rdadd     : std_logic_vector(18 downto 0);
    signal s_wrdata    : std_logic_vector(0 downto 0);
    signal s_rddata    : std_logic_vector(0 downto 0);
    signal s_wr        : std_logic := '1';

begin

    -- División de reloj para cámara (25 MHz aprox.)
    reloj_cam: process(clk)
        variable count: integer := 0;
    begin
        if rising_edge(clk) then
            count := count + 1;
            if count = 2 then
                clk_cam <= not clk_cam;
                count := 0;
            end if;
        end if;
    end process;

    -- División de reloj para VGA
    reloj_vga: process(clk)
    begin
        if rising_edge(clk) then
            clk_vga <= not clk_vga;
        end if;
    end process;

    -- Escritura en memoria con dirección desde Rxdata
    escritura_mem: process(clk_cam)
    begin
        if rising_edge(clk_cam) then
            s_wradd     <= addr_wr;
            s_wrdata(0) <= ent;
        end if;
    end process;

    -- Dirección de lectura según coordenadas VGA
    s_rdadd <= std_logic_vector(to_unsigned(pos_v * ANCHO + pos_h, s_rdadd'length));

    -- Instancia del bloque de memoria (RAM de 1 bit)
    Memory_inst: Memory
        port map (
            clock     => clk,
            data      => s_wrdata,
            rdaddress => s_rdadd,
            wraddress => s_wradd,
            wren      => s_wr,
            q         => s_rddata
        );

    sal <= s_rddata(0);

end comp;
