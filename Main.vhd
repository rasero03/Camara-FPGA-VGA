library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Main is
    port(
        clk        : in  std_logic;          -- Reloj principal (50 MHz)
        pclk       : in  std_logic;          -- Reloj de la cámara OV7670
        VSYNC      : in  std_logic;          -- Señal VSYNC de cámara
        HREF       : in  std_logic;          -- Señal HREF de cámara
        D          : in  std_logic_vector(7 downto 0); -- Datos de la cámara
        Hsync_VGA  : out std_logic;
        Vsync_VGA  : out std_logic;
        R, G, B    : out std_logic_vector(3 downto 0);
        oclk       : out std_logic           -- Reloj de salida para cámara
    );
end Main;

architecture comp of Main is

    -- Pines de Rxdata
    attribute chip_pin : string;
    attribute chip_pin of clk : signal is "N14"; -- 50 MHz clk
    attribute chip_pin of oclk : signal is "W10"; -- GPIO_[1] 
    attribute chip_pin of pclk : signal is "W9"; --GPIO_[3]
    attribute chip_pin of D : signal is "AA15, W13, AB13, Y11, W11, AA10, Y8, Y7"; -- GPIO_[11] a GPIO_[25]
    attribute chip_pin of VSYNC : signal is "W8"; --GPIO_[5]
    attribute chip_pin of HREF : signal is "W7"; --GPIO_[7]

    -- Pines de VGA
    attribute chip_pin of Hsync_VGA : signal is "N3";
    attribute chip_pin of Vsync_VGA : signal is "N1";
    attribute chip_pin of R : signal is "AA1, V1, Y2, Y1";
    attribute chip_pin of G : signal is "W1, T2, R2, R1";
    attribute chip_pin of B : signal is "P1, T1, P4, N2";

    -- Señales internas
    signal dato, VSYNC_reg, HREF_reg : std_logic;
    signal pos_h, pos_v              : integer range 0 to 639 := 0;
    signal data_out                  : std_logic;
    signal addr_wr                   : std_logic_vector(18 downto 0); -- Nueva señal

    -- Componentes
    component Rxdata
        port(
            pclk       : in  std_logic;
            VSYNC      : in  std_logic;
            HREF       : in  std_logic;
            clk        : in  std_logic;
            oclk       : out std_logic := '0';
            D          : in  std_logic_vector(7 downto 0);
            dato       : out std_logic;
            VSYNC_reg  : buffer std_logic;
            HREF_reg   : buffer std_logic;
            addr_wr    : out std_logic_vector(18 downto 0)
        );
    end component;

    component Memoria
        port(
            clk      : in  std_logic;
            ent      : in  std_logic;
            sal      : out std_logic;
            pos_h    : in  integer range 0 to 639;
            pos_v    : in  integer range 0 to 479;
            addr_wr  : in  std_logic_vector(18 downto 0)
        );
    end component;

    component VGA_controller
        port(
            clk        : in  std_logic;
            Data       : in  std_logic;
            Hsync_VGA  : out std_logic;
            Vsync_VGA  : out std_logic;
            R, G, B    : out std_logic_vector(3 downto 0);
            pos_h      : out integer range 0 to 639;
            pos_v      : out integer range 0 to 479
        );
    end component;

begin

    -- Instancia de captura desde la cámara
    rx_cam: Rxdata
        port map (
            pclk      => pclk,
            VSYNC     => VSYNC,
            HREF      => HREF,
            clk       => clk,
            oclk      => oclk,
            D         => D,
            dato      => dato,
            VSYNC_reg => VSYNC_reg,
            HREF_reg  => HREF_reg,
            addr_wr   => addr_wr
        );

    -- Instancia de memoria con direccionamiento por coordenadas + addr_wr externo
    frame_buffer: Memoria
        port map (
            clk     => clk,
            ent     => dato,
            sal     => data_out,
            pos_h   => pos_h,
            pos_v   => pos_v,
            addr_wr => addr_wr
        );

    -- Instancia de controlador VGA
    vga: VGA_controller
        port map (
            clk        => clk,
            Data       => data_out,
            Hsync_VGA  => Hsync_VGA,
            Vsync_VGA  => Vsync_VGA,
            R          => R,
            G          => G,
            B          => B,
            pos_h      => pos_h,
            pos_v      => pos_v
        );

end comp;
