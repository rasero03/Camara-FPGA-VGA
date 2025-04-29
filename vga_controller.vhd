LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

entity VGA_controller is
    Port(
        clk        : in  STD_LOGIC; -- 50 MHz
        Data       : in  std_logic;

        Hsync_VGA  : out std_logic;
        Vsync_VGA  : out std_logic;
        R, G, B    : out STD_LOGIC_VECTOR (3 downto 0);
        pos_h      : buffer integer range 0 to 639;
        pos_v      : buffer integer range 0 to 479
    );
end VGA_controller;

architecture comp of VGA_controller is

    signal clk_b : std_logic := '0'; -- 25 MHz (división del clk de 50 MHz)

    -- Constantes horizontales
    constant Horizontal_pixel : integer := 640;
    constant FrontPorch_H     : integer := 16;
    constant SyncPulse_H      : integer := 96;
    constant BackPorch_H      : integer := 48;
    constant HTOT             : integer := Horizontal_pixel + FrontPorch_H + SyncPulse_H + BackPorch_H;

    -- Constantes verticales
    constant Vertical_pixel   : integer := 480;
    constant FrontPorch_V     : integer := 10;
    constant SyncPulse_V      : integer := 2;
    constant BackPorch_V      : integer := 33;
    constant VTOT             : integer := Vertical_pixel + FrontPorch_V + SyncPulse_V + BackPorch_V;

    -- Offsets de imagen activa
    constant h_offset : integer := SyncPulse_H + BackPorch_H;
    constant v_offset : integer := SyncPulse_V + BackPorch_V;

    -- Contadores internos
    signal h_count : integer range 0 to HTOT - 1 := 0;
    signal v_count : integer range 0 to VTOT - 1 := 0;

begin

    -- Reloj a 25 MHz
    reloj: process(clk)
    begin
        if rising_edge(clk) then
            clk_b <= not clk_b;
        end if;
    end process;

    -- Generación de sincronización y posiciones
    posiciones: process(clk_b)
    begin
        if rising_edge(clk_b) then
            -- Contadores de píxeles
            if h_count = HTOT - 1 then
                h_count <= 0;
                if v_count = VTOT - 1 then
                    v_count <= 0;
                else
                    v_count <= v_count + 1;
                end if;
            else
                h_count <= h_count + 1;
            end if;

            -- Señales de sincronización
            if h_count < SyncPulse_H then
                Hsync_VGA <= '0';
            else
                Hsync_VGA <= '1';
            end if;

            if v_count < SyncPulse_V then
                Vsync_VGA <= '0';
            else
                Vsync_VGA <= '1';
            end if;

            -- Zona activa: ajustar coordenadas
            if (h_count >= h_offset and h_count < h_offset + Horizontal_pixel and
                v_count >= v_offset and v_count < v_offset + Vertical_pixel) then

                pos_h <= h_count - h_offset;
                pos_v <= v_count - v_offset;

                -- Color del píxel: blanco si Data = '1'
                R <= (others => Data);
                G <= (others => Data);
                B <= (others => Data);
            else
                -- Zona no activa: coordenadas en 0 y color negro
                pos_h <= 0;
                pos_v <= 0;
                R <= "0000";
                G <= "0000";
                B <= "0000";
            end if;
        end if;
    end process;

end comp;
