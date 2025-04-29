-- Copyright (C) 2024  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 23.1std.1 Build 993 05/14/2024 SC Lite Edition"

-- DATE "04/29/2025 13:25:37"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Main IS
    PORT (
	clk : IN std_logic;
	pclk : IN std_logic;
	VSYNC : IN std_logic;
	HREF : IN std_logic;
	D : IN std_logic_vector(7 DOWNTO 0);
	Hsync_VGA : BUFFER std_logic;
	Vsync_VGA : BUFFER std_logic;
	R : BUFFER std_logic_vector(3 DOWNTO 0);
	G : BUFFER std_logic_vector(3 DOWNTO 0);
	B : BUFFER std_logic_vector(3 DOWNTO 0);
	oclk : BUFFER std_logic
	);
END Main;

-- Design Ports Information
-- Hsync_VGA	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Vsync_VGA	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[0]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[1]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[2]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[3]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G[0]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G[1]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G[2]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G[3]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_T1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oclk	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[6]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[5]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[4]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[3]	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[2]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[1]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[0]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pclk	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[7]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HREF	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VSYNC	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Main IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_pclk : std_logic;
SIGNAL ww_VSYNC : std_logic;
SIGNAL ww_HREF : std_logic;
SIGNAL ww_D : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Hsync_VGA : std_logic;
SIGNAL ww_Vsync_VGA : std_logic;
SIGNAL ww_R : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_G : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_oclk : std_logic;
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a33_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a33_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a33_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a33_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a34_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a34_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a34_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a34_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a32_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a32_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a32_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a32_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a35_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a35_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a35_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a35_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a1_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a1_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a1_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a2_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a2_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a3_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a3_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a3_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a11_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a11_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a11_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a9_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a9_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a9_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a10_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a10_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a8_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a8_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a8_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a15_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a15_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a15_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a15_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a13_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a13_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a13_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a13_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a14_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a14_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a12_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a12_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a12_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a5_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a5_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a5_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a6_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a6_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a6_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a4_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a4_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a7_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a7_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a7_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a37_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a37_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a37_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a37_PORTBDATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a36_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a36_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a36_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a36_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a21_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a21_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a21_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a21_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a22_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a22_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a22_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a22_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a20_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a20_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a20_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a20_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a23_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a23_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a23_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a23_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a17_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a17_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a17_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a17_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a18_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a18_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a18_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a18_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a16_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a16_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a16_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a16_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a19_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a19_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a19_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a19_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a27_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a27_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a27_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a27_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a26_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a26_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a26_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a26_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a25_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a25_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a25_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a25_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a24_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a24_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a24_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a24_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a31_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a31_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a31_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a31_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a30_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a30_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a30_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a30_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a29_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a29_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a29_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a29_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a28_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a28_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a28_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a28_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \frame_buffer|clk_cam~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \vga|clk_b~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \D[6]~input_o\ : std_logic;
SIGNAL \D[5]~input_o\ : std_logic;
SIGNAL \D[4]~input_o\ : std_logic;
SIGNAL \D[3]~input_o\ : std_logic;
SIGNAL \D[2]~input_o\ : std_logic;
SIGNAL \D[1]~input_o\ : std_logic;
SIGNAL \D[0]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \Hsync_VGA~output_o\ : std_logic;
SIGNAL \Vsync_VGA~output_o\ : std_logic;
SIGNAL \R[0]~output_o\ : std_logic;
SIGNAL \R[1]~output_o\ : std_logic;
SIGNAL \R[2]~output_o\ : std_logic;
SIGNAL \R[3]~output_o\ : std_logic;
SIGNAL \G[0]~output_o\ : std_logic;
SIGNAL \G[1]~output_o\ : std_logic;
SIGNAL \G[2]~output_o\ : std_logic;
SIGNAL \G[3]~output_o\ : std_logic;
SIGNAL \B[0]~output_o\ : std_logic;
SIGNAL \B[1]~output_o\ : std_logic;
SIGNAL \B[2]~output_o\ : std_logic;
SIGNAL \B[3]~output_o\ : std_logic;
SIGNAL \oclk~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \vga|clk_b~0_combout\ : std_logic;
SIGNAL \vga|clk_b~feeder_combout\ : std_logic;
SIGNAL \vga|clk_b~q\ : std_logic;
SIGNAL \vga|clk_b~clkctrl_outclk\ : std_logic;
SIGNAL \vga|Add1~0_combout\ : std_logic;
SIGNAL \vga|Add1~1\ : std_logic;
SIGNAL \vga|Add1~2_combout\ : std_logic;
SIGNAL \vga|Add1~3\ : std_logic;
SIGNAL \vga|Add1~4_combout\ : std_logic;
SIGNAL \vga|Add1~5\ : std_logic;
SIGNAL \vga|Add1~6_combout\ : std_logic;
SIGNAL \vga|Add1~15\ : std_logic;
SIGNAL \vga|Add1~16_combout\ : std_logic;
SIGNAL \vga|h_count~1_combout\ : std_logic;
SIGNAL \vga|Add1~17\ : std_logic;
SIGNAL \vga|Add1~18_combout\ : std_logic;
SIGNAL \vga|h_count~2_combout\ : std_logic;
SIGNAL \vga|Equal0~1_combout\ : std_logic;
SIGNAL \vga|Equal0~0_combout\ : std_logic;
SIGNAL \vga|Add1~7\ : std_logic;
SIGNAL \vga|Add1~8_combout\ : std_logic;
SIGNAL \vga|Equal0~2_combout\ : std_logic;
SIGNAL \vga|Add1~9\ : std_logic;
SIGNAL \vga|Add1~10_combout\ : std_logic;
SIGNAL \vga|h_count~0_combout\ : std_logic;
SIGNAL \vga|Add1~11\ : std_logic;
SIGNAL \vga|Add1~12_combout\ : std_logic;
SIGNAL \vga|Add1~13\ : std_logic;
SIGNAL \vga|Add1~14_combout\ : std_logic;
SIGNAL \vga|LessThan0~0_combout\ : std_logic;
SIGNAL \vga|LessThan0~1_combout\ : std_logic;
SIGNAL \vga|Hsync_VGA~q\ : std_logic;
SIGNAL \vga|Add0~0_combout\ : std_logic;
SIGNAL \vga|Add0~3\ : std_logic;
SIGNAL \vga|Add0~4_combout\ : std_logic;
SIGNAL \vga|Equal1~2_combout\ : std_logic;
SIGNAL \vga|v_count~1_combout\ : std_logic;
SIGNAL \vga|Add0~5\ : std_logic;
SIGNAL \vga|Add0~6_combout\ : std_logic;
SIGNAL \vga|v_count~2_combout\ : std_logic;
SIGNAL \vga|Add0~7\ : std_logic;
SIGNAL \vga|Add0~8_combout\ : std_logic;
SIGNAL \vga|Add0~9\ : std_logic;
SIGNAL \vga|Add0~10_combout\ : std_logic;
SIGNAL \vga|Add0~11\ : std_logic;
SIGNAL \vga|Add0~12_combout\ : std_logic;
SIGNAL \vga|Add0~13\ : std_logic;
SIGNAL \vga|Add0~14_combout\ : std_logic;
SIGNAL \vga|Add0~15\ : std_logic;
SIGNAL \vga|Add0~16_combout\ : std_logic;
SIGNAL \vga|Equal1~0_combout\ : std_logic;
SIGNAL \vga|v_count~3_combout\ : std_logic;
SIGNAL \vga|Add0~1\ : std_logic;
SIGNAL \vga|Add0~2_combout\ : std_logic;
SIGNAL \vga|Equal1~1_combout\ : std_logic;
SIGNAL \vga|Add0~17\ : std_logic;
SIGNAL \vga|Add0~18_combout\ : std_logic;
SIGNAL \vga|v_count~0_combout\ : std_logic;
SIGNAL \vga|LessThan4~0_combout\ : std_logic;
SIGNAL \vga|LessThan1~0_combout\ : std_logic;
SIGNAL \vga|Vsync_VGA~q\ : std_logic;
SIGNAL \vga|LessThan4~1_combout\ : std_logic;
SIGNAL \vga|LessThan5~0_combout\ : std_logic;
SIGNAL \vga|LessThan4~2_combout\ : std_logic;
SIGNAL \vga|posiciones~2_combout\ : std_logic;
SIGNAL \vga|posiciones~3_combout\ : std_logic;
SIGNAL \vga|posiciones~4_combout\ : std_logic;
SIGNAL \vga|pos_v[0]~10\ : std_logic;
SIGNAL \vga|pos_v[1]~12\ : std_logic;
SIGNAL \vga|pos_v[2]~14\ : std_logic;
SIGNAL \vga|pos_v[3]~16\ : std_logic;
SIGNAL \vga|pos_v[4]~18\ : std_logic;
SIGNAL \vga|pos_v[5]~20\ : std_logic;
SIGNAL \vga|pos_v[6]~22\ : std_logic;
SIGNAL \vga|pos_v[7]~24\ : std_logic;
SIGNAL \vga|pos_v[8]~25_combout\ : std_logic;
SIGNAL \vga|posiciones~5_combout\ : std_logic;
SIGNAL \vga|pos_v[7]~23_combout\ : std_logic;
SIGNAL \vga|pos_v[6]~21_combout\ : std_logic;
SIGNAL \vga|pos_v[5]~19_combout\ : std_logic;
SIGNAL \vga|pos_v[4]~17_combout\ : std_logic;
SIGNAL \vga|pos_v[3]~15_combout\ : std_logic;
SIGNAL \vga|pos_v[2]~13_combout\ : std_logic;
SIGNAL \vga|pos_v[1]~11_combout\ : std_logic;
SIGNAL \vga|pos_v[0]~9_combout\ : std_logic;
SIGNAL \frame_buffer|Add1~1\ : std_logic;
SIGNAL \frame_buffer|Add1~3\ : std_logic;
SIGNAL \frame_buffer|Add1~5\ : std_logic;
SIGNAL \frame_buffer|Add1~7\ : std_logic;
SIGNAL \frame_buffer|Add1~9\ : std_logic;
SIGNAL \frame_buffer|Add1~11\ : std_logic;
SIGNAL \frame_buffer|Add1~13\ : std_logic;
SIGNAL \frame_buffer|Add1~15\ : std_logic;
SIGNAL \frame_buffer|Add1~16_combout\ : std_logic;
SIGNAL \frame_buffer|Add1~14_combout\ : std_logic;
SIGNAL \frame_buffer|Add1~12_combout\ : std_logic;
SIGNAL \frame_buffer|Add1~10_combout\ : std_logic;
SIGNAL \frame_buffer|Add1~8_combout\ : std_logic;
SIGNAL \frame_buffer|Add1~6_combout\ : std_logic;
SIGNAL \frame_buffer|Add1~4_combout\ : std_logic;
SIGNAL \frame_buffer|Add1~2_combout\ : std_logic;
SIGNAL \vga|pos_h[4]~11\ : std_logic;
SIGNAL \vga|pos_h[5]~13\ : std_logic;
SIGNAL \vga|pos_h[6]~15\ : std_logic;
SIGNAL \vga|pos_h[7]~17\ : std_logic;
SIGNAL \vga|pos_h[8]~19\ : std_logic;
SIGNAL \vga|pos_h[9]~20_combout\ : std_logic;
SIGNAL \frame_buffer|Add1~0_combout\ : std_logic;
SIGNAL \vga|pos_h[8]~18_combout\ : std_logic;
SIGNAL \vga|pos_h[7]~16_combout\ : std_logic;
SIGNAL \frame_buffer|s_rdadd[7]~1\ : std_logic;
SIGNAL \frame_buffer|s_rdadd[8]~3\ : std_logic;
SIGNAL \frame_buffer|s_rdadd[9]~5\ : std_logic;
SIGNAL \frame_buffer|s_rdadd[10]~7\ : std_logic;
SIGNAL \frame_buffer|s_rdadd[11]~9\ : std_logic;
SIGNAL \frame_buffer|s_rdadd[12]~11\ : std_logic;
SIGNAL \frame_buffer|s_rdadd[13]~13\ : std_logic;
SIGNAL \frame_buffer|s_rdadd[14]~15\ : std_logic;
SIGNAL \frame_buffer|s_rdadd[15]~17\ : std_logic;
SIGNAL \frame_buffer|s_rdadd[16]~19\ : std_logic;
SIGNAL \frame_buffer|s_rdadd[17]~20_combout\ : std_logic;
SIGNAL \frame_buffer|Add1~17\ : std_logic;
SIGNAL \frame_buffer|Add1~18_combout\ : std_logic;
SIGNAL \frame_buffer|s_rdadd[17]~21\ : std_logic;
SIGNAL \frame_buffer|s_rdadd[18]~22_combout\ : std_logic;
SIGNAL \frame_buffer|s_rdadd[16]~18_combout\ : std_logic;
SIGNAL \frame_buffer|s_rdadd[15]~16_combout\ : std_logic;
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b[2]~feeder_combout\ : std_logic;
SIGNAL \frame_buffer|s_rdadd[14]~14_combout\ : std_logic;
SIGNAL \frame_buffer|s_rdadd[13]~12_combout\ : std_logic;
SIGNAL \frame_buffer|reloj_cam:count[4]~q\ : std_logic;
SIGNAL \rx_cam|oclk_r~0_combout\ : std_logic;
SIGNAL \rx_cam|oclk_r~q\ : std_logic;
SIGNAL \frame_buffer|Add0~1\ : std_logic;
SIGNAL \frame_buffer|Add0~2_combout\ : std_logic;
SIGNAL \frame_buffer|reloj_cam:count[30]~q\ : std_logic;
SIGNAL \frame_buffer|Add0~9\ : std_logic;
SIGNAL \frame_buffer|Add0~10_combout\ : std_logic;
SIGNAL \frame_buffer|reloj_cam:count[5]~q\ : std_logic;
SIGNAL \frame_buffer|Add0~11\ : std_logic;
SIGNAL \frame_buffer|Add0~12_combout\ : std_logic;
SIGNAL \frame_buffer|reloj_cam:count[6]~q\ : std_logic;
SIGNAL \frame_buffer|Add0~13\ : std_logic;
SIGNAL \frame_buffer|Add0~14_combout\ : std_logic;
SIGNAL \frame_buffer|reloj_cam:count[7]~q\ : std_logic;
SIGNAL \frame_buffer|Add0~15\ : std_logic;
SIGNAL \frame_buffer|Add0~16_combout\ : std_logic;
SIGNAL \frame_buffer|reloj_cam:count[8]~q\ : std_logic;
SIGNAL \frame_buffer|Add0~17\ : std_logic;
SIGNAL \frame_buffer|Add0~18_combout\ : std_logic;
SIGNAL \frame_buffer|reloj_cam:count[9]~q\ : std_logic;
SIGNAL \frame_buffer|Add0~19\ : std_logic;
SIGNAL \frame_buffer|Add0~20_combout\ : std_logic;
SIGNAL \frame_buffer|reloj_cam:count[10]~q\ : std_logic;
SIGNAL \frame_buffer|Add0~21\ : std_logic;
SIGNAL \frame_buffer|Add0~22_combout\ : std_logic;
SIGNAL \frame_buffer|reloj_cam:count[11]~q\ : std_logic;
SIGNAL \frame_buffer|Add0~23\ : std_logic;
SIGNAL \frame_buffer|Add0~24_combout\ : std_logic;
SIGNAL \frame_buffer|reloj_cam:count[12]~q\ : std_logic;
SIGNAL \frame_buffer|Add0~25\ : std_logic;
SIGNAL \frame_buffer|Add0~26_combout\ : std_logic;
SIGNAL \frame_buffer|reloj_cam:count[13]~q\ : std_logic;
SIGNAL \frame_buffer|Add0~27\ : std_logic;
SIGNAL \frame_buffer|Add0~28_combout\ : std_logic;
SIGNAL \frame_buffer|reloj_cam:count[14]~q\ : std_logic;
SIGNAL \frame_buffer|Add0~29\ : std_logic;
SIGNAL \frame_buffer|Add0~30_combout\ : std_logic;
SIGNAL \frame_buffer|reloj_cam:count[15]~q\ : std_logic;
SIGNAL \frame_buffer|Add0~31\ : std_logic;
SIGNAL \frame_buffer|Add0~32_combout\ : std_logic;
SIGNAL \frame_buffer|reloj_cam:count[16]~q\ : std_logic;
SIGNAL \frame_buffer|Add0~33\ : std_logic;
SIGNAL \frame_buffer|Add0~34_combout\ : std_logic;
SIGNAL \frame_buffer|reloj_cam:count[17]~q\ : std_logic;
SIGNAL \frame_buffer|Add0~35\ : std_logic;
SIGNAL \frame_buffer|Add0~36_combout\ : std_logic;
SIGNAL \frame_buffer|reloj_cam:count[18]~q\ : std_logic;
SIGNAL \frame_buffer|Add0~37\ : std_logic;
SIGNAL \frame_buffer|Add0~38_combout\ : std_logic;
SIGNAL \frame_buffer|reloj_cam:count[19]~q\ : std_logic;
SIGNAL \frame_buffer|Add0~39\ : std_logic;
SIGNAL \frame_buffer|Add0~40_combout\ : std_logic;
SIGNAL \frame_buffer|reloj_cam:count[20]~q\ : std_logic;
SIGNAL \frame_buffer|Add0~41\ : std_logic;
SIGNAL \frame_buffer|Add0~42_combout\ : std_logic;
SIGNAL \frame_buffer|reloj_cam:count[21]~q\ : std_logic;
SIGNAL \frame_buffer|Add0~43\ : std_logic;
SIGNAL \frame_buffer|Add0~44_combout\ : std_logic;
SIGNAL \frame_buffer|reloj_cam:count[22]~q\ : std_logic;
SIGNAL \frame_buffer|Add0~45\ : std_logic;
SIGNAL \frame_buffer|Add0~46_combout\ : std_logic;
SIGNAL \frame_buffer|reloj_cam:count[23]~q\ : std_logic;
SIGNAL \frame_buffer|Add0~47\ : std_logic;
SIGNAL \frame_buffer|Add0~48_combout\ : std_logic;
SIGNAL \frame_buffer|reloj_cam:count[24]~q\ : std_logic;
SIGNAL \frame_buffer|Add0~49\ : std_logic;
SIGNAL \frame_buffer|Add0~50_combout\ : std_logic;
SIGNAL \frame_buffer|reloj_cam:count[25]~q\ : std_logic;
SIGNAL \frame_buffer|Add0~51\ : std_logic;
SIGNAL \frame_buffer|Add0~52_combout\ : std_logic;
SIGNAL \frame_buffer|reloj_cam:count[26]~q\ : std_logic;
SIGNAL \frame_buffer|Add0~53\ : std_logic;
SIGNAL \frame_buffer|Add0~54_combout\ : std_logic;
SIGNAL \frame_buffer|reloj_cam:count[27]~q\ : std_logic;
SIGNAL \frame_buffer|Add0~55\ : std_logic;
SIGNAL \frame_buffer|Add0~56_combout\ : std_logic;
SIGNAL \frame_buffer|reloj_cam:count[28]~q\ : std_logic;
SIGNAL \frame_buffer|Add0~57\ : std_logic;
SIGNAL \frame_buffer|Add0~58_combout\ : std_logic;
SIGNAL \frame_buffer|reloj_cam:count[29]~q\ : std_logic;
SIGNAL \frame_buffer|Add0~59\ : std_logic;
SIGNAL \frame_buffer|Add0~60_combout\ : std_logic;
SIGNAL \frame_buffer|reloj_cam:count[31]~q\ : std_logic;
SIGNAL \frame_buffer|Add0~61\ : std_logic;
SIGNAL \frame_buffer|Add0~62_combout\ : std_logic;
SIGNAL \frame_buffer|Equal0~5_combout\ : std_logic;
SIGNAL \frame_buffer|Equal0~6_combout\ : std_logic;
SIGNAL \frame_buffer|Equal0~7_combout\ : std_logic;
SIGNAL \frame_buffer|Equal0~8_combout\ : std_logic;
SIGNAL \frame_buffer|Equal0~9_combout\ : std_logic;
SIGNAL \frame_buffer|count~0_combout\ : std_logic;
SIGNAL \frame_buffer|reloj_cam:count[1]~q\ : std_logic;
SIGNAL \frame_buffer|Add0~3\ : std_logic;
SIGNAL \frame_buffer|Add0~4_combout\ : std_logic;
SIGNAL \frame_buffer|reloj_cam:count[2]~q\ : std_logic;
SIGNAL \frame_buffer|Add0~5\ : std_logic;
SIGNAL \frame_buffer|Add0~6_combout\ : std_logic;
SIGNAL \frame_buffer|reloj_cam:count[3]~q\ : std_logic;
SIGNAL \frame_buffer|Add0~7\ : std_logic;
SIGNAL \frame_buffer|Add0~8_combout\ : std_logic;
SIGNAL \frame_buffer|Equal0~1_combout\ : std_logic;
SIGNAL \frame_buffer|Equal0~2_combout\ : std_logic;
SIGNAL \frame_buffer|Equal0~3_combout\ : std_logic;
SIGNAL \frame_buffer|Add0~0_combout\ : std_logic;
SIGNAL \frame_buffer|Equal0~0_combout\ : std_logic;
SIGNAL \frame_buffer|Equal0~4_combout\ : std_logic;
SIGNAL \frame_buffer|clk_cam~0_combout\ : std_logic;
SIGNAL \frame_buffer|clk_cam~feeder_combout\ : std_logic;
SIGNAL \frame_buffer|clk_cam~q\ : std_logic;
SIGNAL \frame_buffer|clk_cam~clkctrl_outclk\ : std_logic;
SIGNAL \pclk~input_o\ : std_logic;
SIGNAL \rx_cam|vcont[0]~13_combout\ : std_logic;
SIGNAL \rx_cam|ybyte~2_combout\ : std_logic;
SIGNAL \rx_cam|ybyte~q\ : std_logic;
SIGNAL \rx_cam|hcont[0]~10_combout\ : std_logic;
SIGNAL \rx_cam|hcont[0]~11\ : std_logic;
SIGNAL \rx_cam|hcont[1]~12_combout\ : std_logic;
SIGNAL \rx_cam|hcont[1]~13\ : std_logic;
SIGNAL \rx_cam|hcont[2]~14_combout\ : std_logic;
SIGNAL \rx_cam|hcont[2]~15\ : std_logic;
SIGNAL \rx_cam|hcont[3]~16_combout\ : std_logic;
SIGNAL \rx_cam|hcont[3]~17\ : std_logic;
SIGNAL \rx_cam|hcont[4]~18_combout\ : std_logic;
SIGNAL \rx_cam|hcont[4]~19\ : std_logic;
SIGNAL \rx_cam|hcont[5]~20_combout\ : std_logic;
SIGNAL \rx_cam|hcont[5]~21\ : std_logic;
SIGNAL \rx_cam|hcont[6]~22_combout\ : std_logic;
SIGNAL \rx_cam|hcont[6]~23\ : std_logic;
SIGNAL \rx_cam|hcont[7]~24_combout\ : std_logic;
SIGNAL \rx_cam|hcont[7]~25\ : std_logic;
SIGNAL \rx_cam|hcont[8]~26_combout\ : std_logic;
SIGNAL \rx_cam|hcont[8]~27\ : std_logic;
SIGNAL \rx_cam|hcont[9]~28_combout\ : std_logic;
SIGNAL \rx_cam|LessThan1~0_combout\ : std_logic;
SIGNAL \rx_cam|LessThan1~1_combout\ : std_logic;
SIGNAL \rx_cam|LessThan1~2_combout\ : std_logic;
SIGNAL \HREF~input_o\ : std_logic;
SIGNAL \rx_cam|HREF_reg~q\ : std_logic;
SIGNAL \rx_cam|vcont[4]~22\ : std_logic;
SIGNAL \rx_cam|vcont[5]~23_combout\ : std_logic;
SIGNAL \rx_cam|vcont[5]~24\ : std_logic;
SIGNAL \rx_cam|vcont[6]~25_combout\ : std_logic;
SIGNAL \rx_cam|vcont[6]~26\ : std_logic;
SIGNAL \rx_cam|vcont[7]~27_combout\ : std_logic;
SIGNAL \rx_cam|vcont[7]~28\ : std_logic;
SIGNAL \rx_cam|vcont[8]~29_combout\ : std_logic;
SIGNAL \rx_cam|Equal0~1_combout\ : std_logic;
SIGNAL \rx_cam|Equal0~0_combout\ : std_logic;
SIGNAL \rx_cam|Equal0~2_combout\ : std_logic;
SIGNAL \rx_cam|vcont[1]~31_combout\ : std_logic;
SIGNAL \rx_cam|LessThan0~0_combout\ : std_logic;
SIGNAL \rx_cam|Selector31~2_combout\ : std_logic;
SIGNAL \rx_cam|Selector31~3_combout\ : std_logic;
SIGNAL \VSYNC~input_o\ : std_logic;
SIGNAL \rx_cam|VSYNC_reg~q\ : std_logic;
SIGNAL \rx_cam|Selector0~0_combout\ : std_logic;
SIGNAL \rx_cam|Selector0~1_combout\ : std_logic;
SIGNAL \rx_cam|flg_strt~q\ : std_logic;
SIGNAL \rx_cam|est[0]~1_combout\ : std_logic;
SIGNAL \rx_cam|est[0]~0_combout\ : std_logic;
SIGNAL \rx_cam|est[0]~2_combout\ : std_logic;
SIGNAL \rx_cam|Equal1~0_combout\ : std_logic;
SIGNAL \rx_cam|vcont[0]~14\ : std_logic;
SIGNAL \rx_cam|vcont[1]~15_combout\ : std_logic;
SIGNAL \rx_cam|vcont[1]~16\ : std_logic;
SIGNAL \rx_cam|vcont[2]~17_combout\ : std_logic;
SIGNAL \rx_cam|vcont[2]~18\ : std_logic;
SIGNAL \rx_cam|vcont[3]~19_combout\ : std_logic;
SIGNAL \rx_cam|vcont[3]~20\ : std_logic;
SIGNAL \rx_cam|vcont[4]~21_combout\ : std_logic;
SIGNAL \rx_cam|Add0~1\ : std_logic;
SIGNAL \rx_cam|Add0~3\ : std_logic;
SIGNAL \rx_cam|Add0~5\ : std_logic;
SIGNAL \rx_cam|Add0~7\ : std_logic;
SIGNAL \rx_cam|Add0~8_combout\ : std_logic;
SIGNAL \rx_cam|Add0~6_combout\ : std_logic;
SIGNAL \rx_cam|Add0~4_combout\ : std_logic;
SIGNAL \rx_cam|Add0~2_combout\ : std_logic;
SIGNAL \rx_cam|Add0~0_combout\ : std_logic;
SIGNAL \rx_cam|addr_wr[7]~15\ : std_logic;
SIGNAL \rx_cam|addr_wr[8]~17\ : std_logic;
SIGNAL \rx_cam|addr_wr[9]~19\ : std_logic;
SIGNAL \rx_cam|addr_wr[10]~21\ : std_logic;
SIGNAL \rx_cam|addr_wr[11]~23\ : std_logic;
SIGNAL \rx_cam|addr_wr[12]~25\ : std_logic;
SIGNAL \rx_cam|addr_wr[13]~26_combout\ : std_logic;
SIGNAL \rx_cam|addr_wr[13]~38_combout\ : std_logic;
SIGNAL \rx_cam|Add0~9\ : std_logic;
SIGNAL \rx_cam|Add0~11\ : std_logic;
SIGNAL \rx_cam|Add0~12_combout\ : std_logic;
SIGNAL \rx_cam|Add0~10_combout\ : std_logic;
SIGNAL \rx_cam|addr_wr[13]~27\ : std_logic;
SIGNAL \rx_cam|addr_wr[14]~29\ : std_logic;
SIGNAL \rx_cam|addr_wr[15]~30_combout\ : std_logic;
SIGNAL \rx_cam|Add0~13\ : std_logic;
SIGNAL \rx_cam|Add0~14_combout\ : std_logic;
SIGNAL \rx_cam|addr_wr[15]~31\ : std_logic;
SIGNAL \rx_cam|addr_wr[16]~32_combout\ : std_logic;
SIGNAL \rx_cam|Add0~15\ : std_logic;
SIGNAL \rx_cam|Add0~17\ : std_logic;
SIGNAL \rx_cam|Add0~18_combout\ : std_logic;
SIGNAL \rx_cam|Add0~16_combout\ : std_logic;
SIGNAL \rx_cam|addr_wr[16]~33\ : std_logic;
SIGNAL \rx_cam|addr_wr[17]~35\ : std_logic;
SIGNAL \rx_cam|addr_wr[18]~36_combout\ : std_logic;
SIGNAL \rx_cam|addr_wr[17]~34_combout\ : std_logic;
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode591w[2]~2_combout\ : std_logic;
SIGNAL \rx_cam|addr_wr[14]~28_combout\ : std_logic;
SIGNAL \D[7]~input_o\ : std_logic;
SIGNAL \rx_cam|d_reg[7]~feeder_combout\ : std_logic;
SIGNAL \rx_cam|dato~feeder_combout\ : std_logic;
SIGNAL \rx_cam|dato~q\ : std_logic;
SIGNAL \frame_buffer|s_wrdata[0]~feeder_combout\ : std_logic;
SIGNAL \rx_cam|addr_wr[0]~feeder_combout\ : std_logic;
SIGNAL \frame_buffer|s_wradd[0]~feeder_combout\ : std_logic;
SIGNAL \rx_cam|addr_wr[1]~feeder_combout\ : std_logic;
SIGNAL \frame_buffer|s_wradd[1]~feeder_combout\ : std_logic;
SIGNAL \rx_cam|addr_wr[2]~feeder_combout\ : std_logic;
SIGNAL \frame_buffer|s_wradd[2]~feeder_combout\ : std_logic;
SIGNAL \rx_cam|addr_wr[3]~feeder_combout\ : std_logic;
SIGNAL \frame_buffer|s_wradd[3]~feeder_combout\ : std_logic;
SIGNAL \rx_cam|addr_wr[4]~feeder_combout\ : std_logic;
SIGNAL \frame_buffer|s_wradd[4]~feeder_combout\ : std_logic;
SIGNAL \rx_cam|addr_wr[5]~feeder_combout\ : std_logic;
SIGNAL \frame_buffer|s_wradd[5]~feeder_combout\ : std_logic;
SIGNAL \rx_cam|addr_wr[6]~feeder_combout\ : std_logic;
SIGNAL \rx_cam|addr_wr[7]~14_combout\ : std_logic;
SIGNAL \rx_cam|addr_wr[7]~feeder_combout\ : std_logic;
SIGNAL \frame_buffer|s_wradd[7]~feeder_combout\ : std_logic;
SIGNAL \rx_cam|addr_wr[8]~16_combout\ : std_logic;
SIGNAL \frame_buffer|s_wradd[8]~feeder_combout\ : std_logic;
SIGNAL \rx_cam|addr_wr[9]~18_combout\ : std_logic;
SIGNAL \frame_buffer|s_wradd[9]~feeder_combout\ : std_logic;
SIGNAL \rx_cam|addr_wr[10]~20_combout\ : std_logic;
SIGNAL \rx_cam|addr_wr[11]~22_combout\ : std_logic;
SIGNAL \frame_buffer|s_wradd[11]~feeder_combout\ : std_logic;
SIGNAL \rx_cam|addr_wr[12]~24_combout\ : std_logic;
SIGNAL \frame_buffer|s_wradd[12]~feeder_combout\ : std_logic;
SIGNAL \vga|pos_h~6_combout\ : std_logic;
SIGNAL \vga|pos_h~7_combout\ : std_logic;
SIGNAL \vga|pos_h~8_combout\ : std_logic;
SIGNAL \vga|pos_h~9_combout\ : std_logic;
SIGNAL \vga|pos_h[4]~10_combout\ : std_logic;
SIGNAL \vga|pos_h[5]~12_combout\ : std_logic;
SIGNAL \vga|pos_h[6]~14_combout\ : std_logic;
SIGNAL \frame_buffer|s_rdadd[7]~0_combout\ : std_logic;
SIGNAL \frame_buffer|s_rdadd[8]~2_combout\ : std_logic;
SIGNAL \frame_buffer|s_rdadd[9]~4_combout\ : std_logic;
SIGNAL \frame_buffer|s_rdadd[10]~6_combout\ : std_logic;
SIGNAL \frame_buffer|s_rdadd[11]~8_combout\ : std_logic;
SIGNAL \frame_buffer|s_rdadd[12]~10_combout\ : std_logic;
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a30~portbdataout\ : std_logic;
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a31~portbdataout\ : std_logic;
SIGNAL \vga|R~4_combout\ : std_logic;
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a28~portbdataout\ : std_logic;
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a29~portbdataout\ : std_logic;
SIGNAL \vga|R~5_combout\ : std_logic;
SIGNAL \vga|R~6_combout\ : std_logic;
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a25~portbdataout\ : std_logic;
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a24~portbdataout\ : std_logic;
SIGNAL \vga|R~2_combout\ : std_logic;
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a26~portbdataout\ : std_logic;
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a27~portbdataout\ : std_logic;
SIGNAL \vga|R~1_combout\ : std_logic;
SIGNAL \vga|R~3_combout\ : std_logic;
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode591w[2]~1_combout\ : std_logic;
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a19~portbdataout\ : std_logic;
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a17~portbdataout\ : std_logic;
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a18~portbdataout\ : std_logic;
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a16~portbdataout\ : std_logic;
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~21_combout\ : std_logic;
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~22_combout\ : std_logic;
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a21~portbdataout\ : std_logic;
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a23~portbdataout\ : std_logic;
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a20~portbdataout\ : std_logic;
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a22~portbdataout\ : std_logic;
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~19_combout\ : std_logic;
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~20_combout\ : std_logic;
SIGNAL \vga|R~0_combout\ : std_logic;
SIGNAL \vga|R~7_combout\ : std_logic;
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~17_combout\ : std_logic;
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode426w[1]~0_combout\ : std_logic;
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a5~portbdataout\ : std_logic;
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a4~portbdataout\ : std_logic;
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a6~portbdataout\ : std_logic;
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~13_combout\ : std_logic;
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a7~portbdataout\ : std_logic;
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~14_combout\ : std_logic;
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode777w[3]~0_combout\ : std_logic;
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a37~portbdataout\ : std_logic;
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a36~portbdataout\ : std_logic;
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~15_combout\ : std_logic;
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~16_combout\ : std_logic;
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode591w[2]~0_combout\ : std_logic;
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a8~portbdataout\ : std_logic;
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a10~portbdataout\ : std_logic;
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~7_combout\ : std_logic;
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a9~portbdataout\ : std_logic;
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a11~portbdataout\ : std_logic;
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~6_combout\ : std_logic;
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~8_combout\ : std_logic;
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a15~portbdataout\ : std_logic;
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a13~portbdataout\ : std_logic;
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~9_combout\ : std_logic;
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a12~portbdataout\ : std_logic;
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a14~portbdataout\ : std_logic;
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~10_combout\ : std_logic;
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~11_combout\ : std_logic;
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~12_combout\ : std_logic;
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a35~portbdataout\ : std_logic;
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a33~portbdataout\ : std_logic;
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a34~portbdataout\ : std_logic;
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a32~portbdataout\ : std_logic;
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~1_combout\ : std_logic;
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~2_combout\ : std_logic;
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~0_combout\ : std_logic;
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a1~portbdataout\ : std_logic;
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a3~portbdataout\ : std_logic;
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a2~portbdataout\ : std_logic;
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~3_combout\ : std_logic;
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~4_combout\ : std_logic;
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~5_combout\ : std_logic;
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~18_combout\ : std_logic;
SIGNAL \vga|R~8_combout\ : std_logic;
SIGNAL \vga|R~9_combout\ : std_logic;
SIGNAL \vga|R[0]~feeder_combout\ : std_logic;
SIGNAL \vga|R[1]~feeder_combout\ : std_logic;
SIGNAL \vga|R[2]~feeder_combout\ : std_logic;
SIGNAL \vga|R[3]~feeder_combout\ : std_logic;
SIGNAL \vga|G[0]~feeder_combout\ : std_logic;
SIGNAL \vga|G[1]~feeder_combout\ : std_logic;
SIGNAL \vga|G[2]~feeder_combout\ : std_logic;
SIGNAL \vga|G[3]~feeder_combout\ : std_logic;
SIGNAL \vga|B[0]~feeder_combout\ : std_logic;
SIGNAL \vga|B[1]~feeder_combout\ : std_logic;
SIGNAL \vga|B[2]~feeder_combout\ : std_logic;
SIGNAL \vga|B[3]~feeder_combout\ : std_logic;
SIGNAL \rx_cam|oclk~feeder_combout\ : std_logic;
SIGNAL \rx_cam|oclk~q\ : std_logic;
SIGNAL \vga|pos_h\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \vga|pos_v\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \rx_cam|addr_wr\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \rx_cam|vcont\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \rx_cam|hcont\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \vga|R\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \vga|G\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \vga|B\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \vga|h_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \vga|v_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode623w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode613w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|address_reg_b\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \frame_buffer|s_wradd\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode799w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \frame_buffer|s_wrdata\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode809w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode788w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode819w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode426w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode409w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode436w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode446w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode540w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode520w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode530w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode509w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode580w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode560w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode570w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode550w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode466w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode476w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode456w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode486w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode839w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode829w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode653w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode663w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode643w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode673w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode602w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode633w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode726w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode716w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode706w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode695w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode766w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode756w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode746w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode736w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rx_cam|est\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \rx_cam|d_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \rx_cam|ALT_INV_Equal1~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_pclk <= pclk;
ww_VSYNC <= VSYNC;
ww_HREF <= HREF;
ww_D <= D;
Hsync_VGA <= ww_Hsync_VGA;
Vsync_VGA <= ww_Vsync_VGA;
R <= ww_R;
G <= ww_G;
B <= ww_B;
oclk <= ww_oclk;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a33_PORTADATAIN_bus\(0) <= \frame_buffer|s_wrdata\(0);

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a33_PORTAADDR_bus\ <= (\frame_buffer|s_wradd\(12) & \frame_buffer|s_wradd\(11) & \frame_buffer|s_wradd\(10) & \frame_buffer|s_wradd\(9) & \frame_buffer|s_wradd\(8) & 
\frame_buffer|s_wradd\(7) & \frame_buffer|s_wradd\(6) & \frame_buffer|s_wradd\(5) & \frame_buffer|s_wradd\(4) & \frame_buffer|s_wradd\(3) & \frame_buffer|s_wradd\(2) & \frame_buffer|s_wradd\(1) & \frame_buffer|s_wradd\(0));

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a33_PORTBADDR_bus\ <= (\frame_buffer|s_rdadd[12]~10_combout\ & \frame_buffer|s_rdadd[11]~8_combout\ & \frame_buffer|s_rdadd[10]~6_combout\ & \frame_buffer|s_rdadd[9]~4_combout\ & 
\frame_buffer|s_rdadd[8]~2_combout\ & \frame_buffer|s_rdadd[7]~0_combout\ & \vga|pos_h\(6) & \vga|pos_h\(5) & \vga|pos_h\(4) & \vga|pos_h\(3) & \vga|pos_h\(2) & \vga|pos_h\(1) & \vga|pos_h\(0));

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a33~portbdataout\ <= \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a33_PORTBDATAOUT_bus\(0);

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a34_PORTADATAIN_bus\(0) <= \frame_buffer|s_wrdata\(0);

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a34_PORTAADDR_bus\ <= (\frame_buffer|s_wradd\(12) & \frame_buffer|s_wradd\(11) & \frame_buffer|s_wradd\(10) & \frame_buffer|s_wradd\(9) & \frame_buffer|s_wradd\(8) & 
\frame_buffer|s_wradd\(7) & \frame_buffer|s_wradd\(6) & \frame_buffer|s_wradd\(5) & \frame_buffer|s_wradd\(4) & \frame_buffer|s_wradd\(3) & \frame_buffer|s_wradd\(2) & \frame_buffer|s_wradd\(1) & \frame_buffer|s_wradd\(0));

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a34_PORTBADDR_bus\ <= (\frame_buffer|s_rdadd[12]~10_combout\ & \frame_buffer|s_rdadd[11]~8_combout\ & \frame_buffer|s_rdadd[10]~6_combout\ & \frame_buffer|s_rdadd[9]~4_combout\ & 
\frame_buffer|s_rdadd[8]~2_combout\ & \frame_buffer|s_rdadd[7]~0_combout\ & \vga|pos_h\(6) & \vga|pos_h\(5) & \vga|pos_h\(4) & \vga|pos_h\(3) & \vga|pos_h\(2) & \vga|pos_h\(1) & \vga|pos_h\(0));

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a34~portbdataout\ <= \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a34_PORTBDATAOUT_bus\(0);

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a32_PORTADATAIN_bus\(0) <= \frame_buffer|s_wrdata\(0);

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a32_PORTAADDR_bus\ <= (\frame_buffer|s_wradd\(12) & \frame_buffer|s_wradd\(11) & \frame_buffer|s_wradd\(10) & \frame_buffer|s_wradd\(9) & \frame_buffer|s_wradd\(8) & 
\frame_buffer|s_wradd\(7) & \frame_buffer|s_wradd\(6) & \frame_buffer|s_wradd\(5) & \frame_buffer|s_wradd\(4) & \frame_buffer|s_wradd\(3) & \frame_buffer|s_wradd\(2) & \frame_buffer|s_wradd\(1) & \frame_buffer|s_wradd\(0));

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a32_PORTBADDR_bus\ <= (\frame_buffer|s_rdadd[12]~10_combout\ & \frame_buffer|s_rdadd[11]~8_combout\ & \frame_buffer|s_rdadd[10]~6_combout\ & \frame_buffer|s_rdadd[9]~4_combout\ & 
\frame_buffer|s_rdadd[8]~2_combout\ & \frame_buffer|s_rdadd[7]~0_combout\ & \vga|pos_h\(6) & \vga|pos_h\(5) & \vga|pos_h\(4) & \vga|pos_h\(3) & \vga|pos_h\(2) & \vga|pos_h\(1) & \vga|pos_h\(0));

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a32~portbdataout\ <= \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a32_PORTBDATAOUT_bus\(0);

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a35_PORTADATAIN_bus\(0) <= \frame_buffer|s_wrdata\(0);

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a35_PORTAADDR_bus\ <= (\frame_buffer|s_wradd\(12) & \frame_buffer|s_wradd\(11) & \frame_buffer|s_wradd\(10) & \frame_buffer|s_wradd\(9) & \frame_buffer|s_wradd\(8) & 
\frame_buffer|s_wradd\(7) & \frame_buffer|s_wradd\(6) & \frame_buffer|s_wradd\(5) & \frame_buffer|s_wradd\(4) & \frame_buffer|s_wradd\(3) & \frame_buffer|s_wradd\(2) & \frame_buffer|s_wradd\(1) & \frame_buffer|s_wradd\(0));

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a35_PORTBADDR_bus\ <= (\frame_buffer|s_rdadd[12]~10_combout\ & \frame_buffer|s_rdadd[11]~8_combout\ & \frame_buffer|s_rdadd[10]~6_combout\ & \frame_buffer|s_rdadd[9]~4_combout\ & 
\frame_buffer|s_rdadd[8]~2_combout\ & \frame_buffer|s_rdadd[7]~0_combout\ & \vga|pos_h\(6) & \vga|pos_h\(5) & \vga|pos_h\(4) & \vga|pos_h\(3) & \vga|pos_h\(2) & \vga|pos_h\(1) & \vga|pos_h\(0));

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a35~portbdataout\ <= \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a35_PORTBDATAOUT_bus\(0);

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a1_PORTADATAIN_bus\(0) <= \frame_buffer|s_wrdata\(0);

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\frame_buffer|s_wradd\(12) & \frame_buffer|s_wradd\(11) & \frame_buffer|s_wradd\(10) & \frame_buffer|s_wradd\(9) & \frame_buffer|s_wradd\(8) & 
\frame_buffer|s_wradd\(7) & \frame_buffer|s_wradd\(6) & \frame_buffer|s_wradd\(5) & \frame_buffer|s_wradd\(4) & \frame_buffer|s_wradd\(3) & \frame_buffer|s_wradd\(2) & \frame_buffer|s_wradd\(1) & \frame_buffer|s_wradd\(0));

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a1_PORTBADDR_bus\ <= (\frame_buffer|s_rdadd[12]~10_combout\ & \frame_buffer|s_rdadd[11]~8_combout\ & \frame_buffer|s_rdadd[10]~6_combout\ & \frame_buffer|s_rdadd[9]~4_combout\ & 
\frame_buffer|s_rdadd[8]~2_combout\ & \frame_buffer|s_rdadd[7]~0_combout\ & \vga|pos_h\(6) & \vga|pos_h\(5) & \vga|pos_h\(4) & \vga|pos_h\(3) & \vga|pos_h\(2) & \vga|pos_h\(1) & \vga|pos_h\(0));

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a1~portbdataout\ <= \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a1_PORTBDATAOUT_bus\(0);

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\(0) <= \frame_buffer|s_wrdata\(0);

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\frame_buffer|s_wradd\(12) & \frame_buffer|s_wradd\(11) & \frame_buffer|s_wradd\(10) & \frame_buffer|s_wradd\(9) & \frame_buffer|s_wradd\(8) & 
\frame_buffer|s_wradd\(7) & \frame_buffer|s_wradd\(6) & \frame_buffer|s_wradd\(5) & \frame_buffer|s_wradd\(4) & \frame_buffer|s_wradd\(3) & \frame_buffer|s_wradd\(2) & \frame_buffer|s_wradd\(1) & \frame_buffer|s_wradd\(0));

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a2_PORTBADDR_bus\ <= (\frame_buffer|s_rdadd[12]~10_combout\ & \frame_buffer|s_rdadd[11]~8_combout\ & \frame_buffer|s_rdadd[10]~6_combout\ & \frame_buffer|s_rdadd[9]~4_combout\ & 
\frame_buffer|s_rdadd[8]~2_combout\ & \frame_buffer|s_rdadd[7]~0_combout\ & \vga|pos_h\(6) & \vga|pos_h\(5) & \vga|pos_h\(4) & \vga|pos_h\(3) & \vga|pos_h\(2) & \vga|pos_h\(1) & \vga|pos_h\(0));

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a2~portbdataout\ <= \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a2_PORTBDATAOUT_bus\(0);

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\(0) <= \frame_buffer|s_wrdata\(0);

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\frame_buffer|s_wradd\(12) & \frame_buffer|s_wradd\(11) & \frame_buffer|s_wradd\(10) & \frame_buffer|s_wradd\(9) & \frame_buffer|s_wradd\(8) & 
\frame_buffer|s_wradd\(7) & \frame_buffer|s_wradd\(6) & \frame_buffer|s_wradd\(5) & \frame_buffer|s_wradd\(4) & \frame_buffer|s_wradd\(3) & \frame_buffer|s_wradd\(2) & \frame_buffer|s_wradd\(1) & \frame_buffer|s_wradd\(0));

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\frame_buffer|s_rdadd[12]~10_combout\ & \frame_buffer|s_rdadd[11]~8_combout\ & \frame_buffer|s_rdadd[10]~6_combout\ & \frame_buffer|s_rdadd[9]~4_combout\ & 
\frame_buffer|s_rdadd[8]~2_combout\ & \frame_buffer|s_rdadd[7]~0_combout\ & \vga|pos_h\(6) & \vga|pos_h\(5) & \vga|pos_h\(4) & \vga|pos_h\(3) & \vga|pos_h\(2) & \vga|pos_h\(1) & \vga|pos_h\(0));

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a0~portbdataout\ <= \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a3_PORTADATAIN_bus\(0) <= \frame_buffer|s_wrdata\(0);

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\frame_buffer|s_wradd\(12) & \frame_buffer|s_wradd\(11) & \frame_buffer|s_wradd\(10) & \frame_buffer|s_wradd\(9) & \frame_buffer|s_wradd\(8) & 
\frame_buffer|s_wradd\(7) & \frame_buffer|s_wradd\(6) & \frame_buffer|s_wradd\(5) & \frame_buffer|s_wradd\(4) & \frame_buffer|s_wradd\(3) & \frame_buffer|s_wradd\(2) & \frame_buffer|s_wradd\(1) & \frame_buffer|s_wradd\(0));

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a3_PORTBADDR_bus\ <= (\frame_buffer|s_rdadd[12]~10_combout\ & \frame_buffer|s_rdadd[11]~8_combout\ & \frame_buffer|s_rdadd[10]~6_combout\ & \frame_buffer|s_rdadd[9]~4_combout\ & 
\frame_buffer|s_rdadd[8]~2_combout\ & \frame_buffer|s_rdadd[7]~0_combout\ & \vga|pos_h\(6) & \vga|pos_h\(5) & \vga|pos_h\(4) & \vga|pos_h\(3) & \vga|pos_h\(2) & \vga|pos_h\(1) & \vga|pos_h\(0));

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a3~portbdataout\ <= \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a3_PORTBDATAOUT_bus\(0);

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a11_PORTADATAIN_bus\(0) <= \frame_buffer|s_wrdata\(0);

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\ <= (\frame_buffer|s_wradd\(12) & \frame_buffer|s_wradd\(11) & \frame_buffer|s_wradd\(10) & \frame_buffer|s_wradd\(9) & \frame_buffer|s_wradd\(8) & 
\frame_buffer|s_wradd\(7) & \frame_buffer|s_wradd\(6) & \frame_buffer|s_wradd\(5) & \frame_buffer|s_wradd\(4) & \frame_buffer|s_wradd\(3) & \frame_buffer|s_wradd\(2) & \frame_buffer|s_wradd\(1) & \frame_buffer|s_wradd\(0));

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a11_PORTBADDR_bus\ <= (\frame_buffer|s_rdadd[12]~10_combout\ & \frame_buffer|s_rdadd[11]~8_combout\ & \frame_buffer|s_rdadd[10]~6_combout\ & \frame_buffer|s_rdadd[9]~4_combout\ & 
\frame_buffer|s_rdadd[8]~2_combout\ & \frame_buffer|s_rdadd[7]~0_combout\ & \vga|pos_h\(6) & \vga|pos_h\(5) & \vga|pos_h\(4) & \vga|pos_h\(3) & \vga|pos_h\(2) & \vga|pos_h\(1) & \vga|pos_h\(0));

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a11~portbdataout\ <= \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a11_PORTBDATAOUT_bus\(0);

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a9_PORTADATAIN_bus\(0) <= \frame_buffer|s_wrdata\(0);

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\ <= (\frame_buffer|s_wradd\(12) & \frame_buffer|s_wradd\(11) & \frame_buffer|s_wradd\(10) & \frame_buffer|s_wradd\(9) & \frame_buffer|s_wradd\(8) & 
\frame_buffer|s_wradd\(7) & \frame_buffer|s_wradd\(6) & \frame_buffer|s_wradd\(5) & \frame_buffer|s_wradd\(4) & \frame_buffer|s_wradd\(3) & \frame_buffer|s_wradd\(2) & \frame_buffer|s_wradd\(1) & \frame_buffer|s_wradd\(0));

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a9_PORTBADDR_bus\ <= (\frame_buffer|s_rdadd[12]~10_combout\ & \frame_buffer|s_rdadd[11]~8_combout\ & \frame_buffer|s_rdadd[10]~6_combout\ & \frame_buffer|s_rdadd[9]~4_combout\ & 
\frame_buffer|s_rdadd[8]~2_combout\ & \frame_buffer|s_rdadd[7]~0_combout\ & \vga|pos_h\(6) & \vga|pos_h\(5) & \vga|pos_h\(4) & \vga|pos_h\(3) & \vga|pos_h\(2) & \vga|pos_h\(1) & \vga|pos_h\(0));

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a9~portbdataout\ <= \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a9_PORTBDATAOUT_bus\(0);

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a10_PORTADATAIN_bus\(0) <= \frame_buffer|s_wrdata\(0);

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (\frame_buffer|s_wradd\(12) & \frame_buffer|s_wradd\(11) & \frame_buffer|s_wradd\(10) & \frame_buffer|s_wradd\(9) & \frame_buffer|s_wradd\(8) & 
\frame_buffer|s_wradd\(7) & \frame_buffer|s_wradd\(6) & \frame_buffer|s_wradd\(5) & \frame_buffer|s_wradd\(4) & \frame_buffer|s_wradd\(3) & \frame_buffer|s_wradd\(2) & \frame_buffer|s_wradd\(1) & \frame_buffer|s_wradd\(0));

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a10_PORTBADDR_bus\ <= (\frame_buffer|s_rdadd[12]~10_combout\ & \frame_buffer|s_rdadd[11]~8_combout\ & \frame_buffer|s_rdadd[10]~6_combout\ & \frame_buffer|s_rdadd[9]~4_combout\ & 
\frame_buffer|s_rdadd[8]~2_combout\ & \frame_buffer|s_rdadd[7]~0_combout\ & \vga|pos_h\(6) & \vga|pos_h\(5) & \vga|pos_h\(4) & \vga|pos_h\(3) & \vga|pos_h\(2) & \vga|pos_h\(1) & \vga|pos_h\(0));

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a10~portbdataout\ <= \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAOUT_bus\(0);

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a8_PORTADATAIN_bus\(0) <= \frame_buffer|s_wrdata\(0);

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\frame_buffer|s_wradd\(12) & \frame_buffer|s_wradd\(11) & \frame_buffer|s_wradd\(10) & \frame_buffer|s_wradd\(9) & \frame_buffer|s_wradd\(8) & 
\frame_buffer|s_wradd\(7) & \frame_buffer|s_wradd\(6) & \frame_buffer|s_wradd\(5) & \frame_buffer|s_wradd\(4) & \frame_buffer|s_wradd\(3) & \frame_buffer|s_wradd\(2) & \frame_buffer|s_wradd\(1) & \frame_buffer|s_wradd\(0));

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a8_PORTBADDR_bus\ <= (\frame_buffer|s_rdadd[12]~10_combout\ & \frame_buffer|s_rdadd[11]~8_combout\ & \frame_buffer|s_rdadd[10]~6_combout\ & \frame_buffer|s_rdadd[9]~4_combout\ & 
\frame_buffer|s_rdadd[8]~2_combout\ & \frame_buffer|s_rdadd[7]~0_combout\ & \vga|pos_h\(6) & \vga|pos_h\(5) & \vga|pos_h\(4) & \vga|pos_h\(3) & \vga|pos_h\(2) & \vga|pos_h\(1) & \vga|pos_h\(0));

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a8~portbdataout\ <= \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a8_PORTBDATAOUT_bus\(0);

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a15_PORTADATAIN_bus\(0) <= \frame_buffer|s_wrdata\(0);

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a15_PORTAADDR_bus\ <= (\frame_buffer|s_wradd\(12) & \frame_buffer|s_wradd\(11) & \frame_buffer|s_wradd\(10) & \frame_buffer|s_wradd\(9) & \frame_buffer|s_wradd\(8) & 
\frame_buffer|s_wradd\(7) & \frame_buffer|s_wradd\(6) & \frame_buffer|s_wradd\(5) & \frame_buffer|s_wradd\(4) & \frame_buffer|s_wradd\(3) & \frame_buffer|s_wradd\(2) & \frame_buffer|s_wradd\(1) & \frame_buffer|s_wradd\(0));

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a15_PORTBADDR_bus\ <= (\frame_buffer|s_rdadd[12]~10_combout\ & \frame_buffer|s_rdadd[11]~8_combout\ & \frame_buffer|s_rdadd[10]~6_combout\ & \frame_buffer|s_rdadd[9]~4_combout\ & 
\frame_buffer|s_rdadd[8]~2_combout\ & \frame_buffer|s_rdadd[7]~0_combout\ & \vga|pos_h\(6) & \vga|pos_h\(5) & \vga|pos_h\(4) & \vga|pos_h\(3) & \vga|pos_h\(2) & \vga|pos_h\(1) & \vga|pos_h\(0));

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a15~portbdataout\ <= \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a15_PORTBDATAOUT_bus\(0);

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a13_PORTADATAIN_bus\(0) <= \frame_buffer|s_wrdata\(0);

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a13_PORTAADDR_bus\ <= (\frame_buffer|s_wradd\(12) & \frame_buffer|s_wradd\(11) & \frame_buffer|s_wradd\(10) & \frame_buffer|s_wradd\(9) & \frame_buffer|s_wradd\(8) & 
\frame_buffer|s_wradd\(7) & \frame_buffer|s_wradd\(6) & \frame_buffer|s_wradd\(5) & \frame_buffer|s_wradd\(4) & \frame_buffer|s_wradd\(3) & \frame_buffer|s_wradd\(2) & \frame_buffer|s_wradd\(1) & \frame_buffer|s_wradd\(0));

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a13_PORTBADDR_bus\ <= (\frame_buffer|s_rdadd[12]~10_combout\ & \frame_buffer|s_rdadd[11]~8_combout\ & \frame_buffer|s_rdadd[10]~6_combout\ & \frame_buffer|s_rdadd[9]~4_combout\ & 
\frame_buffer|s_rdadd[8]~2_combout\ & \frame_buffer|s_rdadd[7]~0_combout\ & \vga|pos_h\(6) & \vga|pos_h\(5) & \vga|pos_h\(4) & \vga|pos_h\(3) & \vga|pos_h\(2) & \vga|pos_h\(1) & \vga|pos_h\(0));

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a13~portbdataout\ <= \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a13_PORTBDATAOUT_bus\(0);

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\(0) <= \frame_buffer|s_wrdata\(0);

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (\frame_buffer|s_wradd\(12) & \frame_buffer|s_wradd\(11) & \frame_buffer|s_wradd\(10) & \frame_buffer|s_wradd\(9) & \frame_buffer|s_wradd\(8) & 
\frame_buffer|s_wradd\(7) & \frame_buffer|s_wradd\(6) & \frame_buffer|s_wradd\(5) & \frame_buffer|s_wradd\(4) & \frame_buffer|s_wradd\(3) & \frame_buffer|s_wradd\(2) & \frame_buffer|s_wradd\(1) & \frame_buffer|s_wradd\(0));

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a14_PORTBADDR_bus\ <= (\frame_buffer|s_rdadd[12]~10_combout\ & \frame_buffer|s_rdadd[11]~8_combout\ & \frame_buffer|s_rdadd[10]~6_combout\ & \frame_buffer|s_rdadd[9]~4_combout\ & 
\frame_buffer|s_rdadd[8]~2_combout\ & \frame_buffer|s_rdadd[7]~0_combout\ & \vga|pos_h\(6) & \vga|pos_h\(5) & \vga|pos_h\(4) & \vga|pos_h\(3) & \vga|pos_h\(2) & \vga|pos_h\(1) & \vga|pos_h\(0));

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a14~portbdataout\ <= \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a14_PORTBDATAOUT_bus\(0);

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a12_PORTADATAIN_bus\(0) <= \frame_buffer|s_wrdata\(0);

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\ <= (\frame_buffer|s_wradd\(12) & \frame_buffer|s_wradd\(11) & \frame_buffer|s_wradd\(10) & \frame_buffer|s_wradd\(9) & \frame_buffer|s_wradd\(8) & 
\frame_buffer|s_wradd\(7) & \frame_buffer|s_wradd\(6) & \frame_buffer|s_wradd\(5) & \frame_buffer|s_wradd\(4) & \frame_buffer|s_wradd\(3) & \frame_buffer|s_wradd\(2) & \frame_buffer|s_wradd\(1) & \frame_buffer|s_wradd\(0));

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a12_PORTBADDR_bus\ <= (\frame_buffer|s_rdadd[12]~10_combout\ & \frame_buffer|s_rdadd[11]~8_combout\ & \frame_buffer|s_rdadd[10]~6_combout\ & \frame_buffer|s_rdadd[9]~4_combout\ & 
\frame_buffer|s_rdadd[8]~2_combout\ & \frame_buffer|s_rdadd[7]~0_combout\ & \vga|pos_h\(6) & \vga|pos_h\(5) & \vga|pos_h\(4) & \vga|pos_h\(3) & \vga|pos_h\(2) & \vga|pos_h\(1) & \vga|pos_h\(0));

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a12~portbdataout\ <= \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a12_PORTBDATAOUT_bus\(0);

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a5_PORTADATAIN_bus\(0) <= \frame_buffer|s_wrdata\(0);

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\frame_buffer|s_wradd\(12) & \frame_buffer|s_wradd\(11) & \frame_buffer|s_wradd\(10) & \frame_buffer|s_wradd\(9) & \frame_buffer|s_wradd\(8) & 
\frame_buffer|s_wradd\(7) & \frame_buffer|s_wradd\(6) & \frame_buffer|s_wradd\(5) & \frame_buffer|s_wradd\(4) & \frame_buffer|s_wradd\(3) & \frame_buffer|s_wradd\(2) & \frame_buffer|s_wradd\(1) & \frame_buffer|s_wradd\(0));

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a5_PORTBADDR_bus\ <= (\frame_buffer|s_rdadd[12]~10_combout\ & \frame_buffer|s_rdadd[11]~8_combout\ & \frame_buffer|s_rdadd[10]~6_combout\ & \frame_buffer|s_rdadd[9]~4_combout\ & 
\frame_buffer|s_rdadd[8]~2_combout\ & \frame_buffer|s_rdadd[7]~0_combout\ & \vga|pos_h\(6) & \vga|pos_h\(5) & \vga|pos_h\(4) & \vga|pos_h\(3) & \vga|pos_h\(2) & \vga|pos_h\(1) & \vga|pos_h\(0));

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a5~portbdataout\ <= \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a5_PORTBDATAOUT_bus\(0);

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a6_PORTADATAIN_bus\(0) <= \frame_buffer|s_wrdata\(0);

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\frame_buffer|s_wradd\(12) & \frame_buffer|s_wradd\(11) & \frame_buffer|s_wradd\(10) & \frame_buffer|s_wradd\(9) & \frame_buffer|s_wradd\(8) & 
\frame_buffer|s_wradd\(7) & \frame_buffer|s_wradd\(6) & \frame_buffer|s_wradd\(5) & \frame_buffer|s_wradd\(4) & \frame_buffer|s_wradd\(3) & \frame_buffer|s_wradd\(2) & \frame_buffer|s_wradd\(1) & \frame_buffer|s_wradd\(0));

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a6_PORTBADDR_bus\ <= (\frame_buffer|s_rdadd[12]~10_combout\ & \frame_buffer|s_rdadd[11]~8_combout\ & \frame_buffer|s_rdadd[10]~6_combout\ & \frame_buffer|s_rdadd[9]~4_combout\ & 
\frame_buffer|s_rdadd[8]~2_combout\ & \frame_buffer|s_rdadd[7]~0_combout\ & \vga|pos_h\(6) & \vga|pos_h\(5) & \vga|pos_h\(4) & \vga|pos_h\(3) & \vga|pos_h\(2) & \vga|pos_h\(1) & \vga|pos_h\(0));

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a6~portbdataout\ <= \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a6_PORTBDATAOUT_bus\(0);

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\(0) <= \frame_buffer|s_wrdata\(0);

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\frame_buffer|s_wradd\(12) & \frame_buffer|s_wradd\(11) & \frame_buffer|s_wradd\(10) & \frame_buffer|s_wradd\(9) & \frame_buffer|s_wradd\(8) & 
\frame_buffer|s_wradd\(7) & \frame_buffer|s_wradd\(6) & \frame_buffer|s_wradd\(5) & \frame_buffer|s_wradd\(4) & \frame_buffer|s_wradd\(3) & \frame_buffer|s_wradd\(2) & \frame_buffer|s_wradd\(1) & \frame_buffer|s_wradd\(0));

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a4_PORTBADDR_bus\ <= (\frame_buffer|s_rdadd[12]~10_combout\ & \frame_buffer|s_rdadd[11]~8_combout\ & \frame_buffer|s_rdadd[10]~6_combout\ & \frame_buffer|s_rdadd[9]~4_combout\ & 
\frame_buffer|s_rdadd[8]~2_combout\ & \frame_buffer|s_rdadd[7]~0_combout\ & \vga|pos_h\(6) & \vga|pos_h\(5) & \vga|pos_h\(4) & \vga|pos_h\(3) & \vga|pos_h\(2) & \vga|pos_h\(1) & \vga|pos_h\(0));

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a4~portbdataout\ <= \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(0);

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a7_PORTADATAIN_bus\(0) <= \frame_buffer|s_wrdata\(0);

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\frame_buffer|s_wradd\(12) & \frame_buffer|s_wradd\(11) & \frame_buffer|s_wradd\(10) & \frame_buffer|s_wradd\(9) & \frame_buffer|s_wradd\(8) & 
\frame_buffer|s_wradd\(7) & \frame_buffer|s_wradd\(6) & \frame_buffer|s_wradd\(5) & \frame_buffer|s_wradd\(4) & \frame_buffer|s_wradd\(3) & \frame_buffer|s_wradd\(2) & \frame_buffer|s_wradd\(1) & \frame_buffer|s_wradd\(0));

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a7_PORTBADDR_bus\ <= (\frame_buffer|s_rdadd[12]~10_combout\ & \frame_buffer|s_rdadd[11]~8_combout\ & \frame_buffer|s_rdadd[10]~6_combout\ & \frame_buffer|s_rdadd[9]~4_combout\ & 
\frame_buffer|s_rdadd[8]~2_combout\ & \frame_buffer|s_rdadd[7]~0_combout\ & \vga|pos_h\(6) & \vga|pos_h\(5) & \vga|pos_h\(4) & \vga|pos_h\(3) & \vga|pos_h\(2) & \vga|pos_h\(1) & \vga|pos_h\(0));

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a7~portbdataout\ <= \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a7_PORTBDATAOUT_bus\(0);

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a37_PORTADATAIN_bus\ <= (gnd & \frame_buffer|s_wrdata\(0));

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a37_PORTAADDR_bus\ <= (\frame_buffer|s_wradd\(11) & \frame_buffer|s_wradd\(10) & \frame_buffer|s_wradd\(9) & \frame_buffer|s_wradd\(8) & \frame_buffer|s_wradd\(7) & 
\frame_buffer|s_wradd\(6) & \frame_buffer|s_wradd\(5) & \frame_buffer|s_wradd\(4) & \frame_buffer|s_wradd\(3) & \frame_buffer|s_wradd\(2) & \frame_buffer|s_wradd\(1) & \frame_buffer|s_wradd\(0));

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a37_PORTBADDR_bus\ <= (\frame_buffer|s_rdadd[11]~8_combout\ & \frame_buffer|s_rdadd[10]~6_combout\ & \frame_buffer|s_rdadd[9]~4_combout\ & \frame_buffer|s_rdadd[8]~2_combout\ & 
\frame_buffer|s_rdadd[7]~0_combout\ & \vga|pos_h\(6) & \vga|pos_h\(5) & \vga|pos_h\(4) & \vga|pos_h\(3) & \vga|pos_h\(2) & \vga|pos_h\(1) & \vga|pos_h\(0));

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a37~portbdataout\ <= \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a37_PORTBDATAOUT_bus\(0);

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a36_PORTADATAIN_bus\(0) <= \frame_buffer|s_wrdata\(0);

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a36_PORTAADDR_bus\ <= (\frame_buffer|s_wradd\(12) & \frame_buffer|s_wradd\(11) & \frame_buffer|s_wradd\(10) & \frame_buffer|s_wradd\(9) & \frame_buffer|s_wradd\(8) & 
\frame_buffer|s_wradd\(7) & \frame_buffer|s_wradd\(6) & \frame_buffer|s_wradd\(5) & \frame_buffer|s_wradd\(4) & \frame_buffer|s_wradd\(3) & \frame_buffer|s_wradd\(2) & \frame_buffer|s_wradd\(1) & \frame_buffer|s_wradd\(0));

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a36_PORTBADDR_bus\ <= (\frame_buffer|s_rdadd[12]~10_combout\ & \frame_buffer|s_rdadd[11]~8_combout\ & \frame_buffer|s_rdadd[10]~6_combout\ & \frame_buffer|s_rdadd[9]~4_combout\ & 
\frame_buffer|s_rdadd[8]~2_combout\ & \frame_buffer|s_rdadd[7]~0_combout\ & \vga|pos_h\(6) & \vga|pos_h\(5) & \vga|pos_h\(4) & \vga|pos_h\(3) & \vga|pos_h\(2) & \vga|pos_h\(1) & \vga|pos_h\(0));

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a36~portbdataout\ <= \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a36_PORTBDATAOUT_bus\(0);

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a21_PORTADATAIN_bus\(0) <= \frame_buffer|s_wrdata\(0);

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a21_PORTAADDR_bus\ <= (\frame_buffer|s_wradd\(12) & \frame_buffer|s_wradd\(11) & \frame_buffer|s_wradd\(10) & \frame_buffer|s_wradd\(9) & \frame_buffer|s_wradd\(8) & 
\frame_buffer|s_wradd\(7) & \frame_buffer|s_wradd\(6) & \frame_buffer|s_wradd\(5) & \frame_buffer|s_wradd\(4) & \frame_buffer|s_wradd\(3) & \frame_buffer|s_wradd\(2) & \frame_buffer|s_wradd\(1) & \frame_buffer|s_wradd\(0));

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a21_PORTBADDR_bus\ <= (\frame_buffer|s_rdadd[12]~10_combout\ & \frame_buffer|s_rdadd[11]~8_combout\ & \frame_buffer|s_rdadd[10]~6_combout\ & \frame_buffer|s_rdadd[9]~4_combout\ & 
\frame_buffer|s_rdadd[8]~2_combout\ & \frame_buffer|s_rdadd[7]~0_combout\ & \vga|pos_h\(6) & \vga|pos_h\(5) & \vga|pos_h\(4) & \vga|pos_h\(3) & \vga|pos_h\(2) & \vga|pos_h\(1) & \vga|pos_h\(0));

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a21~portbdataout\ <= \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a21_PORTBDATAOUT_bus\(0);

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a22_PORTADATAIN_bus\(0) <= \frame_buffer|s_wrdata\(0);

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a22_PORTAADDR_bus\ <= (\frame_buffer|s_wradd\(12) & \frame_buffer|s_wradd\(11) & \frame_buffer|s_wradd\(10) & \frame_buffer|s_wradd\(9) & \frame_buffer|s_wradd\(8) & 
\frame_buffer|s_wradd\(7) & \frame_buffer|s_wradd\(6) & \frame_buffer|s_wradd\(5) & \frame_buffer|s_wradd\(4) & \frame_buffer|s_wradd\(3) & \frame_buffer|s_wradd\(2) & \frame_buffer|s_wradd\(1) & \frame_buffer|s_wradd\(0));

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a22_PORTBADDR_bus\ <= (\frame_buffer|s_rdadd[12]~10_combout\ & \frame_buffer|s_rdadd[11]~8_combout\ & \frame_buffer|s_rdadd[10]~6_combout\ & \frame_buffer|s_rdadd[9]~4_combout\ & 
\frame_buffer|s_rdadd[8]~2_combout\ & \frame_buffer|s_rdadd[7]~0_combout\ & \vga|pos_h\(6) & \vga|pos_h\(5) & \vga|pos_h\(4) & \vga|pos_h\(3) & \vga|pos_h\(2) & \vga|pos_h\(1) & \vga|pos_h\(0));

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a22~portbdataout\ <= \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a22_PORTBDATAOUT_bus\(0);

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a20_PORTADATAIN_bus\(0) <= \frame_buffer|s_wrdata\(0);

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a20_PORTAADDR_bus\ <= (\frame_buffer|s_wradd\(12) & \frame_buffer|s_wradd\(11) & \frame_buffer|s_wradd\(10) & \frame_buffer|s_wradd\(9) & \frame_buffer|s_wradd\(8) & 
\frame_buffer|s_wradd\(7) & \frame_buffer|s_wradd\(6) & \frame_buffer|s_wradd\(5) & \frame_buffer|s_wradd\(4) & \frame_buffer|s_wradd\(3) & \frame_buffer|s_wradd\(2) & \frame_buffer|s_wradd\(1) & \frame_buffer|s_wradd\(0));

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a20_PORTBADDR_bus\ <= (\frame_buffer|s_rdadd[12]~10_combout\ & \frame_buffer|s_rdadd[11]~8_combout\ & \frame_buffer|s_rdadd[10]~6_combout\ & \frame_buffer|s_rdadd[9]~4_combout\ & 
\frame_buffer|s_rdadd[8]~2_combout\ & \frame_buffer|s_rdadd[7]~0_combout\ & \vga|pos_h\(6) & \vga|pos_h\(5) & \vga|pos_h\(4) & \vga|pos_h\(3) & \vga|pos_h\(2) & \vga|pos_h\(1) & \vga|pos_h\(0));

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a20~portbdataout\ <= \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a20_PORTBDATAOUT_bus\(0);

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a23_PORTADATAIN_bus\(0) <= \frame_buffer|s_wrdata\(0);

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a23_PORTAADDR_bus\ <= (\frame_buffer|s_wradd\(12) & \frame_buffer|s_wradd\(11) & \frame_buffer|s_wradd\(10) & \frame_buffer|s_wradd\(9) & \frame_buffer|s_wradd\(8) & 
\frame_buffer|s_wradd\(7) & \frame_buffer|s_wradd\(6) & \frame_buffer|s_wradd\(5) & \frame_buffer|s_wradd\(4) & \frame_buffer|s_wradd\(3) & \frame_buffer|s_wradd\(2) & \frame_buffer|s_wradd\(1) & \frame_buffer|s_wradd\(0));

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a23_PORTBADDR_bus\ <= (\frame_buffer|s_rdadd[12]~10_combout\ & \frame_buffer|s_rdadd[11]~8_combout\ & \frame_buffer|s_rdadd[10]~6_combout\ & \frame_buffer|s_rdadd[9]~4_combout\ & 
\frame_buffer|s_rdadd[8]~2_combout\ & \frame_buffer|s_rdadd[7]~0_combout\ & \vga|pos_h\(6) & \vga|pos_h\(5) & \vga|pos_h\(4) & \vga|pos_h\(3) & \vga|pos_h\(2) & \vga|pos_h\(1) & \vga|pos_h\(0));

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a23~portbdataout\ <= \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a23_PORTBDATAOUT_bus\(0);

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a17_PORTADATAIN_bus\(0) <= \frame_buffer|s_wrdata\(0);

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a17_PORTAADDR_bus\ <= (\frame_buffer|s_wradd\(12) & \frame_buffer|s_wradd\(11) & \frame_buffer|s_wradd\(10) & \frame_buffer|s_wradd\(9) & \frame_buffer|s_wradd\(8) & 
\frame_buffer|s_wradd\(7) & \frame_buffer|s_wradd\(6) & \frame_buffer|s_wradd\(5) & \frame_buffer|s_wradd\(4) & \frame_buffer|s_wradd\(3) & \frame_buffer|s_wradd\(2) & \frame_buffer|s_wradd\(1) & \frame_buffer|s_wradd\(0));

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a17_PORTBADDR_bus\ <= (\frame_buffer|s_rdadd[12]~10_combout\ & \frame_buffer|s_rdadd[11]~8_combout\ & \frame_buffer|s_rdadd[10]~6_combout\ & \frame_buffer|s_rdadd[9]~4_combout\ & 
\frame_buffer|s_rdadd[8]~2_combout\ & \frame_buffer|s_rdadd[7]~0_combout\ & \vga|pos_h\(6) & \vga|pos_h\(5) & \vga|pos_h\(4) & \vga|pos_h\(3) & \vga|pos_h\(2) & \vga|pos_h\(1) & \vga|pos_h\(0));

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a17~portbdataout\ <= \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a17_PORTBDATAOUT_bus\(0);

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a18_PORTADATAIN_bus\(0) <= \frame_buffer|s_wrdata\(0);

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a18_PORTAADDR_bus\ <= (\frame_buffer|s_wradd\(12) & \frame_buffer|s_wradd\(11) & \frame_buffer|s_wradd\(10) & \frame_buffer|s_wradd\(9) & \frame_buffer|s_wradd\(8) & 
\frame_buffer|s_wradd\(7) & \frame_buffer|s_wradd\(6) & \frame_buffer|s_wradd\(5) & \frame_buffer|s_wradd\(4) & \frame_buffer|s_wradd\(3) & \frame_buffer|s_wradd\(2) & \frame_buffer|s_wradd\(1) & \frame_buffer|s_wradd\(0));

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a18_PORTBADDR_bus\ <= (\frame_buffer|s_rdadd[12]~10_combout\ & \frame_buffer|s_rdadd[11]~8_combout\ & \frame_buffer|s_rdadd[10]~6_combout\ & \frame_buffer|s_rdadd[9]~4_combout\ & 
\frame_buffer|s_rdadd[8]~2_combout\ & \frame_buffer|s_rdadd[7]~0_combout\ & \vga|pos_h\(6) & \vga|pos_h\(5) & \vga|pos_h\(4) & \vga|pos_h\(3) & \vga|pos_h\(2) & \vga|pos_h\(1) & \vga|pos_h\(0));

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a18~portbdataout\ <= \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(0);

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a16_PORTADATAIN_bus\(0) <= \frame_buffer|s_wrdata\(0);

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a16_PORTAADDR_bus\ <= (\frame_buffer|s_wradd\(12) & \frame_buffer|s_wradd\(11) & \frame_buffer|s_wradd\(10) & \frame_buffer|s_wradd\(9) & \frame_buffer|s_wradd\(8) & 
\frame_buffer|s_wradd\(7) & \frame_buffer|s_wradd\(6) & \frame_buffer|s_wradd\(5) & \frame_buffer|s_wradd\(4) & \frame_buffer|s_wradd\(3) & \frame_buffer|s_wradd\(2) & \frame_buffer|s_wradd\(1) & \frame_buffer|s_wradd\(0));

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a16_PORTBADDR_bus\ <= (\frame_buffer|s_rdadd[12]~10_combout\ & \frame_buffer|s_rdadd[11]~8_combout\ & \frame_buffer|s_rdadd[10]~6_combout\ & \frame_buffer|s_rdadd[9]~4_combout\ & 
\frame_buffer|s_rdadd[8]~2_combout\ & \frame_buffer|s_rdadd[7]~0_combout\ & \vga|pos_h\(6) & \vga|pos_h\(5) & \vga|pos_h\(4) & \vga|pos_h\(3) & \vga|pos_h\(2) & \vga|pos_h\(1) & \vga|pos_h\(0));

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a16~portbdataout\ <= \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a16_PORTBDATAOUT_bus\(0);

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a19_PORTADATAIN_bus\(0) <= \frame_buffer|s_wrdata\(0);

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a19_PORTAADDR_bus\ <= (\frame_buffer|s_wradd\(12) & \frame_buffer|s_wradd\(11) & \frame_buffer|s_wradd\(10) & \frame_buffer|s_wradd\(9) & \frame_buffer|s_wradd\(8) & 
\frame_buffer|s_wradd\(7) & \frame_buffer|s_wradd\(6) & \frame_buffer|s_wradd\(5) & \frame_buffer|s_wradd\(4) & \frame_buffer|s_wradd\(3) & \frame_buffer|s_wradd\(2) & \frame_buffer|s_wradd\(1) & \frame_buffer|s_wradd\(0));

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a19_PORTBADDR_bus\ <= (\frame_buffer|s_rdadd[12]~10_combout\ & \frame_buffer|s_rdadd[11]~8_combout\ & \frame_buffer|s_rdadd[10]~6_combout\ & \frame_buffer|s_rdadd[9]~4_combout\ & 
\frame_buffer|s_rdadd[8]~2_combout\ & \frame_buffer|s_rdadd[7]~0_combout\ & \vga|pos_h\(6) & \vga|pos_h\(5) & \vga|pos_h\(4) & \vga|pos_h\(3) & \vga|pos_h\(2) & \vga|pos_h\(1) & \vga|pos_h\(0));

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a19~portbdataout\ <= \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a19_PORTBDATAOUT_bus\(0);

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a27_PORTADATAIN_bus\(0) <= \frame_buffer|s_wrdata\(0);

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a27_PORTAADDR_bus\ <= (\frame_buffer|s_wradd\(12) & \frame_buffer|s_wradd\(11) & \frame_buffer|s_wradd\(10) & \frame_buffer|s_wradd\(9) & \frame_buffer|s_wradd\(8) & 
\frame_buffer|s_wradd\(7) & \frame_buffer|s_wradd\(6) & \frame_buffer|s_wradd\(5) & \frame_buffer|s_wradd\(4) & \frame_buffer|s_wradd\(3) & \frame_buffer|s_wradd\(2) & \frame_buffer|s_wradd\(1) & \frame_buffer|s_wradd\(0));

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a27_PORTBADDR_bus\ <= (\frame_buffer|s_rdadd[12]~10_combout\ & \frame_buffer|s_rdadd[11]~8_combout\ & \frame_buffer|s_rdadd[10]~6_combout\ & \frame_buffer|s_rdadd[9]~4_combout\ & 
\frame_buffer|s_rdadd[8]~2_combout\ & \frame_buffer|s_rdadd[7]~0_combout\ & \vga|pos_h\(6) & \vga|pos_h\(5) & \vga|pos_h\(4) & \vga|pos_h\(3) & \vga|pos_h\(2) & \vga|pos_h\(1) & \vga|pos_h\(0));

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a27~portbdataout\ <= \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a27_PORTBDATAOUT_bus\(0);

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a26_PORTADATAIN_bus\(0) <= \frame_buffer|s_wrdata\(0);

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a26_PORTAADDR_bus\ <= (\frame_buffer|s_wradd\(12) & \frame_buffer|s_wradd\(11) & \frame_buffer|s_wradd\(10) & \frame_buffer|s_wradd\(9) & \frame_buffer|s_wradd\(8) & 
\frame_buffer|s_wradd\(7) & \frame_buffer|s_wradd\(6) & \frame_buffer|s_wradd\(5) & \frame_buffer|s_wradd\(4) & \frame_buffer|s_wradd\(3) & \frame_buffer|s_wradd\(2) & \frame_buffer|s_wradd\(1) & \frame_buffer|s_wradd\(0));

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a26_PORTBADDR_bus\ <= (\frame_buffer|s_rdadd[12]~10_combout\ & \frame_buffer|s_rdadd[11]~8_combout\ & \frame_buffer|s_rdadd[10]~6_combout\ & \frame_buffer|s_rdadd[9]~4_combout\ & 
\frame_buffer|s_rdadd[8]~2_combout\ & \frame_buffer|s_rdadd[7]~0_combout\ & \vga|pos_h\(6) & \vga|pos_h\(5) & \vga|pos_h\(4) & \vga|pos_h\(3) & \vga|pos_h\(2) & \vga|pos_h\(1) & \vga|pos_h\(0));

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a26~portbdataout\ <= \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a26_PORTBDATAOUT_bus\(0);

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a25_PORTADATAIN_bus\(0) <= \frame_buffer|s_wrdata\(0);

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a25_PORTAADDR_bus\ <= (\frame_buffer|s_wradd\(12) & \frame_buffer|s_wradd\(11) & \frame_buffer|s_wradd\(10) & \frame_buffer|s_wradd\(9) & \frame_buffer|s_wradd\(8) & 
\frame_buffer|s_wradd\(7) & \frame_buffer|s_wradd\(6) & \frame_buffer|s_wradd\(5) & \frame_buffer|s_wradd\(4) & \frame_buffer|s_wradd\(3) & \frame_buffer|s_wradd\(2) & \frame_buffer|s_wradd\(1) & \frame_buffer|s_wradd\(0));

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a25_PORTBADDR_bus\ <= (\frame_buffer|s_rdadd[12]~10_combout\ & \frame_buffer|s_rdadd[11]~8_combout\ & \frame_buffer|s_rdadd[10]~6_combout\ & \frame_buffer|s_rdadd[9]~4_combout\ & 
\frame_buffer|s_rdadd[8]~2_combout\ & \frame_buffer|s_rdadd[7]~0_combout\ & \vga|pos_h\(6) & \vga|pos_h\(5) & \vga|pos_h\(4) & \vga|pos_h\(3) & \vga|pos_h\(2) & \vga|pos_h\(1) & \vga|pos_h\(0));

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a25~portbdataout\ <= \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a25_PORTBDATAOUT_bus\(0);

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a24_PORTADATAIN_bus\(0) <= \frame_buffer|s_wrdata\(0);

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a24_PORTAADDR_bus\ <= (\frame_buffer|s_wradd\(12) & \frame_buffer|s_wradd\(11) & \frame_buffer|s_wradd\(10) & \frame_buffer|s_wradd\(9) & \frame_buffer|s_wradd\(8) & 
\frame_buffer|s_wradd\(7) & \frame_buffer|s_wradd\(6) & \frame_buffer|s_wradd\(5) & \frame_buffer|s_wradd\(4) & \frame_buffer|s_wradd\(3) & \frame_buffer|s_wradd\(2) & \frame_buffer|s_wradd\(1) & \frame_buffer|s_wradd\(0));

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a24_PORTBADDR_bus\ <= (\frame_buffer|s_rdadd[12]~10_combout\ & \frame_buffer|s_rdadd[11]~8_combout\ & \frame_buffer|s_rdadd[10]~6_combout\ & \frame_buffer|s_rdadd[9]~4_combout\ & 
\frame_buffer|s_rdadd[8]~2_combout\ & \frame_buffer|s_rdadd[7]~0_combout\ & \vga|pos_h\(6) & \vga|pos_h\(5) & \vga|pos_h\(4) & \vga|pos_h\(3) & \vga|pos_h\(2) & \vga|pos_h\(1) & \vga|pos_h\(0));

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a24~portbdataout\ <= \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a24_PORTBDATAOUT_bus\(0);

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a31_PORTADATAIN_bus\(0) <= \frame_buffer|s_wrdata\(0);

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a31_PORTAADDR_bus\ <= (\frame_buffer|s_wradd\(12) & \frame_buffer|s_wradd\(11) & \frame_buffer|s_wradd\(10) & \frame_buffer|s_wradd\(9) & \frame_buffer|s_wradd\(8) & 
\frame_buffer|s_wradd\(7) & \frame_buffer|s_wradd\(6) & \frame_buffer|s_wradd\(5) & \frame_buffer|s_wradd\(4) & \frame_buffer|s_wradd\(3) & \frame_buffer|s_wradd\(2) & \frame_buffer|s_wradd\(1) & \frame_buffer|s_wradd\(0));

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a31_PORTBADDR_bus\ <= (\frame_buffer|s_rdadd[12]~10_combout\ & \frame_buffer|s_rdadd[11]~8_combout\ & \frame_buffer|s_rdadd[10]~6_combout\ & \frame_buffer|s_rdadd[9]~4_combout\ & 
\frame_buffer|s_rdadd[8]~2_combout\ & \frame_buffer|s_rdadd[7]~0_combout\ & \vga|pos_h\(6) & \vga|pos_h\(5) & \vga|pos_h\(4) & \vga|pos_h\(3) & \vga|pos_h\(2) & \vga|pos_h\(1) & \vga|pos_h\(0));

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a31~portbdataout\ <= \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a31_PORTBDATAOUT_bus\(0);

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a30_PORTADATAIN_bus\(0) <= \frame_buffer|s_wrdata\(0);

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a30_PORTAADDR_bus\ <= (\frame_buffer|s_wradd\(12) & \frame_buffer|s_wradd\(11) & \frame_buffer|s_wradd\(10) & \frame_buffer|s_wradd\(9) & \frame_buffer|s_wradd\(8) & 
\frame_buffer|s_wradd\(7) & \frame_buffer|s_wradd\(6) & \frame_buffer|s_wradd\(5) & \frame_buffer|s_wradd\(4) & \frame_buffer|s_wradd\(3) & \frame_buffer|s_wradd\(2) & \frame_buffer|s_wradd\(1) & \frame_buffer|s_wradd\(0));

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a30_PORTBADDR_bus\ <= (\frame_buffer|s_rdadd[12]~10_combout\ & \frame_buffer|s_rdadd[11]~8_combout\ & \frame_buffer|s_rdadd[10]~6_combout\ & \frame_buffer|s_rdadd[9]~4_combout\ & 
\frame_buffer|s_rdadd[8]~2_combout\ & \frame_buffer|s_rdadd[7]~0_combout\ & \vga|pos_h\(6) & \vga|pos_h\(5) & \vga|pos_h\(4) & \vga|pos_h\(3) & \vga|pos_h\(2) & \vga|pos_h\(1) & \vga|pos_h\(0));

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a30~portbdataout\ <= \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a30_PORTBDATAOUT_bus\(0);

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a29_PORTADATAIN_bus\(0) <= \frame_buffer|s_wrdata\(0);

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a29_PORTAADDR_bus\ <= (\frame_buffer|s_wradd\(12) & \frame_buffer|s_wradd\(11) & \frame_buffer|s_wradd\(10) & \frame_buffer|s_wradd\(9) & \frame_buffer|s_wradd\(8) & 
\frame_buffer|s_wradd\(7) & \frame_buffer|s_wradd\(6) & \frame_buffer|s_wradd\(5) & \frame_buffer|s_wradd\(4) & \frame_buffer|s_wradd\(3) & \frame_buffer|s_wradd\(2) & \frame_buffer|s_wradd\(1) & \frame_buffer|s_wradd\(0));

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a29_PORTBADDR_bus\ <= (\frame_buffer|s_rdadd[12]~10_combout\ & \frame_buffer|s_rdadd[11]~8_combout\ & \frame_buffer|s_rdadd[10]~6_combout\ & \frame_buffer|s_rdadd[9]~4_combout\ & 
\frame_buffer|s_rdadd[8]~2_combout\ & \frame_buffer|s_rdadd[7]~0_combout\ & \vga|pos_h\(6) & \vga|pos_h\(5) & \vga|pos_h\(4) & \vga|pos_h\(3) & \vga|pos_h\(2) & \vga|pos_h\(1) & \vga|pos_h\(0));

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a29~portbdataout\ <= \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a29_PORTBDATAOUT_bus\(0);

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a28_PORTADATAIN_bus\(0) <= \frame_buffer|s_wrdata\(0);

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a28_PORTAADDR_bus\ <= (\frame_buffer|s_wradd\(12) & \frame_buffer|s_wradd\(11) & \frame_buffer|s_wradd\(10) & \frame_buffer|s_wradd\(9) & \frame_buffer|s_wradd\(8) & 
\frame_buffer|s_wradd\(7) & \frame_buffer|s_wradd\(6) & \frame_buffer|s_wradd\(5) & \frame_buffer|s_wradd\(4) & \frame_buffer|s_wradd\(3) & \frame_buffer|s_wradd\(2) & \frame_buffer|s_wradd\(1) & \frame_buffer|s_wradd\(0));

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a28_PORTBADDR_bus\ <= (\frame_buffer|s_rdadd[12]~10_combout\ & \frame_buffer|s_rdadd[11]~8_combout\ & \frame_buffer|s_rdadd[10]~6_combout\ & \frame_buffer|s_rdadd[9]~4_combout\ & 
\frame_buffer|s_rdadd[8]~2_combout\ & \frame_buffer|s_rdadd[7]~0_combout\ & \vga|pos_h\(6) & \vga|pos_h\(5) & \vga|pos_h\(4) & \vga|pos_h\(3) & \vga|pos_h\(2) & \vga|pos_h\(1) & \vga|pos_h\(0));

\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a28~portbdataout\ <= \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a28_PORTBDATAOUT_bus\(0);

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\frame_buffer|clk_cam~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \frame_buffer|clk_cam~q\);

\vga|clk_b~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \vga|clk_b~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\rx_cam|ALT_INV_Equal1~0_combout\ <= NOT \rx_cam|Equal1~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y41_N24
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X0_Y18_N2
\Hsync_VGA~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga|Hsync_VGA~q\,
	devoe => ww_devoe,
	o => \Hsync_VGA~output_o\);

-- Location: IOOBUF_X0_Y13_N9
\Vsync_VGA~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga|Vsync_VGA~q\,
	devoe => ww_devoe,
	o => \Vsync_VGA~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\R[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga|R\(0),
	devoe => ww_devoe,
	o => \R[0]~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\R[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga|R\(1),
	devoe => ww_devoe,
	o => \R[1]~output_o\);

-- Location: IOOBUF_X0_Y12_N9
\R[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga|R\(2),
	devoe => ww_devoe,
	o => \R[2]~output_o\);

-- Location: IOOBUF_X18_Y0_N30
\R[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga|R\(3),
	devoe => ww_devoe,
	o => \R[3]~output_o\);

-- Location: IOOBUF_X0_Y3_N2
\G[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga|G\(0),
	devoe => ww_devoe,
	o => \G[0]~output_o\);

-- Location: IOOBUF_X0_Y3_N9
\G[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga|G\(1),
	devoe => ww_devoe,
	o => \G[1]~output_o\);

-- Location: IOOBUF_X0_Y15_N9
\G[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga|G\(2),
	devoe => ww_devoe,
	o => \G[2]~output_o\);

-- Location: IOOBUF_X0_Y9_N2
\G[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga|G\(3),
	devoe => ww_devoe,
	o => \G[3]~output_o\);

-- Location: IOOBUF_X0_Y18_N9
\B[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga|B\(0),
	devoe => ww_devoe,
	o => \B[0]~output_o\);

-- Location: IOOBUF_X0_Y23_N2
\B[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga|B\(1),
	devoe => ww_devoe,
	o => \B[1]~output_o\);

-- Location: IOOBUF_X0_Y15_N2
\B[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga|B\(2),
	devoe => ww_devoe,
	o => \B[2]~output_o\);

-- Location: IOOBUF_X0_Y13_N2
\B[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga|B\(3),
	devoe => ww_devoe,
	o => \B[3]~output_o\);

-- Location: IOOBUF_X24_Y0_N30
\oclk~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_cam|oclk~q\,
	devoe => ww_devoe,
	o => \oclk~output_o\);

-- Location: IOIBUF_X78_Y29_N22
\clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G9
\clk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X45_Y53_N24
\vga|clk_b~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga|clk_b~0_combout\ = !\vga|clk_b~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|clk_b~q\,
	combout => \vga|clk_b~0_combout\);

-- Location: LCCOMB_X45_Y53_N10
\vga|clk_b~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga|clk_b~feeder_combout\ = \vga|clk_b~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|clk_b~0_combout\,
	combout => \vga|clk_b~feeder_combout\);

-- Location: FF_X45_Y53_N11
\vga|clk_b\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vga|clk_b~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|clk_b~q\);

-- Location: CLKCTRL_G13
\vga|clk_b~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \vga|clk_b~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \vga|clk_b~clkctrl_outclk\);

-- Location: LCCOMB_X50_Y21_N0
\vga|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga|Add1~0_combout\ = \vga|h_count\(0) $ (VCC)
-- \vga|Add1~1\ = CARRY(\vga|h_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga|h_count\(0),
	datad => VCC,
	combout => \vga|Add1~0_combout\,
	cout => \vga|Add1~1\);

-- Location: FF_X50_Y21_N1
\vga|h_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga|clk_b~clkctrl_outclk\,
	d => \vga|Add1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|h_count\(0));

-- Location: LCCOMB_X50_Y21_N2
\vga|Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga|Add1~2_combout\ = (\vga|h_count\(1) & (!\vga|Add1~1\)) # (!\vga|h_count\(1) & ((\vga|Add1~1\) # (GND)))
-- \vga|Add1~3\ = CARRY((!\vga|Add1~1\) # (!\vga|h_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga|h_count\(1),
	datad => VCC,
	cin => \vga|Add1~1\,
	combout => \vga|Add1~2_combout\,
	cout => \vga|Add1~3\);

-- Location: FF_X50_Y21_N3
\vga|h_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga|clk_b~clkctrl_outclk\,
	d => \vga|Add1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|h_count\(1));

-- Location: LCCOMB_X50_Y21_N4
\vga|Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga|Add1~4_combout\ = (\vga|h_count\(2) & (\vga|Add1~3\ $ (GND))) # (!\vga|h_count\(2) & (!\vga|Add1~3\ & VCC))
-- \vga|Add1~5\ = CARRY((\vga|h_count\(2) & !\vga|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga|h_count\(2),
	datad => VCC,
	cin => \vga|Add1~3\,
	combout => \vga|Add1~4_combout\,
	cout => \vga|Add1~5\);

-- Location: FF_X50_Y21_N5
\vga|h_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga|clk_b~clkctrl_outclk\,
	d => \vga|Add1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|h_count\(2));

-- Location: LCCOMB_X50_Y21_N6
\vga|Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga|Add1~6_combout\ = (\vga|h_count\(3) & (!\vga|Add1~5\)) # (!\vga|h_count\(3) & ((\vga|Add1~5\) # (GND)))
-- \vga|Add1~7\ = CARRY((!\vga|Add1~5\) # (!\vga|h_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga|h_count\(3),
	datad => VCC,
	cin => \vga|Add1~5\,
	combout => \vga|Add1~6_combout\,
	cout => \vga|Add1~7\);

-- Location: FF_X50_Y21_N7
\vga|h_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga|clk_b~clkctrl_outclk\,
	d => \vga|Add1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|h_count\(3));

-- Location: LCCOMB_X50_Y21_N14
\vga|Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga|Add1~14_combout\ = (\vga|h_count\(7) & (!\vga|Add1~13\)) # (!\vga|h_count\(7) & ((\vga|Add1~13\) # (GND)))
-- \vga|Add1~15\ = CARRY((!\vga|Add1~13\) # (!\vga|h_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga|h_count\(7),
	datad => VCC,
	cin => \vga|Add1~13\,
	combout => \vga|Add1~14_combout\,
	cout => \vga|Add1~15\);

-- Location: LCCOMB_X50_Y21_N16
\vga|Add1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga|Add1~16_combout\ = (\vga|h_count\(8) & (\vga|Add1~15\ $ (GND))) # (!\vga|h_count\(8) & (!\vga|Add1~15\ & VCC))
-- \vga|Add1~17\ = CARRY((\vga|h_count\(8) & !\vga|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga|h_count\(8),
	datad => VCC,
	cin => \vga|Add1~15\,
	combout => \vga|Add1~16_combout\,
	cout => \vga|Add1~17\);

-- Location: LCCOMB_X51_Y21_N8
\vga|h_count~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga|h_count~1_combout\ = (\vga|Add1~16_combout\ & !\vga|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga|Add1~16_combout\,
	datad => \vga|Equal0~2_combout\,
	combout => \vga|h_count~1_combout\);

-- Location: FF_X51_Y21_N9
\vga|h_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga|clk_b~clkctrl_outclk\,
	d => \vga|h_count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|h_count\(8));

-- Location: LCCOMB_X50_Y21_N18
\vga|Add1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga|Add1~18_combout\ = \vga|h_count\(9) $ (\vga|Add1~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga|h_count\(9),
	cin => \vga|Add1~17\,
	combout => \vga|Add1~18_combout\);

-- Location: LCCOMB_X50_Y21_N22
\vga|h_count~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga|h_count~2_combout\ = (!\vga|Equal0~2_combout\ & \vga|Add1~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga|Equal0~2_combout\,
	datad => \vga|Add1~18_combout\,
	combout => \vga|h_count~2_combout\);

-- Location: FF_X50_Y21_N23
\vga|h_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga|clk_b~clkctrl_outclk\,
	d => \vga|h_count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|h_count\(9));

-- Location: LCCOMB_X50_Y21_N28
\vga|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga|Equal0~1_combout\ = (\vga|h_count\(9) & (\vga|h_count\(1) & (\vga|h_count\(8) & \vga|h_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|h_count\(9),
	datab => \vga|h_count\(1),
	datac => \vga|h_count\(8),
	datad => \vga|h_count\(2),
	combout => \vga|Equal0~1_combout\);

-- Location: LCCOMB_X50_Y21_N26
\vga|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga|Equal0~0_combout\ = (!\vga|h_count\(5) & (!\vga|h_count\(7) & (!\vga|h_count\(6) & \vga|h_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|h_count\(5),
	datab => \vga|h_count\(7),
	datac => \vga|h_count\(6),
	datad => \vga|h_count\(0),
	combout => \vga|Equal0~0_combout\);

-- Location: LCCOMB_X50_Y21_N8
\vga|Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga|Add1~8_combout\ = (\vga|h_count\(4) & (\vga|Add1~7\ $ (GND))) # (!\vga|h_count\(4) & (!\vga|Add1~7\ & VCC))
-- \vga|Add1~9\ = CARRY((\vga|h_count\(4) & !\vga|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga|h_count\(4),
	datad => VCC,
	cin => \vga|Add1~7\,
	combout => \vga|Add1~8_combout\,
	cout => \vga|Add1~9\);

-- Location: FF_X50_Y21_N9
\vga|h_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga|clk_b~clkctrl_outclk\,
	d => \vga|Add1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|h_count\(4));

-- Location: LCCOMB_X50_Y21_N30
\vga|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga|Equal0~2_combout\ = (\vga|h_count\(3) & (\vga|Equal0~1_combout\ & (\vga|Equal0~0_combout\ & \vga|h_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|h_count\(3),
	datab => \vga|Equal0~1_combout\,
	datac => \vga|Equal0~0_combout\,
	datad => \vga|h_count\(4),
	combout => \vga|Equal0~2_combout\);

-- Location: LCCOMB_X50_Y21_N10
\vga|Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga|Add1~10_combout\ = (\vga|h_count\(5) & (!\vga|Add1~9\)) # (!\vga|h_count\(5) & ((\vga|Add1~9\) # (GND)))
-- \vga|Add1~11\ = CARRY((!\vga|Add1~9\) # (!\vga|h_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga|h_count\(5),
	datad => VCC,
	cin => \vga|Add1~9\,
	combout => \vga|Add1~10_combout\,
	cout => \vga|Add1~11\);

-- Location: LCCOMB_X50_Y21_N20
\vga|h_count~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga|h_count~0_combout\ = (!\vga|Equal0~2_combout\ & \vga|Add1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga|Equal0~2_combout\,
	datad => \vga|Add1~10_combout\,
	combout => \vga|h_count~0_combout\);

-- Location: FF_X50_Y21_N21
\vga|h_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga|clk_b~clkctrl_outclk\,
	d => \vga|h_count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|h_count\(5));

-- Location: LCCOMB_X50_Y21_N12
\vga|Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga|Add1~12_combout\ = (\vga|h_count\(6) & (\vga|Add1~11\ $ (GND))) # (!\vga|h_count\(6) & (!\vga|Add1~11\ & VCC))
-- \vga|Add1~13\ = CARRY((\vga|h_count\(6) & !\vga|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga|h_count\(6),
	datad => VCC,
	cin => \vga|Add1~11\,
	combout => \vga|Add1~12_combout\,
	cout => \vga|Add1~13\);

-- Location: FF_X50_Y21_N13
\vga|h_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga|clk_b~clkctrl_outclk\,
	d => \vga|Add1~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|h_count\(6));

-- Location: FF_X50_Y21_N15
\vga|h_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga|clk_b~clkctrl_outclk\,
	d => \vga|Add1~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|h_count\(7));

-- Location: LCCOMB_X51_Y20_N18
\vga|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga|LessThan0~0_combout\ = (!\vga|h_count\(9) & (!\vga|h_count\(8) & ((!\vga|h_count\(5)) # (!\vga|h_count\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|h_count\(6),
	datab => \vga|h_count\(9),
	datac => \vga|h_count\(8),
	datad => \vga|h_count\(5),
	combout => \vga|LessThan0~0_combout\);

-- Location: LCCOMB_X51_Y20_N4
\vga|LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga|LessThan0~1_combout\ = (\vga|h_count\(7)) # (!\vga|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga|h_count\(7),
	datad => \vga|LessThan0~0_combout\,
	combout => \vga|LessThan0~1_combout\);

-- Location: FF_X51_Y20_N5
\vga|Hsync_VGA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga|clk_b~clkctrl_outclk\,
	d => \vga|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|Hsync_VGA~q\);

-- Location: LCCOMB_X52_Y21_N4
\vga|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga|Add0~0_combout\ = \vga|v_count\(0) $ (VCC)
-- \vga|Add0~1\ = CARRY(\vga|v_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga|v_count\(0),
	datad => VCC,
	combout => \vga|Add0~0_combout\,
	cout => \vga|Add0~1\);

-- Location: LCCOMB_X52_Y21_N6
\vga|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga|Add0~2_combout\ = (\vga|v_count\(1) & (!\vga|Add0~1\)) # (!\vga|v_count\(1) & ((\vga|Add0~1\) # (GND)))
-- \vga|Add0~3\ = CARRY((!\vga|Add0~1\) # (!\vga|v_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga|v_count\(1),
	datad => VCC,
	cin => \vga|Add0~1\,
	combout => \vga|Add0~2_combout\,
	cout => \vga|Add0~3\);

-- Location: LCCOMB_X52_Y21_N8
\vga|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga|Add0~4_combout\ = (\vga|v_count\(2) & (\vga|Add0~3\ $ (GND))) # (!\vga|v_count\(2) & (!\vga|Add0~3\ & VCC))
-- \vga|Add0~5\ = CARRY((\vga|v_count\(2) & !\vga|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga|v_count\(2),
	datad => VCC,
	cin => \vga|Add0~3\,
	combout => \vga|Add0~4_combout\,
	cout => \vga|Add0~5\);

-- Location: LCCOMB_X52_Y21_N2
\vga|Equal1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga|Equal1~2_combout\ = (\vga|v_count\(2) & (!\vga|v_count\(0) & (\vga|v_count\(3) & \vga|v_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|v_count\(2),
	datab => \vga|v_count\(0),
	datac => \vga|v_count\(3),
	datad => \vga|v_count\(9),
	combout => \vga|Equal1~2_combout\);

-- Location: LCCOMB_X51_Y21_N26
\vga|v_count~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga|v_count~1_combout\ = (\vga|Add0~4_combout\ & (((!\vga|Equal1~2_combout\) # (!\vga|Equal1~0_combout\)) # (!\vga|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|Equal1~1_combout\,
	datab => \vga|Equal1~0_combout\,
	datac => \vga|Add0~4_combout\,
	datad => \vga|Equal1~2_combout\,
	combout => \vga|v_count~1_combout\);

-- Location: FF_X51_Y21_N27
\vga|v_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga|clk_b~clkctrl_outclk\,
	d => \vga|v_count~1_combout\,
	ena => \vga|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|v_count\(2));

-- Location: LCCOMB_X52_Y21_N10
\vga|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga|Add0~6_combout\ = (\vga|v_count\(3) & (!\vga|Add0~5\)) # (!\vga|v_count\(3) & ((\vga|Add0~5\) # (GND)))
-- \vga|Add0~7\ = CARRY((!\vga|Add0~5\) # (!\vga|v_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga|v_count\(3),
	datad => VCC,
	cin => \vga|Add0~5\,
	combout => \vga|Add0~6_combout\,
	cout => \vga|Add0~7\);

-- Location: LCCOMB_X51_Y21_N0
\vga|v_count~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga|v_count~2_combout\ = (\vga|Add0~6_combout\ & (((!\vga|Equal1~2_combout\) # (!\vga|Equal1~0_combout\)) # (!\vga|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|Equal1~1_combout\,
	datab => \vga|Equal1~0_combout\,
	datac => \vga|Add0~6_combout\,
	datad => \vga|Equal1~2_combout\,
	combout => \vga|v_count~2_combout\);

-- Location: FF_X51_Y21_N1
\vga|v_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga|clk_b~clkctrl_outclk\,
	d => \vga|v_count~2_combout\,
	ena => \vga|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|v_count\(3));

-- Location: LCCOMB_X52_Y21_N12
\vga|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga|Add0~8_combout\ = (\vga|v_count\(4) & (\vga|Add0~7\ $ (GND))) # (!\vga|v_count\(4) & (!\vga|Add0~7\ & VCC))
-- \vga|Add0~9\ = CARRY((\vga|v_count\(4) & !\vga|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga|v_count\(4),
	datad => VCC,
	cin => \vga|Add0~7\,
	combout => \vga|Add0~8_combout\,
	cout => \vga|Add0~9\);

-- Location: FF_X52_Y21_N13
\vga|v_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga|clk_b~clkctrl_outclk\,
	d => \vga|Add0~8_combout\,
	ena => \vga|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|v_count\(4));

-- Location: LCCOMB_X52_Y21_N14
\vga|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga|Add0~10_combout\ = (\vga|v_count\(5) & (!\vga|Add0~9\)) # (!\vga|v_count\(5) & ((\vga|Add0~9\) # (GND)))
-- \vga|Add0~11\ = CARRY((!\vga|Add0~9\) # (!\vga|v_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga|v_count\(5),
	datad => VCC,
	cin => \vga|Add0~9\,
	combout => \vga|Add0~10_combout\,
	cout => \vga|Add0~11\);

-- Location: FF_X52_Y21_N15
\vga|v_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga|clk_b~clkctrl_outclk\,
	d => \vga|Add0~10_combout\,
	ena => \vga|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|v_count\(5));

-- Location: LCCOMB_X52_Y21_N16
\vga|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga|Add0~12_combout\ = (\vga|v_count\(6) & (\vga|Add0~11\ $ (GND))) # (!\vga|v_count\(6) & (!\vga|Add0~11\ & VCC))
-- \vga|Add0~13\ = CARRY((\vga|v_count\(6) & !\vga|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga|v_count\(6),
	datad => VCC,
	cin => \vga|Add0~11\,
	combout => \vga|Add0~12_combout\,
	cout => \vga|Add0~13\);

-- Location: FF_X52_Y21_N17
\vga|v_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga|clk_b~clkctrl_outclk\,
	d => \vga|Add0~12_combout\,
	ena => \vga|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|v_count\(6));

-- Location: LCCOMB_X52_Y21_N18
\vga|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga|Add0~14_combout\ = (\vga|v_count\(7) & (!\vga|Add0~13\)) # (!\vga|v_count\(7) & ((\vga|Add0~13\) # (GND)))
-- \vga|Add0~15\ = CARRY((!\vga|Add0~13\) # (!\vga|v_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga|v_count\(7),
	datad => VCC,
	cin => \vga|Add0~13\,
	combout => \vga|Add0~14_combout\,
	cout => \vga|Add0~15\);

-- Location: FF_X52_Y21_N19
\vga|v_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga|clk_b~clkctrl_outclk\,
	d => \vga|Add0~14_combout\,
	ena => \vga|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|v_count\(7));

-- Location: LCCOMB_X52_Y21_N20
\vga|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga|Add0~16_combout\ = (\vga|v_count\(8) & (\vga|Add0~15\ $ (GND))) # (!\vga|v_count\(8) & (!\vga|Add0~15\ & VCC))
-- \vga|Add0~17\ = CARRY((\vga|v_count\(8) & !\vga|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga|v_count\(8),
	datad => VCC,
	cin => \vga|Add0~15\,
	combout => \vga|Add0~16_combout\,
	cout => \vga|Add0~17\);

-- Location: FF_X52_Y21_N21
\vga|v_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga|clk_b~clkctrl_outclk\,
	d => \vga|Add0~16_combout\,
	ena => \vga|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|v_count\(8));

-- Location: LCCOMB_X52_Y21_N24
\vga|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga|Equal1~0_combout\ = (!\vga|v_count\(7) & (!\vga|v_count\(6) & (!\vga|v_count\(5) & !\vga|v_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|v_count\(7),
	datab => \vga|v_count\(6),
	datac => \vga|v_count\(5),
	datad => \vga|v_count\(8),
	combout => \vga|Equal1~0_combout\);

-- Location: LCCOMB_X51_Y21_N4
\vga|v_count~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga|v_count~3_combout\ = (\vga|Add0~0_combout\ & (((!\vga|Equal1~2_combout\) # (!\vga|Equal1~1_combout\)) # (!\vga|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|Add0~0_combout\,
	datab => \vga|Equal1~0_combout\,
	datac => \vga|Equal1~1_combout\,
	datad => \vga|Equal1~2_combout\,
	combout => \vga|v_count~3_combout\);

-- Location: FF_X51_Y21_N5
\vga|v_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga|clk_b~clkctrl_outclk\,
	d => \vga|v_count~3_combout\,
	ena => \vga|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|v_count\(0));

-- Location: FF_X52_Y21_N7
\vga|v_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga|clk_b~clkctrl_outclk\,
	d => \vga|Add0~2_combout\,
	ena => \vga|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|v_count\(1));

-- Location: LCCOMB_X52_Y21_N26
\vga|Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga|Equal1~1_combout\ = (!\vga|v_count\(1) & !\vga|v_count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|v_count\(1),
	datad => \vga|v_count\(4),
	combout => \vga|Equal1~1_combout\);

-- Location: LCCOMB_X52_Y21_N22
\vga|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga|Add0~18_combout\ = \vga|v_count\(9) $ (\vga|Add0~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga|v_count\(9),
	cin => \vga|Add0~17\,
	combout => \vga|Add0~18_combout\);

-- Location: LCCOMB_X52_Y21_N30
\vga|v_count~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga|v_count~0_combout\ = (\vga|Add0~18_combout\ & (((!\vga|Equal1~0_combout\) # (!\vga|Equal1~2_combout\)) # (!\vga|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|Equal1~1_combout\,
	datab => \vga|Equal1~2_combout\,
	datac => \vga|Add0~18_combout\,
	datad => \vga|Equal1~0_combout\,
	combout => \vga|v_count~0_combout\);

-- Location: FF_X52_Y21_N31
\vga|v_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga|clk_b~clkctrl_outclk\,
	d => \vga|v_count~0_combout\,
	ena => \vga|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|v_count\(9));

-- Location: LCCOMB_X51_Y21_N2
\vga|LessThan4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga|LessThan4~0_combout\ = (!\vga|v_count\(2) & !\vga|v_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga|v_count\(2),
	datad => \vga|v_count\(3),
	combout => \vga|LessThan4~0_combout\);

-- Location: LCCOMB_X52_Y21_N28
\vga|LessThan1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga|LessThan1~0_combout\ = (\vga|v_count\(9)) # (((!\vga|LessThan4~0_combout\) # (!\vga|Equal1~1_combout\)) # (!\vga|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|v_count\(9),
	datab => \vga|Equal1~0_combout\,
	datac => \vga|Equal1~1_combout\,
	datad => \vga|LessThan4~0_combout\,
	combout => \vga|LessThan1~0_combout\);

-- Location: FF_X52_Y21_N29
\vga|Vsync_VGA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga|clk_b~clkctrl_outclk\,
	d => \vga|LessThan1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|Vsync_VGA~q\);

-- Location: LCCOMB_X51_Y21_N30
\vga|LessThan4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga|LessThan4~1_combout\ = (!\vga|v_count\(4) & (\vga|LessThan4~0_combout\ & ((!\vga|v_count\(0)) # (!\vga|v_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|v_count\(1),
	datab => \vga|v_count\(0),
	datac => \vga|v_count\(4),
	datad => \vga|LessThan4~0_combout\,
	combout => \vga|LessThan4~1_combout\);

-- Location: LCCOMB_X51_Y21_N28
\vga|LessThan5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga|LessThan5~0_combout\ = ((\vga|LessThan4~1_combout\ & \vga|Equal1~0_combout\)) # (!\vga|v_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|v_count\(9),
	datac => \vga|LessThan4~1_combout\,
	datad => \vga|Equal1~0_combout\,
	combout => \vga|LessThan5~0_combout\);

-- Location: LCCOMB_X52_Y21_N0
\vga|LessThan4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga|LessThan4~2_combout\ = (!\vga|v_count\(9) & (!\vga|v_count\(6) & (!\vga|v_count\(7) & !\vga|v_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|v_count\(9),
	datab => \vga|v_count\(6),
	datac => \vga|v_count\(7),
	datad => \vga|v_count\(8),
	combout => \vga|LessThan4~2_combout\);

-- Location: LCCOMB_X50_Y21_N24
\vga|posiciones~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga|posiciones~2_combout\ = (\vga|h_count\(6)) # ((\vga|h_count\(4)) # (\vga|h_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|h_count\(6),
	datac => \vga|h_count\(4),
	datad => \vga|h_count\(5),
	combout => \vga|posiciones~2_combout\);

-- Location: LCCOMB_X51_Y21_N10
\vga|posiciones~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga|posiciones~3_combout\ = (\vga|h_count\(9) & (((!\vga|h_count\(7) & !\vga|posiciones~2_combout\)) # (!\vga|h_count\(8)))) # (!\vga|h_count\(9) & ((\vga|h_count\(8)) # ((\vga|h_count\(7) & \vga|posiciones~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111001111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|h_count\(7),
	datab => \vga|h_count\(9),
	datac => \vga|h_count\(8),
	datad => \vga|posiciones~2_combout\,
	combout => \vga|posiciones~3_combout\);

-- Location: LCCOMB_X51_Y21_N24
\vga|posiciones~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga|posiciones~4_combout\ = (\vga|posiciones~3_combout\ & (((!\vga|LessThan4~1_combout\ & \vga|v_count\(5))) # (!\vga|LessThan4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|LessThan4~1_combout\,
	datab => \vga|v_count\(5),
	datac => \vga|LessThan4~2_combout\,
	datad => \vga|posiciones~3_combout\,
	combout => \vga|posiciones~4_combout\);

-- Location: LCCOMB_X52_Y19_N6
\vga|pos_v[0]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga|pos_v[0]~9_combout\ = \vga|v_count\(0) $ (VCC)
-- \vga|pos_v[0]~10\ = CARRY(\vga|v_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|v_count\(0),
	datad => VCC,
	combout => \vga|pos_v[0]~9_combout\,
	cout => \vga|pos_v[0]~10\);

-- Location: LCCOMB_X52_Y19_N8
\vga|pos_v[1]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga|pos_v[1]~11_combout\ = (\vga|v_count\(1) & (!\vga|pos_v[0]~10\)) # (!\vga|v_count\(1) & ((\vga|pos_v[0]~10\) # (GND)))
-- \vga|pos_v[1]~12\ = CARRY((!\vga|pos_v[0]~10\) # (!\vga|v_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga|v_count\(1),
	datad => VCC,
	cin => \vga|pos_v[0]~10\,
	combout => \vga|pos_v[1]~11_combout\,
	cout => \vga|pos_v[1]~12\);

-- Location: LCCOMB_X52_Y19_N10
\vga|pos_v[2]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga|pos_v[2]~13_combout\ = (\vga|v_count\(2) & ((GND) # (!\vga|pos_v[1]~12\))) # (!\vga|v_count\(2) & (\vga|pos_v[1]~12\ $ (GND)))
-- \vga|pos_v[2]~14\ = CARRY((\vga|v_count\(2)) # (!\vga|pos_v[1]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga|v_count\(2),
	datad => VCC,
	cin => \vga|pos_v[1]~12\,
	combout => \vga|pos_v[2]~13_combout\,
	cout => \vga|pos_v[2]~14\);

-- Location: LCCOMB_X52_Y19_N12
\vga|pos_v[3]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga|pos_v[3]~15_combout\ = (\vga|v_count\(3) & (\vga|pos_v[2]~14\ & VCC)) # (!\vga|v_count\(3) & (!\vga|pos_v[2]~14\))
-- \vga|pos_v[3]~16\ = CARRY((!\vga|v_count\(3) & !\vga|pos_v[2]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga|v_count\(3),
	datad => VCC,
	cin => \vga|pos_v[2]~14\,
	combout => \vga|pos_v[3]~15_combout\,
	cout => \vga|pos_v[3]~16\);

-- Location: LCCOMB_X52_Y19_N14
\vga|pos_v[4]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga|pos_v[4]~17_combout\ = (\vga|v_count\(4) & ((GND) # (!\vga|pos_v[3]~16\))) # (!\vga|v_count\(4) & (\vga|pos_v[3]~16\ $ (GND)))
-- \vga|pos_v[4]~18\ = CARRY((\vga|v_count\(4)) # (!\vga|pos_v[3]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga|v_count\(4),
	datad => VCC,
	cin => \vga|pos_v[3]~16\,
	combout => \vga|pos_v[4]~17_combout\,
	cout => \vga|pos_v[4]~18\);

-- Location: LCCOMB_X52_Y19_N16
\vga|pos_v[5]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga|pos_v[5]~19_combout\ = (\vga|v_count\(5) & (!\vga|pos_v[4]~18\)) # (!\vga|v_count\(5) & ((\vga|pos_v[4]~18\) # (GND)))
-- \vga|pos_v[5]~20\ = CARRY((!\vga|pos_v[4]~18\) # (!\vga|v_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga|v_count\(5),
	datad => VCC,
	cin => \vga|pos_v[4]~18\,
	combout => \vga|pos_v[5]~19_combout\,
	cout => \vga|pos_v[5]~20\);

-- Location: LCCOMB_X52_Y19_N18
\vga|pos_v[6]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga|pos_v[6]~21_combout\ = (\vga|v_count\(6) & ((GND) # (!\vga|pos_v[5]~20\))) # (!\vga|v_count\(6) & (\vga|pos_v[5]~20\ $ (GND)))
-- \vga|pos_v[6]~22\ = CARRY((\vga|v_count\(6)) # (!\vga|pos_v[5]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga|v_count\(6),
	datad => VCC,
	cin => \vga|pos_v[5]~20\,
	combout => \vga|pos_v[6]~21_combout\,
	cout => \vga|pos_v[6]~22\);

-- Location: LCCOMB_X52_Y19_N20
\vga|pos_v[7]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga|pos_v[7]~23_combout\ = (\vga|v_count\(7) & (\vga|pos_v[6]~22\ & VCC)) # (!\vga|v_count\(7) & (!\vga|pos_v[6]~22\))
-- \vga|pos_v[7]~24\ = CARRY((!\vga|v_count\(7) & !\vga|pos_v[6]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga|v_count\(7),
	datad => VCC,
	cin => \vga|pos_v[6]~22\,
	combout => \vga|pos_v[7]~23_combout\,
	cout => \vga|pos_v[7]~24\);

-- Location: LCCOMB_X52_Y19_N22
\vga|pos_v[8]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga|pos_v[8]~25_combout\ = \vga|pos_v[7]~24\ $ (\vga|v_count\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \vga|v_count\(8),
	cin => \vga|pos_v[7]~24\,
	combout => \vga|pos_v[8]~25_combout\);

-- Location: LCCOMB_X51_Y21_N6
\vga|posiciones~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga|posiciones~5_combout\ = ((\vga|v_count\(9) & ((!\vga|Equal1~0_combout\) # (!\vga|LessThan4~1_combout\)))) # (!\vga|posiciones~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|LessThan4~1_combout\,
	datab => \vga|Equal1~0_combout\,
	datac => \vga|v_count\(9),
	datad => \vga|posiciones~4_combout\,
	combout => \vga|posiciones~5_combout\);

-- Location: FF_X52_Y19_N23
\vga|pos_v[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga|clk_b~clkctrl_outclk\,
	d => \vga|pos_v[8]~25_combout\,
	sclr => \vga|posiciones~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|pos_v\(8));

-- Location: FF_X52_Y19_N21
\vga|pos_v[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga|clk_b~clkctrl_outclk\,
	d => \vga|pos_v[7]~23_combout\,
	sclr => \vga|posiciones~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|pos_v\(7));

-- Location: FF_X52_Y19_N19
\vga|pos_v[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga|clk_b~clkctrl_outclk\,
	d => \vga|pos_v[6]~21_combout\,
	sclr => \vga|posiciones~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|pos_v\(6));

-- Location: FF_X51_Y19_N7
\vga|pos_v[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga|clk_b~clkctrl_outclk\,
	asdata => \vga|pos_v[5]~19_combout\,
	sclr => \vga|posiciones~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|pos_v\(5));

-- Location: FF_X51_Y19_N9
\vga|pos_v[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga|clk_b~clkctrl_outclk\,
	asdata => \vga|pos_v[4]~17_combout\,
	sclr => \vga|posiciones~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|pos_v\(4));

-- Location: FF_X51_Y19_N11
\vga|pos_v[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga|clk_b~clkctrl_outclk\,
	asdata => \vga|pos_v[3]~15_combout\,
	sclr => \vga|posiciones~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|pos_v\(3));

-- Location: FF_X51_Y19_N1
\vga|pos_v[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga|clk_b~clkctrl_outclk\,
	asdata => \vga|pos_v[2]~13_combout\,
	sclr => \vga|posiciones~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|pos_v\(2));

-- Location: FF_X51_Y19_N3
\vga|pos_v[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga|clk_b~clkctrl_outclk\,
	asdata => \vga|pos_v[1]~11_combout\,
	sclr => \vga|posiciones~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|pos_v\(1));

-- Location: FF_X51_Y19_N5
\vga|pos_v[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga|clk_b~clkctrl_outclk\,
	asdata => \vga|pos_v[0]~9_combout\,
	sclr => \vga|posiciones~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|pos_v\(0));

-- Location: LCCOMB_X51_Y19_N12
\frame_buffer|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Add1~0_combout\ = (\vga|pos_v\(0) & (\vga|pos_v\(2) $ (VCC))) # (!\vga|pos_v\(0) & (\vga|pos_v\(2) & VCC))
-- \frame_buffer|Add1~1\ = CARRY((\vga|pos_v\(0) & \vga|pos_v\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|pos_v\(0),
	datab => \vga|pos_v\(2),
	datad => VCC,
	combout => \frame_buffer|Add1~0_combout\,
	cout => \frame_buffer|Add1~1\);

-- Location: LCCOMB_X51_Y19_N14
\frame_buffer|Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Add1~2_combout\ = (\vga|pos_v\(3) & ((\vga|pos_v\(1) & (\frame_buffer|Add1~1\ & VCC)) # (!\vga|pos_v\(1) & (!\frame_buffer|Add1~1\)))) # (!\vga|pos_v\(3) & ((\vga|pos_v\(1) & (!\frame_buffer|Add1~1\)) # (!\vga|pos_v\(1) & 
-- ((\frame_buffer|Add1~1\) # (GND)))))
-- \frame_buffer|Add1~3\ = CARRY((\vga|pos_v\(3) & (!\vga|pos_v\(1) & !\frame_buffer|Add1~1\)) # (!\vga|pos_v\(3) & ((!\frame_buffer|Add1~1\) # (!\vga|pos_v\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga|pos_v\(3),
	datab => \vga|pos_v\(1),
	datad => VCC,
	cin => \frame_buffer|Add1~1\,
	combout => \frame_buffer|Add1~2_combout\,
	cout => \frame_buffer|Add1~3\);

-- Location: LCCOMB_X51_Y19_N16
\frame_buffer|Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Add1~4_combout\ = ((\vga|pos_v\(4) $ (\vga|pos_v\(2) $ (!\frame_buffer|Add1~3\)))) # (GND)
-- \frame_buffer|Add1~5\ = CARRY((\vga|pos_v\(4) & ((\vga|pos_v\(2)) # (!\frame_buffer|Add1~3\))) # (!\vga|pos_v\(4) & (\vga|pos_v\(2) & !\frame_buffer|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga|pos_v\(4),
	datab => \vga|pos_v\(2),
	datad => VCC,
	cin => \frame_buffer|Add1~3\,
	combout => \frame_buffer|Add1~4_combout\,
	cout => \frame_buffer|Add1~5\);

-- Location: LCCOMB_X51_Y19_N18
\frame_buffer|Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Add1~6_combout\ = (\vga|pos_v\(3) & ((\vga|pos_v\(5) & (\frame_buffer|Add1~5\ & VCC)) # (!\vga|pos_v\(5) & (!\frame_buffer|Add1~5\)))) # (!\vga|pos_v\(3) & ((\vga|pos_v\(5) & (!\frame_buffer|Add1~5\)) # (!\vga|pos_v\(5) & 
-- ((\frame_buffer|Add1~5\) # (GND)))))
-- \frame_buffer|Add1~7\ = CARRY((\vga|pos_v\(3) & (!\vga|pos_v\(5) & !\frame_buffer|Add1~5\)) # (!\vga|pos_v\(3) & ((!\frame_buffer|Add1~5\) # (!\vga|pos_v\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga|pos_v\(3),
	datab => \vga|pos_v\(5),
	datad => VCC,
	cin => \frame_buffer|Add1~5\,
	combout => \frame_buffer|Add1~6_combout\,
	cout => \frame_buffer|Add1~7\);

-- Location: LCCOMB_X51_Y19_N20
\frame_buffer|Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Add1~8_combout\ = ((\vga|pos_v\(4) $ (\vga|pos_v\(6) $ (!\frame_buffer|Add1~7\)))) # (GND)
-- \frame_buffer|Add1~9\ = CARRY((\vga|pos_v\(4) & ((\vga|pos_v\(6)) # (!\frame_buffer|Add1~7\))) # (!\vga|pos_v\(4) & (\vga|pos_v\(6) & !\frame_buffer|Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga|pos_v\(4),
	datab => \vga|pos_v\(6),
	datad => VCC,
	cin => \frame_buffer|Add1~7\,
	combout => \frame_buffer|Add1~8_combout\,
	cout => \frame_buffer|Add1~9\);

-- Location: LCCOMB_X51_Y19_N22
\frame_buffer|Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Add1~10_combout\ = (\vga|pos_v\(7) & ((\vga|pos_v\(5) & (\frame_buffer|Add1~9\ & VCC)) # (!\vga|pos_v\(5) & (!\frame_buffer|Add1~9\)))) # (!\vga|pos_v\(7) & ((\vga|pos_v\(5) & (!\frame_buffer|Add1~9\)) # (!\vga|pos_v\(5) & 
-- ((\frame_buffer|Add1~9\) # (GND)))))
-- \frame_buffer|Add1~11\ = CARRY((\vga|pos_v\(7) & (!\vga|pos_v\(5) & !\frame_buffer|Add1~9\)) # (!\vga|pos_v\(7) & ((!\frame_buffer|Add1~9\) # (!\vga|pos_v\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga|pos_v\(7),
	datab => \vga|pos_v\(5),
	datad => VCC,
	cin => \frame_buffer|Add1~9\,
	combout => \frame_buffer|Add1~10_combout\,
	cout => \frame_buffer|Add1~11\);

-- Location: LCCOMB_X51_Y19_N24
\frame_buffer|Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Add1~12_combout\ = ((\vga|pos_v\(8) $ (\vga|pos_v\(6) $ (!\frame_buffer|Add1~11\)))) # (GND)
-- \frame_buffer|Add1~13\ = CARRY((\vga|pos_v\(8) & ((\vga|pos_v\(6)) # (!\frame_buffer|Add1~11\))) # (!\vga|pos_v\(8) & (\vga|pos_v\(6) & !\frame_buffer|Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga|pos_v\(8),
	datab => \vga|pos_v\(6),
	datad => VCC,
	cin => \frame_buffer|Add1~11\,
	combout => \frame_buffer|Add1~12_combout\,
	cout => \frame_buffer|Add1~13\);

-- Location: LCCOMB_X51_Y19_N26
\frame_buffer|Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Add1~14_combout\ = (\vga|pos_v\(7) & (!\frame_buffer|Add1~13\)) # (!\vga|pos_v\(7) & ((\frame_buffer|Add1~13\) # (GND)))
-- \frame_buffer|Add1~15\ = CARRY((!\frame_buffer|Add1~13\) # (!\vga|pos_v\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga|pos_v\(7),
	datad => VCC,
	cin => \frame_buffer|Add1~13\,
	combout => \frame_buffer|Add1~14_combout\,
	cout => \frame_buffer|Add1~15\);

-- Location: LCCOMB_X51_Y19_N28
\frame_buffer|Add1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Add1~16_combout\ = (\vga|pos_v\(8) & (\frame_buffer|Add1~15\ $ (GND))) # (!\vga|pos_v\(8) & (!\frame_buffer|Add1~15\ & VCC))
-- \frame_buffer|Add1~17\ = CARRY((\vga|pos_v\(8) & !\frame_buffer|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga|pos_v\(8),
	datad => VCC,
	cin => \frame_buffer|Add1~15\,
	combout => \frame_buffer|Add1~16_combout\,
	cout => \frame_buffer|Add1~17\);

-- Location: LCCOMB_X51_Y21_N12
\vga|pos_h[4]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga|pos_h[4]~10_combout\ = \vga|h_count\(4) $ (VCC)
-- \vga|pos_h[4]~11\ = CARRY(\vga|h_count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|h_count\(4),
	datad => VCC,
	combout => \vga|pos_h[4]~10_combout\,
	cout => \vga|pos_h[4]~11\);

-- Location: LCCOMB_X51_Y21_N14
\vga|pos_h[5]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga|pos_h[5]~12_combout\ = (\vga|h_count\(5) & (\vga|pos_h[4]~11\ & VCC)) # (!\vga|h_count\(5) & (!\vga|pos_h[4]~11\))
-- \vga|pos_h[5]~13\ = CARRY((!\vga|h_count\(5) & !\vga|pos_h[4]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga|h_count\(5),
	datad => VCC,
	cin => \vga|pos_h[4]~11\,
	combout => \vga|pos_h[5]~12_combout\,
	cout => \vga|pos_h[5]~13\);

-- Location: LCCOMB_X51_Y21_N16
\vga|pos_h[6]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga|pos_h[6]~14_combout\ = (\vga|h_count\(6) & ((GND) # (!\vga|pos_h[5]~13\))) # (!\vga|h_count\(6) & (\vga|pos_h[5]~13\ $ (GND)))
-- \vga|pos_h[6]~15\ = CARRY((\vga|h_count\(6)) # (!\vga|pos_h[5]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga|h_count\(6),
	datad => VCC,
	cin => \vga|pos_h[5]~13\,
	combout => \vga|pos_h[6]~14_combout\,
	cout => \vga|pos_h[6]~15\);

-- Location: LCCOMB_X51_Y21_N18
\vga|pos_h[7]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga|pos_h[7]~16_combout\ = (\vga|h_count\(7) & (!\vga|pos_h[6]~15\)) # (!\vga|h_count\(7) & ((\vga|pos_h[6]~15\) # (GND)))
-- \vga|pos_h[7]~17\ = CARRY((!\vga|pos_h[6]~15\) # (!\vga|h_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga|h_count\(7),
	datad => VCC,
	cin => \vga|pos_h[6]~15\,
	combout => \vga|pos_h[7]~16_combout\,
	cout => \vga|pos_h[7]~17\);

-- Location: LCCOMB_X51_Y21_N20
\vga|pos_h[8]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga|pos_h[8]~18_combout\ = (\vga|h_count\(8) & ((GND) # (!\vga|pos_h[7]~17\))) # (!\vga|h_count\(8) & (\vga|pos_h[7]~17\ $ (GND)))
-- \vga|pos_h[8]~19\ = CARRY((\vga|h_count\(8)) # (!\vga|pos_h[7]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga|h_count\(8),
	datad => VCC,
	cin => \vga|pos_h[7]~17\,
	combout => \vga|pos_h[8]~18_combout\,
	cout => \vga|pos_h[8]~19\);

-- Location: LCCOMB_X51_Y21_N22
\vga|pos_h[9]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga|pos_h[9]~20_combout\ = \vga|pos_h[8]~19\ $ (!\vga|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \vga|h_count\(9),
	cin => \vga|pos_h[8]~19\,
	combout => \vga|pos_h[9]~20_combout\);

-- Location: FF_X51_Y21_N23
\vga|pos_h[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga|clk_b~clkctrl_outclk\,
	d => \vga|pos_h[9]~20_combout\,
	sclr => \vga|posiciones~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|pos_h\(9));

-- Location: FF_X51_Y21_N21
\vga|pos_h[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga|clk_b~clkctrl_outclk\,
	d => \vga|pos_h[8]~18_combout\,
	sclr => \vga|posiciones~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|pos_h\(8));

-- Location: FF_X51_Y21_N19
\vga|pos_h[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga|clk_b~clkctrl_outclk\,
	d => \vga|pos_h[7]~16_combout\,
	sclr => \vga|posiciones~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|pos_h\(7));

-- Location: LCCOMB_X50_Y19_N6
\frame_buffer|s_rdadd[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|s_rdadd[7]~0_combout\ = (\vga|pos_h\(7) & (\vga|pos_v\(0) $ (VCC))) # (!\vga|pos_h\(7) & (\vga|pos_v\(0) & VCC))
-- \frame_buffer|s_rdadd[7]~1\ = CARRY((\vga|pos_h\(7) & \vga|pos_v\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|pos_h\(7),
	datab => \vga|pos_v\(0),
	datad => VCC,
	combout => \frame_buffer|s_rdadd[7]~0_combout\,
	cout => \frame_buffer|s_rdadd[7]~1\);

-- Location: LCCOMB_X50_Y19_N8
\frame_buffer|s_rdadd[8]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|s_rdadd[8]~2_combout\ = (\vga|pos_v\(1) & ((\vga|pos_h\(8) & (\frame_buffer|s_rdadd[7]~1\ & VCC)) # (!\vga|pos_h\(8) & (!\frame_buffer|s_rdadd[7]~1\)))) # (!\vga|pos_v\(1) & ((\vga|pos_h\(8) & (!\frame_buffer|s_rdadd[7]~1\)) # 
-- (!\vga|pos_h\(8) & ((\frame_buffer|s_rdadd[7]~1\) # (GND)))))
-- \frame_buffer|s_rdadd[8]~3\ = CARRY((\vga|pos_v\(1) & (!\vga|pos_h\(8) & !\frame_buffer|s_rdadd[7]~1\)) # (!\vga|pos_v\(1) & ((!\frame_buffer|s_rdadd[7]~1\) # (!\vga|pos_h\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga|pos_v\(1),
	datab => \vga|pos_h\(8),
	datad => VCC,
	cin => \frame_buffer|s_rdadd[7]~1\,
	combout => \frame_buffer|s_rdadd[8]~2_combout\,
	cout => \frame_buffer|s_rdadd[8]~3\);

-- Location: LCCOMB_X50_Y19_N10
\frame_buffer|s_rdadd[9]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|s_rdadd[9]~4_combout\ = ((\vga|pos_h\(9) $ (\frame_buffer|Add1~0_combout\ $ (!\frame_buffer|s_rdadd[8]~3\)))) # (GND)
-- \frame_buffer|s_rdadd[9]~5\ = CARRY((\vga|pos_h\(9) & ((\frame_buffer|Add1~0_combout\) # (!\frame_buffer|s_rdadd[8]~3\))) # (!\vga|pos_h\(9) & (\frame_buffer|Add1~0_combout\ & !\frame_buffer|s_rdadd[8]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga|pos_h\(9),
	datab => \frame_buffer|Add1~0_combout\,
	datad => VCC,
	cin => \frame_buffer|s_rdadd[8]~3\,
	combout => \frame_buffer|s_rdadd[9]~4_combout\,
	cout => \frame_buffer|s_rdadd[9]~5\);

-- Location: LCCOMB_X50_Y19_N12
\frame_buffer|s_rdadd[10]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|s_rdadd[10]~6_combout\ = (\frame_buffer|Add1~2_combout\ & (!\frame_buffer|s_rdadd[9]~5\)) # (!\frame_buffer|Add1~2_combout\ & ((\frame_buffer|s_rdadd[9]~5\) # (GND)))
-- \frame_buffer|s_rdadd[10]~7\ = CARRY((!\frame_buffer|s_rdadd[9]~5\) # (!\frame_buffer|Add1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \frame_buffer|Add1~2_combout\,
	datad => VCC,
	cin => \frame_buffer|s_rdadd[9]~5\,
	combout => \frame_buffer|s_rdadd[10]~6_combout\,
	cout => \frame_buffer|s_rdadd[10]~7\);

-- Location: LCCOMB_X50_Y19_N14
\frame_buffer|s_rdadd[11]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|s_rdadd[11]~8_combout\ = (\frame_buffer|Add1~4_combout\ & (\frame_buffer|s_rdadd[10]~7\ $ (GND))) # (!\frame_buffer|Add1~4_combout\ & (!\frame_buffer|s_rdadd[10]~7\ & VCC))
-- \frame_buffer|s_rdadd[11]~9\ = CARRY((\frame_buffer|Add1~4_combout\ & !\frame_buffer|s_rdadd[10]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \frame_buffer|Add1~4_combout\,
	datad => VCC,
	cin => \frame_buffer|s_rdadd[10]~7\,
	combout => \frame_buffer|s_rdadd[11]~8_combout\,
	cout => \frame_buffer|s_rdadd[11]~9\);

-- Location: LCCOMB_X50_Y19_N16
\frame_buffer|s_rdadd[12]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|s_rdadd[12]~10_combout\ = (\frame_buffer|Add1~6_combout\ & (!\frame_buffer|s_rdadd[11]~9\)) # (!\frame_buffer|Add1~6_combout\ & ((\frame_buffer|s_rdadd[11]~9\) # (GND)))
-- \frame_buffer|s_rdadd[12]~11\ = CARRY((!\frame_buffer|s_rdadd[11]~9\) # (!\frame_buffer|Add1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \frame_buffer|Add1~6_combout\,
	datad => VCC,
	cin => \frame_buffer|s_rdadd[11]~9\,
	combout => \frame_buffer|s_rdadd[12]~10_combout\,
	cout => \frame_buffer|s_rdadd[12]~11\);

-- Location: LCCOMB_X50_Y19_N18
\frame_buffer|s_rdadd[13]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|s_rdadd[13]~12_combout\ = (\frame_buffer|Add1~8_combout\ & (\frame_buffer|s_rdadd[12]~11\ $ (GND))) # (!\frame_buffer|Add1~8_combout\ & (!\frame_buffer|s_rdadd[12]~11\ & VCC))
-- \frame_buffer|s_rdadd[13]~13\ = CARRY((\frame_buffer|Add1~8_combout\ & !\frame_buffer|s_rdadd[12]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \frame_buffer|Add1~8_combout\,
	datad => VCC,
	cin => \frame_buffer|s_rdadd[12]~11\,
	combout => \frame_buffer|s_rdadd[13]~12_combout\,
	cout => \frame_buffer|s_rdadd[13]~13\);

-- Location: LCCOMB_X50_Y19_N20
\frame_buffer|s_rdadd[14]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|s_rdadd[14]~14_combout\ = (\frame_buffer|Add1~10_combout\ & (!\frame_buffer|s_rdadd[13]~13\)) # (!\frame_buffer|Add1~10_combout\ & ((\frame_buffer|s_rdadd[13]~13\) # (GND)))
-- \frame_buffer|s_rdadd[14]~15\ = CARRY((!\frame_buffer|s_rdadd[13]~13\) # (!\frame_buffer|Add1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \frame_buffer|Add1~10_combout\,
	datad => VCC,
	cin => \frame_buffer|s_rdadd[13]~13\,
	combout => \frame_buffer|s_rdadd[14]~14_combout\,
	cout => \frame_buffer|s_rdadd[14]~15\);

-- Location: LCCOMB_X50_Y19_N22
\frame_buffer|s_rdadd[15]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|s_rdadd[15]~16_combout\ = (\frame_buffer|Add1~12_combout\ & (\frame_buffer|s_rdadd[14]~15\ $ (GND))) # (!\frame_buffer|Add1~12_combout\ & (!\frame_buffer|s_rdadd[14]~15\ & VCC))
-- \frame_buffer|s_rdadd[15]~17\ = CARRY((\frame_buffer|Add1~12_combout\ & !\frame_buffer|s_rdadd[14]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \frame_buffer|Add1~12_combout\,
	datad => VCC,
	cin => \frame_buffer|s_rdadd[14]~15\,
	combout => \frame_buffer|s_rdadd[15]~16_combout\,
	cout => \frame_buffer|s_rdadd[15]~17\);

-- Location: LCCOMB_X50_Y19_N24
\frame_buffer|s_rdadd[16]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|s_rdadd[16]~18_combout\ = (\frame_buffer|Add1~14_combout\ & (!\frame_buffer|s_rdadd[15]~17\)) # (!\frame_buffer|Add1~14_combout\ & ((\frame_buffer|s_rdadd[15]~17\) # (GND)))
-- \frame_buffer|s_rdadd[16]~19\ = CARRY((!\frame_buffer|s_rdadd[15]~17\) # (!\frame_buffer|Add1~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \frame_buffer|Add1~14_combout\,
	datad => VCC,
	cin => \frame_buffer|s_rdadd[15]~17\,
	combout => \frame_buffer|s_rdadd[16]~18_combout\,
	cout => \frame_buffer|s_rdadd[16]~19\);

-- Location: LCCOMB_X50_Y19_N26
\frame_buffer|s_rdadd[17]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|s_rdadd[17]~20_combout\ = (\frame_buffer|Add1~16_combout\ & (\frame_buffer|s_rdadd[16]~19\ $ (GND))) # (!\frame_buffer|Add1~16_combout\ & (!\frame_buffer|s_rdadd[16]~19\ & VCC))
-- \frame_buffer|s_rdadd[17]~21\ = CARRY((\frame_buffer|Add1~16_combout\ & !\frame_buffer|s_rdadd[16]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \frame_buffer|Add1~16_combout\,
	datad => VCC,
	cin => \frame_buffer|s_rdadd[16]~19\,
	combout => \frame_buffer|s_rdadd[17]~20_combout\,
	cout => \frame_buffer|s_rdadd[17]~21\);

-- Location: FF_X50_Y19_N27
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|address_reg_b[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \frame_buffer|s_rdadd[17]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|address_reg_b\(4));

-- Location: FF_X50_Y19_N17
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|address_reg_b\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(4));

-- Location: LCCOMB_X51_Y19_N30
\frame_buffer|Add1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Add1~18_combout\ = \frame_buffer|Add1~17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \frame_buffer|Add1~17\,
	combout => \frame_buffer|Add1~18_combout\);

-- Location: LCCOMB_X50_Y19_N28
\frame_buffer|s_rdadd[18]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|s_rdadd[18]~22_combout\ = \frame_buffer|Add1~18_combout\ $ (\frame_buffer|s_rdadd[17]~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \frame_buffer|Add1~18_combout\,
	cin => \frame_buffer|s_rdadd[17]~21\,
	combout => \frame_buffer|s_rdadd[18]~22_combout\);

-- Location: FF_X50_Y19_N29
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|address_reg_b[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \frame_buffer|s_rdadd[18]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|address_reg_b\(5));

-- Location: FF_X50_Y19_N7
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|address_reg_b\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(5));

-- Location: FF_X50_Y19_N25
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|address_reg_b[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \frame_buffer|s_rdadd[16]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|address_reg_b\(3));

-- Location: FF_X50_Y19_N5
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|address_reg_b\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(3));

-- Location: FF_X50_Y19_N23
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|address_reg_b[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \frame_buffer|s_rdadd[15]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|address_reg_b\(2));

-- Location: LCCOMB_X50_Y19_N2
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b[2]~feeder_combout\ = \frame_buffer|Memory_inst|altsyncram_component|auto_generated|address_reg_b\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|address_reg_b\(2),
	combout => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b[2]~feeder_combout\);

-- Location: FF_X50_Y19_N3
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(2));

-- Location: FF_X50_Y19_N21
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|address_reg_b[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \frame_buffer|s_rdadd[14]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|address_reg_b\(1));

-- Location: FF_X50_Y19_N1
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|address_reg_b\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(1));

-- Location: FF_X50_Y19_N19
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|address_reg_b[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \frame_buffer|s_rdadd[13]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|address_reg_b\(0));

-- Location: FF_X50_Y19_N31
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|address_reg_b\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(0));

-- Location: FF_X42_Y3_N9
\frame_buffer|reloj_cam:count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \frame_buffer|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frame_buffer|reloj_cam:count[4]~q\);

-- Location: LCCOMB_X41_Y3_N6
\rx_cam|oclk_r~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_cam|oclk_r~0_combout\ = !\rx_cam|oclk_r~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_cam|oclk_r~q\,
	combout => \rx_cam|oclk_r~0_combout\);

-- Location: FF_X42_Y3_N3
\rx_cam|oclk_r\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rx_cam|oclk_r~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_cam|oclk_r~q\);

-- Location: LCCOMB_X42_Y3_N0
\frame_buffer|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Add0~0_combout\ = \rx_cam|oclk_r~q\ $ (VCC)
-- \frame_buffer|Add0~1\ = CARRY(\rx_cam|oclk_r~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rx_cam|oclk_r~q\,
	datad => VCC,
	combout => \frame_buffer|Add0~0_combout\,
	cout => \frame_buffer|Add0~1\);

-- Location: LCCOMB_X42_Y3_N2
\frame_buffer|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Add0~2_combout\ = (\frame_buffer|reloj_cam:count[1]~q\ & (!\frame_buffer|Add0~1\)) # (!\frame_buffer|reloj_cam:count[1]~q\ & ((\frame_buffer|Add0~1\) # (GND)))
-- \frame_buffer|Add0~3\ = CARRY((!\frame_buffer|Add0~1\) # (!\frame_buffer|reloj_cam:count[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \frame_buffer|reloj_cam:count[1]~q\,
	datad => VCC,
	cin => \frame_buffer|Add0~1\,
	combout => \frame_buffer|Add0~2_combout\,
	cout => \frame_buffer|Add0~3\);

-- Location: FF_X42_Y2_N29
\frame_buffer|reloj_cam:count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \frame_buffer|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frame_buffer|reloj_cam:count[30]~q\);

-- Location: LCCOMB_X42_Y3_N8
\frame_buffer|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Add0~8_combout\ = (\frame_buffer|reloj_cam:count[4]~q\ & (\frame_buffer|Add0~7\ $ (GND))) # (!\frame_buffer|reloj_cam:count[4]~q\ & (!\frame_buffer|Add0~7\ & VCC))
-- \frame_buffer|Add0~9\ = CARRY((\frame_buffer|reloj_cam:count[4]~q\ & !\frame_buffer|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \frame_buffer|reloj_cam:count[4]~q\,
	datad => VCC,
	cin => \frame_buffer|Add0~7\,
	combout => \frame_buffer|Add0~8_combout\,
	cout => \frame_buffer|Add0~9\);

-- Location: LCCOMB_X42_Y3_N10
\frame_buffer|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Add0~10_combout\ = (\frame_buffer|reloj_cam:count[5]~q\ & (!\frame_buffer|Add0~9\)) # (!\frame_buffer|reloj_cam:count[5]~q\ & ((\frame_buffer|Add0~9\) # (GND)))
-- \frame_buffer|Add0~11\ = CARRY((!\frame_buffer|Add0~9\) # (!\frame_buffer|reloj_cam:count[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \frame_buffer|reloj_cam:count[5]~q\,
	datad => VCC,
	cin => \frame_buffer|Add0~9\,
	combout => \frame_buffer|Add0~10_combout\,
	cout => \frame_buffer|Add0~11\);

-- Location: FF_X42_Y3_N11
\frame_buffer|reloj_cam:count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \frame_buffer|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frame_buffer|reloj_cam:count[5]~q\);

-- Location: LCCOMB_X42_Y3_N12
\frame_buffer|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Add0~12_combout\ = (\frame_buffer|reloj_cam:count[6]~q\ & (\frame_buffer|Add0~11\ $ (GND))) # (!\frame_buffer|reloj_cam:count[6]~q\ & (!\frame_buffer|Add0~11\ & VCC))
-- \frame_buffer|Add0~13\ = CARRY((\frame_buffer|reloj_cam:count[6]~q\ & !\frame_buffer|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \frame_buffer|reloj_cam:count[6]~q\,
	datad => VCC,
	cin => \frame_buffer|Add0~11\,
	combout => \frame_buffer|Add0~12_combout\,
	cout => \frame_buffer|Add0~13\);

-- Location: FF_X42_Y3_N13
\frame_buffer|reloj_cam:count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \frame_buffer|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frame_buffer|reloj_cam:count[6]~q\);

-- Location: LCCOMB_X42_Y3_N14
\frame_buffer|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Add0~14_combout\ = (\frame_buffer|reloj_cam:count[7]~q\ & (!\frame_buffer|Add0~13\)) # (!\frame_buffer|reloj_cam:count[7]~q\ & ((\frame_buffer|Add0~13\) # (GND)))
-- \frame_buffer|Add0~15\ = CARRY((!\frame_buffer|Add0~13\) # (!\frame_buffer|reloj_cam:count[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \frame_buffer|reloj_cam:count[7]~q\,
	datad => VCC,
	cin => \frame_buffer|Add0~13\,
	combout => \frame_buffer|Add0~14_combout\,
	cout => \frame_buffer|Add0~15\);

-- Location: FF_X42_Y3_N15
\frame_buffer|reloj_cam:count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \frame_buffer|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frame_buffer|reloj_cam:count[7]~q\);

-- Location: LCCOMB_X42_Y3_N16
\frame_buffer|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Add0~16_combout\ = (\frame_buffer|reloj_cam:count[8]~q\ & (\frame_buffer|Add0~15\ $ (GND))) # (!\frame_buffer|reloj_cam:count[8]~q\ & (!\frame_buffer|Add0~15\ & VCC))
-- \frame_buffer|Add0~17\ = CARRY((\frame_buffer|reloj_cam:count[8]~q\ & !\frame_buffer|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \frame_buffer|reloj_cam:count[8]~q\,
	datad => VCC,
	cin => \frame_buffer|Add0~15\,
	combout => \frame_buffer|Add0~16_combout\,
	cout => \frame_buffer|Add0~17\);

-- Location: FF_X42_Y3_N17
\frame_buffer|reloj_cam:count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \frame_buffer|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frame_buffer|reloj_cam:count[8]~q\);

-- Location: LCCOMB_X42_Y3_N18
\frame_buffer|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Add0~18_combout\ = (\frame_buffer|reloj_cam:count[9]~q\ & (!\frame_buffer|Add0~17\)) # (!\frame_buffer|reloj_cam:count[9]~q\ & ((\frame_buffer|Add0~17\) # (GND)))
-- \frame_buffer|Add0~19\ = CARRY((!\frame_buffer|Add0~17\) # (!\frame_buffer|reloj_cam:count[9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \frame_buffer|reloj_cam:count[9]~q\,
	datad => VCC,
	cin => \frame_buffer|Add0~17\,
	combout => \frame_buffer|Add0~18_combout\,
	cout => \frame_buffer|Add0~19\);

-- Location: FF_X42_Y3_N19
\frame_buffer|reloj_cam:count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \frame_buffer|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frame_buffer|reloj_cam:count[9]~q\);

-- Location: LCCOMB_X42_Y3_N20
\frame_buffer|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Add0~20_combout\ = (\frame_buffer|reloj_cam:count[10]~q\ & (\frame_buffer|Add0~19\ $ (GND))) # (!\frame_buffer|reloj_cam:count[10]~q\ & (!\frame_buffer|Add0~19\ & VCC))
-- \frame_buffer|Add0~21\ = CARRY((\frame_buffer|reloj_cam:count[10]~q\ & !\frame_buffer|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \frame_buffer|reloj_cam:count[10]~q\,
	datad => VCC,
	cin => \frame_buffer|Add0~19\,
	combout => \frame_buffer|Add0~20_combout\,
	cout => \frame_buffer|Add0~21\);

-- Location: FF_X42_Y3_N21
\frame_buffer|reloj_cam:count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \frame_buffer|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frame_buffer|reloj_cam:count[10]~q\);

-- Location: LCCOMB_X42_Y3_N22
\frame_buffer|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Add0~22_combout\ = (\frame_buffer|reloj_cam:count[11]~q\ & (!\frame_buffer|Add0~21\)) # (!\frame_buffer|reloj_cam:count[11]~q\ & ((\frame_buffer|Add0~21\) # (GND)))
-- \frame_buffer|Add0~23\ = CARRY((!\frame_buffer|Add0~21\) # (!\frame_buffer|reloj_cam:count[11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \frame_buffer|reloj_cam:count[11]~q\,
	datad => VCC,
	cin => \frame_buffer|Add0~21\,
	combout => \frame_buffer|Add0~22_combout\,
	cout => \frame_buffer|Add0~23\);

-- Location: FF_X42_Y3_N23
\frame_buffer|reloj_cam:count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \frame_buffer|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frame_buffer|reloj_cam:count[11]~q\);

-- Location: LCCOMB_X42_Y3_N24
\frame_buffer|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Add0~24_combout\ = (\frame_buffer|reloj_cam:count[12]~q\ & (\frame_buffer|Add0~23\ $ (GND))) # (!\frame_buffer|reloj_cam:count[12]~q\ & (!\frame_buffer|Add0~23\ & VCC))
-- \frame_buffer|Add0~25\ = CARRY((\frame_buffer|reloj_cam:count[12]~q\ & !\frame_buffer|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \frame_buffer|reloj_cam:count[12]~q\,
	datad => VCC,
	cin => \frame_buffer|Add0~23\,
	combout => \frame_buffer|Add0~24_combout\,
	cout => \frame_buffer|Add0~25\);

-- Location: FF_X42_Y3_N25
\frame_buffer|reloj_cam:count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \frame_buffer|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frame_buffer|reloj_cam:count[12]~q\);

-- Location: LCCOMB_X42_Y3_N26
\frame_buffer|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Add0~26_combout\ = (\frame_buffer|reloj_cam:count[13]~q\ & (!\frame_buffer|Add0~25\)) # (!\frame_buffer|reloj_cam:count[13]~q\ & ((\frame_buffer|Add0~25\) # (GND)))
-- \frame_buffer|Add0~27\ = CARRY((!\frame_buffer|Add0~25\) # (!\frame_buffer|reloj_cam:count[13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \frame_buffer|reloj_cam:count[13]~q\,
	datad => VCC,
	cin => \frame_buffer|Add0~25\,
	combout => \frame_buffer|Add0~26_combout\,
	cout => \frame_buffer|Add0~27\);

-- Location: FF_X42_Y3_N27
\frame_buffer|reloj_cam:count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \frame_buffer|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frame_buffer|reloj_cam:count[13]~q\);

-- Location: LCCOMB_X42_Y3_N28
\frame_buffer|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Add0~28_combout\ = (\frame_buffer|reloj_cam:count[14]~q\ & (\frame_buffer|Add0~27\ $ (GND))) # (!\frame_buffer|reloj_cam:count[14]~q\ & (!\frame_buffer|Add0~27\ & VCC))
-- \frame_buffer|Add0~29\ = CARRY((\frame_buffer|reloj_cam:count[14]~q\ & !\frame_buffer|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \frame_buffer|reloj_cam:count[14]~q\,
	datad => VCC,
	cin => \frame_buffer|Add0~27\,
	combout => \frame_buffer|Add0~28_combout\,
	cout => \frame_buffer|Add0~29\);

-- Location: FF_X42_Y3_N29
\frame_buffer|reloj_cam:count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \frame_buffer|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frame_buffer|reloj_cam:count[14]~q\);

-- Location: LCCOMB_X42_Y3_N30
\frame_buffer|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Add0~30_combout\ = (\frame_buffer|reloj_cam:count[15]~q\ & (!\frame_buffer|Add0~29\)) # (!\frame_buffer|reloj_cam:count[15]~q\ & ((\frame_buffer|Add0~29\) # (GND)))
-- \frame_buffer|Add0~31\ = CARRY((!\frame_buffer|Add0~29\) # (!\frame_buffer|reloj_cam:count[15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \frame_buffer|reloj_cam:count[15]~q\,
	datad => VCC,
	cin => \frame_buffer|Add0~29\,
	combout => \frame_buffer|Add0~30_combout\,
	cout => \frame_buffer|Add0~31\);

-- Location: FF_X42_Y3_N31
\frame_buffer|reloj_cam:count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \frame_buffer|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frame_buffer|reloj_cam:count[15]~q\);

-- Location: LCCOMB_X42_Y2_N0
\frame_buffer|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Add0~32_combout\ = (\frame_buffer|reloj_cam:count[16]~q\ & (\frame_buffer|Add0~31\ $ (GND))) # (!\frame_buffer|reloj_cam:count[16]~q\ & (!\frame_buffer|Add0~31\ & VCC))
-- \frame_buffer|Add0~33\ = CARRY((\frame_buffer|reloj_cam:count[16]~q\ & !\frame_buffer|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \frame_buffer|reloj_cam:count[16]~q\,
	datad => VCC,
	cin => \frame_buffer|Add0~31\,
	combout => \frame_buffer|Add0~32_combout\,
	cout => \frame_buffer|Add0~33\);

-- Location: FF_X42_Y2_N1
\frame_buffer|reloj_cam:count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \frame_buffer|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frame_buffer|reloj_cam:count[16]~q\);

-- Location: LCCOMB_X42_Y2_N2
\frame_buffer|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Add0~34_combout\ = (\frame_buffer|reloj_cam:count[17]~q\ & (!\frame_buffer|Add0~33\)) # (!\frame_buffer|reloj_cam:count[17]~q\ & ((\frame_buffer|Add0~33\) # (GND)))
-- \frame_buffer|Add0~35\ = CARRY((!\frame_buffer|Add0~33\) # (!\frame_buffer|reloj_cam:count[17]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \frame_buffer|reloj_cam:count[17]~q\,
	datad => VCC,
	cin => \frame_buffer|Add0~33\,
	combout => \frame_buffer|Add0~34_combout\,
	cout => \frame_buffer|Add0~35\);

-- Location: FF_X42_Y2_N3
\frame_buffer|reloj_cam:count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \frame_buffer|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frame_buffer|reloj_cam:count[17]~q\);

-- Location: LCCOMB_X42_Y2_N4
\frame_buffer|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Add0~36_combout\ = (\frame_buffer|reloj_cam:count[18]~q\ & (\frame_buffer|Add0~35\ $ (GND))) # (!\frame_buffer|reloj_cam:count[18]~q\ & (!\frame_buffer|Add0~35\ & VCC))
-- \frame_buffer|Add0~37\ = CARRY((\frame_buffer|reloj_cam:count[18]~q\ & !\frame_buffer|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \frame_buffer|reloj_cam:count[18]~q\,
	datad => VCC,
	cin => \frame_buffer|Add0~35\,
	combout => \frame_buffer|Add0~36_combout\,
	cout => \frame_buffer|Add0~37\);

-- Location: FF_X42_Y2_N5
\frame_buffer|reloj_cam:count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \frame_buffer|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frame_buffer|reloj_cam:count[18]~q\);

-- Location: LCCOMB_X42_Y2_N6
\frame_buffer|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Add0~38_combout\ = (\frame_buffer|reloj_cam:count[19]~q\ & (!\frame_buffer|Add0~37\)) # (!\frame_buffer|reloj_cam:count[19]~q\ & ((\frame_buffer|Add0~37\) # (GND)))
-- \frame_buffer|Add0~39\ = CARRY((!\frame_buffer|Add0~37\) # (!\frame_buffer|reloj_cam:count[19]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \frame_buffer|reloj_cam:count[19]~q\,
	datad => VCC,
	cin => \frame_buffer|Add0~37\,
	combout => \frame_buffer|Add0~38_combout\,
	cout => \frame_buffer|Add0~39\);

-- Location: FF_X42_Y2_N7
\frame_buffer|reloj_cam:count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \frame_buffer|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frame_buffer|reloj_cam:count[19]~q\);

-- Location: LCCOMB_X42_Y2_N8
\frame_buffer|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Add0~40_combout\ = (\frame_buffer|reloj_cam:count[20]~q\ & (\frame_buffer|Add0~39\ $ (GND))) # (!\frame_buffer|reloj_cam:count[20]~q\ & (!\frame_buffer|Add0~39\ & VCC))
-- \frame_buffer|Add0~41\ = CARRY((\frame_buffer|reloj_cam:count[20]~q\ & !\frame_buffer|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \frame_buffer|reloj_cam:count[20]~q\,
	datad => VCC,
	cin => \frame_buffer|Add0~39\,
	combout => \frame_buffer|Add0~40_combout\,
	cout => \frame_buffer|Add0~41\);

-- Location: FF_X42_Y2_N9
\frame_buffer|reloj_cam:count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \frame_buffer|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frame_buffer|reloj_cam:count[20]~q\);

-- Location: LCCOMB_X42_Y2_N10
\frame_buffer|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Add0~42_combout\ = (\frame_buffer|reloj_cam:count[21]~q\ & (!\frame_buffer|Add0~41\)) # (!\frame_buffer|reloj_cam:count[21]~q\ & ((\frame_buffer|Add0~41\) # (GND)))
-- \frame_buffer|Add0~43\ = CARRY((!\frame_buffer|Add0~41\) # (!\frame_buffer|reloj_cam:count[21]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \frame_buffer|reloj_cam:count[21]~q\,
	datad => VCC,
	cin => \frame_buffer|Add0~41\,
	combout => \frame_buffer|Add0~42_combout\,
	cout => \frame_buffer|Add0~43\);

-- Location: FF_X42_Y2_N11
\frame_buffer|reloj_cam:count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \frame_buffer|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frame_buffer|reloj_cam:count[21]~q\);

-- Location: LCCOMB_X42_Y2_N12
\frame_buffer|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Add0~44_combout\ = (\frame_buffer|reloj_cam:count[22]~q\ & (\frame_buffer|Add0~43\ $ (GND))) # (!\frame_buffer|reloj_cam:count[22]~q\ & (!\frame_buffer|Add0~43\ & VCC))
-- \frame_buffer|Add0~45\ = CARRY((\frame_buffer|reloj_cam:count[22]~q\ & !\frame_buffer|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \frame_buffer|reloj_cam:count[22]~q\,
	datad => VCC,
	cin => \frame_buffer|Add0~43\,
	combout => \frame_buffer|Add0~44_combout\,
	cout => \frame_buffer|Add0~45\);

-- Location: FF_X42_Y2_N13
\frame_buffer|reloj_cam:count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \frame_buffer|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frame_buffer|reloj_cam:count[22]~q\);

-- Location: LCCOMB_X42_Y2_N14
\frame_buffer|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Add0~46_combout\ = (\frame_buffer|reloj_cam:count[23]~q\ & (!\frame_buffer|Add0~45\)) # (!\frame_buffer|reloj_cam:count[23]~q\ & ((\frame_buffer|Add0~45\) # (GND)))
-- \frame_buffer|Add0~47\ = CARRY((!\frame_buffer|Add0~45\) # (!\frame_buffer|reloj_cam:count[23]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \frame_buffer|reloj_cam:count[23]~q\,
	datad => VCC,
	cin => \frame_buffer|Add0~45\,
	combout => \frame_buffer|Add0~46_combout\,
	cout => \frame_buffer|Add0~47\);

-- Location: FF_X42_Y2_N15
\frame_buffer|reloj_cam:count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \frame_buffer|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frame_buffer|reloj_cam:count[23]~q\);

-- Location: LCCOMB_X42_Y2_N16
\frame_buffer|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Add0~48_combout\ = (\frame_buffer|reloj_cam:count[24]~q\ & (\frame_buffer|Add0~47\ $ (GND))) # (!\frame_buffer|reloj_cam:count[24]~q\ & (!\frame_buffer|Add0~47\ & VCC))
-- \frame_buffer|Add0~49\ = CARRY((\frame_buffer|reloj_cam:count[24]~q\ & !\frame_buffer|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \frame_buffer|reloj_cam:count[24]~q\,
	datad => VCC,
	cin => \frame_buffer|Add0~47\,
	combout => \frame_buffer|Add0~48_combout\,
	cout => \frame_buffer|Add0~49\);

-- Location: FF_X42_Y2_N17
\frame_buffer|reloj_cam:count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \frame_buffer|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frame_buffer|reloj_cam:count[24]~q\);

-- Location: LCCOMB_X42_Y2_N18
\frame_buffer|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Add0~50_combout\ = (\frame_buffer|reloj_cam:count[25]~q\ & (!\frame_buffer|Add0~49\)) # (!\frame_buffer|reloj_cam:count[25]~q\ & ((\frame_buffer|Add0~49\) # (GND)))
-- \frame_buffer|Add0~51\ = CARRY((!\frame_buffer|Add0~49\) # (!\frame_buffer|reloj_cam:count[25]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \frame_buffer|reloj_cam:count[25]~q\,
	datad => VCC,
	cin => \frame_buffer|Add0~49\,
	combout => \frame_buffer|Add0~50_combout\,
	cout => \frame_buffer|Add0~51\);

-- Location: FF_X42_Y2_N19
\frame_buffer|reloj_cam:count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \frame_buffer|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frame_buffer|reloj_cam:count[25]~q\);

-- Location: LCCOMB_X42_Y2_N20
\frame_buffer|Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Add0~52_combout\ = (\frame_buffer|reloj_cam:count[26]~q\ & (\frame_buffer|Add0~51\ $ (GND))) # (!\frame_buffer|reloj_cam:count[26]~q\ & (!\frame_buffer|Add0~51\ & VCC))
-- \frame_buffer|Add0~53\ = CARRY((\frame_buffer|reloj_cam:count[26]~q\ & !\frame_buffer|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \frame_buffer|reloj_cam:count[26]~q\,
	datad => VCC,
	cin => \frame_buffer|Add0~51\,
	combout => \frame_buffer|Add0~52_combout\,
	cout => \frame_buffer|Add0~53\);

-- Location: FF_X42_Y2_N21
\frame_buffer|reloj_cam:count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \frame_buffer|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frame_buffer|reloj_cam:count[26]~q\);

-- Location: LCCOMB_X42_Y2_N22
\frame_buffer|Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Add0~54_combout\ = (\frame_buffer|reloj_cam:count[27]~q\ & (!\frame_buffer|Add0~53\)) # (!\frame_buffer|reloj_cam:count[27]~q\ & ((\frame_buffer|Add0~53\) # (GND)))
-- \frame_buffer|Add0~55\ = CARRY((!\frame_buffer|Add0~53\) # (!\frame_buffer|reloj_cam:count[27]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \frame_buffer|reloj_cam:count[27]~q\,
	datad => VCC,
	cin => \frame_buffer|Add0~53\,
	combout => \frame_buffer|Add0~54_combout\,
	cout => \frame_buffer|Add0~55\);

-- Location: FF_X42_Y2_N23
\frame_buffer|reloj_cam:count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \frame_buffer|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frame_buffer|reloj_cam:count[27]~q\);

-- Location: LCCOMB_X42_Y2_N24
\frame_buffer|Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Add0~56_combout\ = (\frame_buffer|reloj_cam:count[28]~q\ & (\frame_buffer|Add0~55\ $ (GND))) # (!\frame_buffer|reloj_cam:count[28]~q\ & (!\frame_buffer|Add0~55\ & VCC))
-- \frame_buffer|Add0~57\ = CARRY((\frame_buffer|reloj_cam:count[28]~q\ & !\frame_buffer|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \frame_buffer|reloj_cam:count[28]~q\,
	datad => VCC,
	cin => \frame_buffer|Add0~55\,
	combout => \frame_buffer|Add0~56_combout\,
	cout => \frame_buffer|Add0~57\);

-- Location: FF_X42_Y2_N25
\frame_buffer|reloj_cam:count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \frame_buffer|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frame_buffer|reloj_cam:count[28]~q\);

-- Location: LCCOMB_X42_Y2_N26
\frame_buffer|Add0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Add0~58_combout\ = (\frame_buffer|reloj_cam:count[29]~q\ & (!\frame_buffer|Add0~57\)) # (!\frame_buffer|reloj_cam:count[29]~q\ & ((\frame_buffer|Add0~57\) # (GND)))
-- \frame_buffer|Add0~59\ = CARRY((!\frame_buffer|Add0~57\) # (!\frame_buffer|reloj_cam:count[29]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \frame_buffer|reloj_cam:count[29]~q\,
	datad => VCC,
	cin => \frame_buffer|Add0~57\,
	combout => \frame_buffer|Add0~58_combout\,
	cout => \frame_buffer|Add0~59\);

-- Location: FF_X42_Y2_N27
\frame_buffer|reloj_cam:count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \frame_buffer|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frame_buffer|reloj_cam:count[29]~q\);

-- Location: LCCOMB_X42_Y2_N28
\frame_buffer|Add0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Add0~60_combout\ = (\frame_buffer|reloj_cam:count[30]~q\ & (\frame_buffer|Add0~59\ $ (GND))) # (!\frame_buffer|reloj_cam:count[30]~q\ & (!\frame_buffer|Add0~59\ & VCC))
-- \frame_buffer|Add0~61\ = CARRY((\frame_buffer|reloj_cam:count[30]~q\ & !\frame_buffer|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \frame_buffer|reloj_cam:count[30]~q\,
	datad => VCC,
	cin => \frame_buffer|Add0~59\,
	combout => \frame_buffer|Add0~60_combout\,
	cout => \frame_buffer|Add0~61\);

-- Location: FF_X42_Y2_N31
\frame_buffer|reloj_cam:count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \frame_buffer|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frame_buffer|reloj_cam:count[31]~q\);

-- Location: LCCOMB_X42_Y2_N30
\frame_buffer|Add0~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Add0~62_combout\ = \frame_buffer|reloj_cam:count[31]~q\ $ (\frame_buffer|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \frame_buffer|reloj_cam:count[31]~q\,
	cin => \frame_buffer|Add0~61\,
	combout => \frame_buffer|Add0~62_combout\);

-- Location: LCCOMB_X43_Y2_N26
\frame_buffer|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Equal0~5_combout\ = (!\frame_buffer|Add0~34_combout\ & (!\frame_buffer|Add0~36_combout\ & (!\frame_buffer|Add0~38_combout\ & !\frame_buffer|Add0~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frame_buffer|Add0~34_combout\,
	datab => \frame_buffer|Add0~36_combout\,
	datac => \frame_buffer|Add0~38_combout\,
	datad => \frame_buffer|Add0~32_combout\,
	combout => \frame_buffer|Equal0~5_combout\);

-- Location: LCCOMB_X43_Y2_N18
\frame_buffer|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Equal0~6_combout\ = (!\frame_buffer|Add0~42_combout\ & (!\frame_buffer|Add0~40_combout\ & (!\frame_buffer|Add0~44_combout\ & !\frame_buffer|Add0~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frame_buffer|Add0~42_combout\,
	datab => \frame_buffer|Add0~40_combout\,
	datac => \frame_buffer|Add0~44_combout\,
	datad => \frame_buffer|Add0~46_combout\,
	combout => \frame_buffer|Equal0~6_combout\);

-- Location: LCCOMB_X43_Y2_N24
\frame_buffer|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Equal0~7_combout\ = (!\frame_buffer|Add0~48_combout\ & (!\frame_buffer|Add0~50_combout\ & (\frame_buffer|Equal0~5_combout\ & \frame_buffer|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frame_buffer|Add0~48_combout\,
	datab => \frame_buffer|Add0~50_combout\,
	datac => \frame_buffer|Equal0~5_combout\,
	datad => \frame_buffer|Equal0~6_combout\,
	combout => \frame_buffer|Equal0~7_combout\);

-- Location: LCCOMB_X43_Y2_N20
\frame_buffer|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Equal0~8_combout\ = (!\frame_buffer|Add0~52_combout\ & (!\frame_buffer|Add0~54_combout\ & (!\frame_buffer|Add0~56_combout\ & \frame_buffer|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frame_buffer|Add0~52_combout\,
	datab => \frame_buffer|Add0~54_combout\,
	datac => \frame_buffer|Add0~56_combout\,
	datad => \frame_buffer|Equal0~7_combout\,
	combout => \frame_buffer|Equal0~8_combout\);

-- Location: LCCOMB_X43_Y2_N16
\frame_buffer|Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Equal0~9_combout\ = (!\frame_buffer|Add0~60_combout\ & (!\frame_buffer|Add0~62_combout\ & (!\frame_buffer|Add0~58_combout\ & \frame_buffer|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frame_buffer|Add0~60_combout\,
	datab => \frame_buffer|Add0~62_combout\,
	datac => \frame_buffer|Add0~58_combout\,
	datad => \frame_buffer|Equal0~8_combout\,
	combout => \frame_buffer|Equal0~9_combout\);

-- Location: LCCOMB_X43_Y2_N0
\frame_buffer|count~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|count~0_combout\ = (\frame_buffer|Add0~2_combout\ & ((!\frame_buffer|Equal0~9_combout\) # (!\frame_buffer|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \frame_buffer|Add0~2_combout\,
	datac => \frame_buffer|Equal0~4_combout\,
	datad => \frame_buffer|Equal0~9_combout\,
	combout => \frame_buffer|count~0_combout\);

-- Location: FF_X43_Y2_N1
\frame_buffer|reloj_cam:count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \frame_buffer|count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frame_buffer|reloj_cam:count[1]~q\);

-- Location: LCCOMB_X42_Y3_N4
\frame_buffer|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Add0~4_combout\ = (\frame_buffer|reloj_cam:count[2]~q\ & (\frame_buffer|Add0~3\ $ (GND))) # (!\frame_buffer|reloj_cam:count[2]~q\ & (!\frame_buffer|Add0~3\ & VCC))
-- \frame_buffer|Add0~5\ = CARRY((\frame_buffer|reloj_cam:count[2]~q\ & !\frame_buffer|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \frame_buffer|reloj_cam:count[2]~q\,
	datad => VCC,
	cin => \frame_buffer|Add0~3\,
	combout => \frame_buffer|Add0~4_combout\,
	cout => \frame_buffer|Add0~5\);

-- Location: FF_X42_Y3_N5
\frame_buffer|reloj_cam:count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \frame_buffer|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frame_buffer|reloj_cam:count[2]~q\);

-- Location: LCCOMB_X42_Y3_N6
\frame_buffer|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Add0~6_combout\ = (\frame_buffer|reloj_cam:count[3]~q\ & (!\frame_buffer|Add0~5\)) # (!\frame_buffer|reloj_cam:count[3]~q\ & ((\frame_buffer|Add0~5\) # (GND)))
-- \frame_buffer|Add0~7\ = CARRY((!\frame_buffer|Add0~5\) # (!\frame_buffer|reloj_cam:count[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \frame_buffer|reloj_cam:count[3]~q\,
	datad => VCC,
	cin => \frame_buffer|Add0~5\,
	combout => \frame_buffer|Add0~6_combout\,
	cout => \frame_buffer|Add0~7\);

-- Location: FF_X42_Y3_N7
\frame_buffer|reloj_cam:count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \frame_buffer|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frame_buffer|reloj_cam:count[3]~q\);

-- Location: LCCOMB_X43_Y3_N14
\frame_buffer|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Equal0~1_combout\ = (!\frame_buffer|Add0~8_combout\ & (!\frame_buffer|Add0~10_combout\ & (!\frame_buffer|Add0~12_combout\ & !\frame_buffer|Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frame_buffer|Add0~8_combout\,
	datab => \frame_buffer|Add0~10_combout\,
	datac => \frame_buffer|Add0~12_combout\,
	datad => \frame_buffer|Add0~14_combout\,
	combout => \frame_buffer|Equal0~1_combout\);

-- Location: LCCOMB_X43_Y3_N28
\frame_buffer|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Equal0~2_combout\ = (!\frame_buffer|Add0~16_combout\ & (!\frame_buffer|Add0~20_combout\ & (!\frame_buffer|Add0~18_combout\ & !\frame_buffer|Add0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frame_buffer|Add0~16_combout\,
	datab => \frame_buffer|Add0~20_combout\,
	datac => \frame_buffer|Add0~18_combout\,
	datad => \frame_buffer|Add0~22_combout\,
	combout => \frame_buffer|Equal0~2_combout\);

-- Location: LCCOMB_X43_Y3_N30
\frame_buffer|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Equal0~3_combout\ = (!\frame_buffer|Add0~26_combout\ & (!\frame_buffer|Add0~24_combout\ & (!\frame_buffer|Add0~28_combout\ & !\frame_buffer|Add0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frame_buffer|Add0~26_combout\,
	datab => \frame_buffer|Add0~24_combout\,
	datac => \frame_buffer|Add0~28_combout\,
	datad => \frame_buffer|Add0~30_combout\,
	combout => \frame_buffer|Equal0~3_combout\);

-- Location: LCCOMB_X43_Y3_N24
\frame_buffer|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Equal0~0_combout\ = (!\frame_buffer|Add0~0_combout\ & (!\frame_buffer|Add0~6_combout\ & (!\frame_buffer|Add0~4_combout\ & \frame_buffer|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frame_buffer|Add0~0_combout\,
	datab => \frame_buffer|Add0~6_combout\,
	datac => \frame_buffer|Add0~4_combout\,
	datad => \frame_buffer|Add0~2_combout\,
	combout => \frame_buffer|Equal0~0_combout\);

-- Location: LCCOMB_X43_Y2_N22
\frame_buffer|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Equal0~4_combout\ = (\frame_buffer|Equal0~1_combout\ & (\frame_buffer|Equal0~2_combout\ & (\frame_buffer|Equal0~3_combout\ & \frame_buffer|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frame_buffer|Equal0~1_combout\,
	datab => \frame_buffer|Equal0~2_combout\,
	datac => \frame_buffer|Equal0~3_combout\,
	datad => \frame_buffer|Equal0~0_combout\,
	combout => \frame_buffer|Equal0~4_combout\);

-- Location: LCCOMB_X43_Y2_N30
\frame_buffer|clk_cam~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|clk_cam~0_combout\ = \frame_buffer|clk_cam~q\ $ (((\frame_buffer|Equal0~4_combout\ & \frame_buffer|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frame_buffer|Equal0~4_combout\,
	datac => \frame_buffer|clk_cam~q\,
	datad => \frame_buffer|Equal0~9_combout\,
	combout => \frame_buffer|clk_cam~0_combout\);

-- Location: LCCOMB_X43_Y2_N28
\frame_buffer|clk_cam~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|clk_cam~feeder_combout\ = \frame_buffer|clk_cam~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \frame_buffer|clk_cam~0_combout\,
	combout => \frame_buffer|clk_cam~feeder_combout\);

-- Location: FF_X43_Y2_N29
\frame_buffer|clk_cam\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \frame_buffer|clk_cam~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frame_buffer|clk_cam~q\);

-- Location: CLKCTRL_G15
\frame_buffer|clk_cam~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \frame_buffer|clk_cam~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \frame_buffer|clk_cam~clkctrl_outclk\);

-- Location: IOIBUF_X22_Y0_N1
\pclk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pclk,
	o => \pclk~input_o\);

-- Location: LCCOMB_X43_Y20_N0
\rx_cam|vcont[0]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_cam|vcont[0]~13_combout\ = \rx_cam|vcont\(0) $ (VCC)
-- \rx_cam|vcont[0]~14\ = CARRY(\rx_cam|vcont\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rx_cam|vcont\(0),
	datad => VCC,
	combout => \rx_cam|vcont[0]~13_combout\,
	cout => \rx_cam|vcont[0]~14\);

-- Location: LCCOMB_X44_Y18_N0
\rx_cam|ybyte~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_cam|ybyte~2_combout\ = \rx_cam|ybyte~q\ $ (((!\rx_cam|LessThan1~2_combout\ & (!\rx_cam|est\(0) & \rx_cam|est\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_cam|LessThan1~2_combout\,
	datab => \rx_cam|est\(0),
	datac => \rx_cam|ybyte~q\,
	datad => \rx_cam|est\(1),
	combout => \rx_cam|ybyte~2_combout\);

-- Location: FF_X44_Y18_N1
\rx_cam|ybyte\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pclk~input_o\,
	d => \rx_cam|ybyte~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_cam|ybyte~q\);

-- Location: LCCOMB_X44_Y18_N4
\rx_cam|hcont[0]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_cam|hcont[0]~10_combout\ = (\rx_cam|ybyte~q\ & (\rx_cam|hcont\(0) $ (VCC))) # (!\rx_cam|ybyte~q\ & (\rx_cam|hcont\(0) & VCC))
-- \rx_cam|hcont[0]~11\ = CARRY((\rx_cam|ybyte~q\ & \rx_cam|hcont\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_cam|ybyte~q\,
	datab => \rx_cam|hcont\(0),
	datad => VCC,
	combout => \rx_cam|hcont[0]~10_combout\,
	cout => \rx_cam|hcont[0]~11\);

-- Location: FF_X44_Y18_N5
\rx_cam|hcont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pclk~input_o\,
	d => \rx_cam|hcont[0]~10_combout\,
	sclr => \rx_cam|LessThan1~2_combout\,
	ena => \rx_cam|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_cam|hcont\(0));

-- Location: LCCOMB_X44_Y18_N6
\rx_cam|hcont[1]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_cam|hcont[1]~12_combout\ = (\rx_cam|hcont\(1) & (!\rx_cam|hcont[0]~11\)) # (!\rx_cam|hcont\(1) & ((\rx_cam|hcont[0]~11\) # (GND)))
-- \rx_cam|hcont[1]~13\ = CARRY((!\rx_cam|hcont[0]~11\) # (!\rx_cam|hcont\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rx_cam|hcont\(1),
	datad => VCC,
	cin => \rx_cam|hcont[0]~11\,
	combout => \rx_cam|hcont[1]~12_combout\,
	cout => \rx_cam|hcont[1]~13\);

-- Location: FF_X44_Y18_N7
\rx_cam|hcont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pclk~input_o\,
	d => \rx_cam|hcont[1]~12_combout\,
	sclr => \rx_cam|LessThan1~2_combout\,
	ena => \rx_cam|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_cam|hcont\(1));

-- Location: LCCOMB_X44_Y18_N8
\rx_cam|hcont[2]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_cam|hcont[2]~14_combout\ = (\rx_cam|hcont\(2) & (\rx_cam|hcont[1]~13\ $ (GND))) # (!\rx_cam|hcont\(2) & (!\rx_cam|hcont[1]~13\ & VCC))
-- \rx_cam|hcont[2]~15\ = CARRY((\rx_cam|hcont\(2) & !\rx_cam|hcont[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rx_cam|hcont\(2),
	datad => VCC,
	cin => \rx_cam|hcont[1]~13\,
	combout => \rx_cam|hcont[2]~14_combout\,
	cout => \rx_cam|hcont[2]~15\);

-- Location: FF_X44_Y18_N9
\rx_cam|hcont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pclk~input_o\,
	d => \rx_cam|hcont[2]~14_combout\,
	sclr => \rx_cam|LessThan1~2_combout\,
	ena => \rx_cam|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_cam|hcont\(2));

-- Location: LCCOMB_X44_Y18_N10
\rx_cam|hcont[3]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_cam|hcont[3]~16_combout\ = (\rx_cam|hcont\(3) & (!\rx_cam|hcont[2]~15\)) # (!\rx_cam|hcont\(3) & ((\rx_cam|hcont[2]~15\) # (GND)))
-- \rx_cam|hcont[3]~17\ = CARRY((!\rx_cam|hcont[2]~15\) # (!\rx_cam|hcont\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rx_cam|hcont\(3),
	datad => VCC,
	cin => \rx_cam|hcont[2]~15\,
	combout => \rx_cam|hcont[3]~16_combout\,
	cout => \rx_cam|hcont[3]~17\);

-- Location: FF_X44_Y18_N11
\rx_cam|hcont[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pclk~input_o\,
	d => \rx_cam|hcont[3]~16_combout\,
	sclr => \rx_cam|LessThan1~2_combout\,
	ena => \rx_cam|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_cam|hcont\(3));

-- Location: LCCOMB_X44_Y18_N12
\rx_cam|hcont[4]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_cam|hcont[4]~18_combout\ = (\rx_cam|hcont\(4) & (\rx_cam|hcont[3]~17\ $ (GND))) # (!\rx_cam|hcont\(4) & (!\rx_cam|hcont[3]~17\ & VCC))
-- \rx_cam|hcont[4]~19\ = CARRY((\rx_cam|hcont\(4) & !\rx_cam|hcont[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rx_cam|hcont\(4),
	datad => VCC,
	cin => \rx_cam|hcont[3]~17\,
	combout => \rx_cam|hcont[4]~18_combout\,
	cout => \rx_cam|hcont[4]~19\);

-- Location: FF_X44_Y18_N13
\rx_cam|hcont[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pclk~input_o\,
	d => \rx_cam|hcont[4]~18_combout\,
	sclr => \rx_cam|LessThan1~2_combout\,
	ena => \rx_cam|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_cam|hcont\(4));

-- Location: LCCOMB_X44_Y18_N14
\rx_cam|hcont[5]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_cam|hcont[5]~20_combout\ = (\rx_cam|hcont\(5) & (!\rx_cam|hcont[4]~19\)) # (!\rx_cam|hcont\(5) & ((\rx_cam|hcont[4]~19\) # (GND)))
-- \rx_cam|hcont[5]~21\ = CARRY((!\rx_cam|hcont[4]~19\) # (!\rx_cam|hcont\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rx_cam|hcont\(5),
	datad => VCC,
	cin => \rx_cam|hcont[4]~19\,
	combout => \rx_cam|hcont[5]~20_combout\,
	cout => \rx_cam|hcont[5]~21\);

-- Location: FF_X44_Y18_N15
\rx_cam|hcont[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pclk~input_o\,
	d => \rx_cam|hcont[5]~20_combout\,
	sclr => \rx_cam|LessThan1~2_combout\,
	ena => \rx_cam|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_cam|hcont\(5));

-- Location: LCCOMB_X44_Y18_N16
\rx_cam|hcont[6]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_cam|hcont[6]~22_combout\ = (\rx_cam|hcont\(6) & (\rx_cam|hcont[5]~21\ $ (GND))) # (!\rx_cam|hcont\(6) & (!\rx_cam|hcont[5]~21\ & VCC))
-- \rx_cam|hcont[6]~23\ = CARRY((\rx_cam|hcont\(6) & !\rx_cam|hcont[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rx_cam|hcont\(6),
	datad => VCC,
	cin => \rx_cam|hcont[5]~21\,
	combout => \rx_cam|hcont[6]~22_combout\,
	cout => \rx_cam|hcont[6]~23\);

-- Location: FF_X44_Y18_N17
\rx_cam|hcont[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pclk~input_o\,
	d => \rx_cam|hcont[6]~22_combout\,
	sclr => \rx_cam|LessThan1~2_combout\,
	ena => \rx_cam|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_cam|hcont\(6));

-- Location: LCCOMB_X44_Y18_N18
\rx_cam|hcont[7]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_cam|hcont[7]~24_combout\ = (\rx_cam|hcont\(7) & (!\rx_cam|hcont[6]~23\)) # (!\rx_cam|hcont\(7) & ((\rx_cam|hcont[6]~23\) # (GND)))
-- \rx_cam|hcont[7]~25\ = CARRY((!\rx_cam|hcont[6]~23\) # (!\rx_cam|hcont\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rx_cam|hcont\(7),
	datad => VCC,
	cin => \rx_cam|hcont[6]~23\,
	combout => \rx_cam|hcont[7]~24_combout\,
	cout => \rx_cam|hcont[7]~25\);

-- Location: FF_X44_Y18_N19
\rx_cam|hcont[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pclk~input_o\,
	d => \rx_cam|hcont[7]~24_combout\,
	sclr => \rx_cam|LessThan1~2_combout\,
	ena => \rx_cam|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_cam|hcont\(7));

-- Location: LCCOMB_X44_Y18_N20
\rx_cam|hcont[8]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_cam|hcont[8]~26_combout\ = (\rx_cam|hcont\(8) & (\rx_cam|hcont[7]~25\ $ (GND))) # (!\rx_cam|hcont\(8) & (!\rx_cam|hcont[7]~25\ & VCC))
-- \rx_cam|hcont[8]~27\ = CARRY((\rx_cam|hcont\(8) & !\rx_cam|hcont[7]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rx_cam|hcont\(8),
	datad => VCC,
	cin => \rx_cam|hcont[7]~25\,
	combout => \rx_cam|hcont[8]~26_combout\,
	cout => \rx_cam|hcont[8]~27\);

-- Location: FF_X44_Y18_N21
\rx_cam|hcont[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pclk~input_o\,
	d => \rx_cam|hcont[8]~26_combout\,
	sclr => \rx_cam|LessThan1~2_combout\,
	ena => \rx_cam|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_cam|hcont\(8));

-- Location: LCCOMB_X44_Y18_N22
\rx_cam|hcont[9]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_cam|hcont[9]~28_combout\ = \rx_cam|hcont\(9) $ (\rx_cam|hcont[8]~27\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rx_cam|hcont\(9),
	cin => \rx_cam|hcont[8]~27\,
	combout => \rx_cam|hcont[9]~28_combout\);

-- Location: FF_X44_Y18_N23
\rx_cam|hcont[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pclk~input_o\,
	d => \rx_cam|hcont[9]~28_combout\,
	sclr => \rx_cam|LessThan1~2_combout\,
	ena => \rx_cam|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_cam|hcont\(9));

-- Location: LCCOMB_X44_Y18_N2
\rx_cam|LessThan1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_cam|LessThan1~0_combout\ = (((!\rx_cam|hcont\(1)) # (!\rx_cam|hcont\(0))) # (!\rx_cam|hcont\(2))) # (!\rx_cam|hcont\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_cam|hcont\(3),
	datab => \rx_cam|hcont\(2),
	datac => \rx_cam|hcont\(0),
	datad => \rx_cam|hcont\(1),
	combout => \rx_cam|LessThan1~0_combout\);

-- Location: LCCOMB_X44_Y18_N24
\rx_cam|LessThan1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_cam|LessThan1~1_combout\ = (((\rx_cam|LessThan1~0_combout\) # (!\rx_cam|hcont\(5))) # (!\rx_cam|hcont\(6))) # (!\rx_cam|hcont\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_cam|hcont\(4),
	datab => \rx_cam|hcont\(6),
	datac => \rx_cam|hcont\(5),
	datad => \rx_cam|LessThan1~0_combout\,
	combout => \rx_cam|LessThan1~1_combout\);

-- Location: LCCOMB_X44_Y18_N30
\rx_cam|LessThan1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_cam|LessThan1~2_combout\ = (\rx_cam|hcont\(9) & ((\rx_cam|hcont\(7)) # ((\rx_cam|hcont\(8)) # (!\rx_cam|LessThan1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_cam|hcont\(9),
	datab => \rx_cam|hcont\(7),
	datac => \rx_cam|hcont\(8),
	datad => \rx_cam|LessThan1~1_combout\,
	combout => \rx_cam|LessThan1~2_combout\);

-- Location: IOIBUF_X24_Y0_N8
\HREF~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_HREF,
	o => \HREF~input_o\);

-- Location: FF_X43_Y18_N19
\rx_cam|HREF_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pclk~input_o\,
	asdata => \HREF~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_cam|HREF_reg~q\);

-- Location: LCCOMB_X43_Y20_N8
\rx_cam|vcont[4]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_cam|vcont[4]~21_combout\ = (\rx_cam|vcont\(4) & (\rx_cam|vcont[3]~20\ $ (GND))) # (!\rx_cam|vcont\(4) & (!\rx_cam|vcont[3]~20\ & VCC))
-- \rx_cam|vcont[4]~22\ = CARRY((\rx_cam|vcont\(4) & !\rx_cam|vcont[3]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rx_cam|vcont\(4),
	datad => VCC,
	cin => \rx_cam|vcont[3]~20\,
	combout => \rx_cam|vcont[4]~21_combout\,
	cout => \rx_cam|vcont[4]~22\);

-- Location: LCCOMB_X43_Y20_N10
\rx_cam|vcont[5]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_cam|vcont[5]~23_combout\ = (\rx_cam|vcont\(5) & (!\rx_cam|vcont[4]~22\)) # (!\rx_cam|vcont\(5) & ((\rx_cam|vcont[4]~22\) # (GND)))
-- \rx_cam|vcont[5]~24\ = CARRY((!\rx_cam|vcont[4]~22\) # (!\rx_cam|vcont\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rx_cam|vcont\(5),
	datad => VCC,
	cin => \rx_cam|vcont[4]~22\,
	combout => \rx_cam|vcont[5]~23_combout\,
	cout => \rx_cam|vcont[5]~24\);

-- Location: LCCOMB_X43_Y20_N12
\rx_cam|vcont[6]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_cam|vcont[6]~25_combout\ = (\rx_cam|vcont\(6) & (\rx_cam|vcont[5]~24\ $ (GND))) # (!\rx_cam|vcont\(6) & (!\rx_cam|vcont[5]~24\ & VCC))
-- \rx_cam|vcont[6]~26\ = CARRY((\rx_cam|vcont\(6) & !\rx_cam|vcont[5]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rx_cam|vcont\(6),
	datad => VCC,
	cin => \rx_cam|vcont[5]~24\,
	combout => \rx_cam|vcont[6]~25_combout\,
	cout => \rx_cam|vcont[6]~26\);

-- Location: FF_X43_Y20_N13
\rx_cam|vcont[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pclk~input_o\,
	d => \rx_cam|vcont[6]~25_combout\,
	sclr => \rx_cam|ALT_INV_Equal1~0_combout\,
	ena => \rx_cam|vcont[1]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_cam|vcont\(6));

-- Location: LCCOMB_X43_Y20_N14
\rx_cam|vcont[7]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_cam|vcont[7]~27_combout\ = (\rx_cam|vcont\(7) & (!\rx_cam|vcont[6]~26\)) # (!\rx_cam|vcont\(7) & ((\rx_cam|vcont[6]~26\) # (GND)))
-- \rx_cam|vcont[7]~28\ = CARRY((!\rx_cam|vcont[6]~26\) # (!\rx_cam|vcont\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rx_cam|vcont\(7),
	datad => VCC,
	cin => \rx_cam|vcont[6]~26\,
	combout => \rx_cam|vcont[7]~27_combout\,
	cout => \rx_cam|vcont[7]~28\);

-- Location: FF_X43_Y20_N15
\rx_cam|vcont[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pclk~input_o\,
	d => \rx_cam|vcont[7]~27_combout\,
	sclr => \rx_cam|ALT_INV_Equal1~0_combout\,
	ena => \rx_cam|vcont[1]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_cam|vcont\(7));

-- Location: LCCOMB_X43_Y20_N16
\rx_cam|vcont[8]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_cam|vcont[8]~29_combout\ = \rx_cam|vcont[7]~28\ $ (!\rx_cam|vcont\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \rx_cam|vcont\(8),
	cin => \rx_cam|vcont[7]~28\,
	combout => \rx_cam|vcont[8]~29_combout\);

-- Location: FF_X43_Y20_N17
\rx_cam|vcont[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pclk~input_o\,
	d => \rx_cam|vcont[8]~29_combout\,
	sclr => \rx_cam|ALT_INV_Equal1~0_combout\,
	ena => \rx_cam|vcont[1]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_cam|vcont\(8));

-- Location: LCCOMB_X43_Y20_N24
\rx_cam|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_cam|Equal0~1_combout\ = (\rx_cam|vcont\(6) & (\rx_cam|vcont\(7) & \rx_cam|vcont\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_cam|vcont\(6),
	datac => \rx_cam|vcont\(7),
	datad => \rx_cam|vcont\(8),
	combout => \rx_cam|Equal0~1_combout\);

-- Location: LCCOMB_X43_Y20_N26
\rx_cam|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_cam|Equal0~0_combout\ = (\rx_cam|vcont\(1) & (\rx_cam|vcont\(2) & (\rx_cam|vcont\(4) & \rx_cam|vcont\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_cam|vcont\(1),
	datab => \rx_cam|vcont\(2),
	datac => \rx_cam|vcont\(4),
	datad => \rx_cam|vcont\(0),
	combout => \rx_cam|Equal0~0_combout\);

-- Location: LCCOMB_X43_Y20_N30
\rx_cam|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_cam|Equal0~2_combout\ = (!\rx_cam|vcont\(5) & (\rx_cam|Equal0~1_combout\ & (\rx_cam|Equal0~0_combout\ & \rx_cam|vcont\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_cam|vcont\(5),
	datab => \rx_cam|Equal0~1_combout\,
	datac => \rx_cam|Equal0~0_combout\,
	datad => \rx_cam|vcont\(3),
	combout => \rx_cam|Equal0~2_combout\);

-- Location: LCCOMB_X43_Y20_N18
\rx_cam|vcont[1]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_cam|vcont[1]~31_combout\ = (\rx_cam|est\(0) & (!\rx_cam|est\(1) & (\rx_cam|Equal0~2_combout\))) # (!\rx_cam|est\(0) & (\rx_cam|est\(1) & ((\rx_cam|LessThan1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_cam|est\(0),
	datab => \rx_cam|est\(1),
	datac => \rx_cam|Equal0~2_combout\,
	datad => \rx_cam|LessThan1~2_combout\,
	combout => \rx_cam|vcont[1]~31_combout\);

-- Location: FF_X43_Y20_N11
\rx_cam|vcont[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pclk~input_o\,
	d => \rx_cam|vcont[5]~23_combout\,
	sclr => \rx_cam|ALT_INV_Equal1~0_combout\,
	ena => \rx_cam|vcont[1]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_cam|vcont\(5));

-- Location: LCCOMB_X43_Y20_N28
\rx_cam|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_cam|LessThan0~0_combout\ = ((!\rx_cam|vcont\(5) & ((!\rx_cam|vcont\(3)) # (!\rx_cam|Equal0~0_combout\)))) # (!\rx_cam|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_cam|vcont\(5),
	datab => \rx_cam|Equal0~1_combout\,
	datac => \rx_cam|Equal0~0_combout\,
	datad => \rx_cam|vcont\(3),
	combout => \rx_cam|LessThan0~0_combout\);

-- Location: LCCOMB_X43_Y18_N16
\rx_cam|Selector31~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_cam|Selector31~2_combout\ = (\rx_cam|est\(0) & (\rx_cam|HREF_reg~q\ & \rx_cam|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rx_cam|est\(0),
	datac => \rx_cam|HREF_reg~q\,
	datad => \rx_cam|LessThan0~0_combout\,
	combout => \rx_cam|Selector31~2_combout\);

-- Location: LCCOMB_X43_Y18_N12
\rx_cam|Selector31~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_cam|Selector31~3_combout\ = (\rx_cam|est\(1) & (!\rx_cam|LessThan1~2_combout\ & (!\rx_cam|est\(0)))) # (!\rx_cam|est\(1) & (((\rx_cam|Selector31~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_cam|LessThan1~2_combout\,
	datab => \rx_cam|est\(0),
	datac => \rx_cam|est\(1),
	datad => \rx_cam|Selector31~2_combout\,
	combout => \rx_cam|Selector31~3_combout\);

-- Location: FF_X43_Y18_N13
\rx_cam|est[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pclk~input_o\,
	d => \rx_cam|Selector31~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_cam|est\(1));

-- Location: IOIBUF_X24_Y0_N1
\VSYNC~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_VSYNC,
	o => \VSYNC~input_o\);

-- Location: FF_X43_Y18_N23
\rx_cam|VSYNC_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pclk~input_o\,
	asdata => \VSYNC~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_cam|VSYNC_reg~q\);

-- Location: LCCOMB_X43_Y18_N30
\rx_cam|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_cam|Selector0~0_combout\ = (\rx_cam|est\(0) & ((\rx_cam|est\(1)) # ((!\rx_cam|Equal0~2_combout\)))) # (!\rx_cam|est\(0) & (!\rx_cam|est\(1) & (\rx_cam|VSYNC_reg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_cam|est\(0),
	datab => \rx_cam|est\(1),
	datac => \rx_cam|VSYNC_reg~q\,
	datad => \rx_cam|Equal0~2_combout\,
	combout => \rx_cam|Selector0~0_combout\);

-- Location: LCCOMB_X43_Y18_N28
\rx_cam|Selector0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_cam|Selector0~1_combout\ = (\rx_cam|Selector0~0_combout\ & ((\rx_cam|flg_strt~q\) # (!\rx_cam|est\(0)))) # (!\rx_cam|Selector0~0_combout\ & (!\rx_cam|est\(0) & \rx_cam|flg_strt~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_cam|Selector0~0_combout\,
	datab => \rx_cam|est\(0),
	datac => \rx_cam|flg_strt~q\,
	combout => \rx_cam|Selector0~1_combout\);

-- Location: FF_X43_Y18_N29
\rx_cam|flg_strt\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pclk~input_o\,
	d => \rx_cam|Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_cam|flg_strt~q\);

-- Location: LCCOMB_X43_Y18_N22
\rx_cam|est[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_cam|est[0]~1_combout\ = (\rx_cam|est\(1) & (!\rx_cam|LessThan1~2_combout\)) # (!\rx_cam|est\(1) & (((!\rx_cam|VSYNC_reg~q\ & \rx_cam|flg_strt~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_cam|LessThan1~2_combout\,
	datab => \rx_cam|est\(1),
	datac => \rx_cam|VSYNC_reg~q\,
	datad => \rx_cam|flg_strt~q\,
	combout => \rx_cam|est[0]~1_combout\);

-- Location: LCCOMB_X43_Y18_N18
\rx_cam|est[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_cam|est[0]~0_combout\ = (\rx_cam|LessThan0~0_combout\ & (\rx_cam|HREF_reg~q\)) # (!\rx_cam|LessThan0~0_combout\ & ((\rx_cam|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rx_cam|LessThan0~0_combout\,
	datac => \rx_cam|HREF_reg~q\,
	datad => \rx_cam|Equal0~2_combout\,
	combout => \rx_cam|est[0]~0_combout\);

-- Location: LCCOMB_X43_Y18_N26
\rx_cam|est[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_cam|est[0]~2_combout\ = (\rx_cam|est\(0) & (!\rx_cam|est\(1) & ((!\rx_cam|est[0]~0_combout\)))) # (!\rx_cam|est\(0) & (\rx_cam|est\(1) $ ((\rx_cam|est[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_cam|est\(1),
	datab => \rx_cam|est[0]~1_combout\,
	datac => \rx_cam|est\(0),
	datad => \rx_cam|est[0]~0_combout\,
	combout => \rx_cam|est[0]~2_combout\);

-- Location: FF_X43_Y18_N27
\rx_cam|est[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pclk~input_o\,
	d => \rx_cam|est[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_cam|est\(0));

-- Location: LCCOMB_X44_Y18_N28
\rx_cam|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_cam|Equal1~0_combout\ = (!\rx_cam|est\(0) & \rx_cam|est\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_cam|est\(0),
	datad => \rx_cam|est\(1),
	combout => \rx_cam|Equal1~0_combout\);

-- Location: FF_X43_Y20_N1
\rx_cam|vcont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pclk~input_o\,
	d => \rx_cam|vcont[0]~13_combout\,
	sclr => \rx_cam|ALT_INV_Equal1~0_combout\,
	ena => \rx_cam|vcont[1]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_cam|vcont\(0));

-- Location: LCCOMB_X43_Y20_N2
\rx_cam|vcont[1]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_cam|vcont[1]~15_combout\ = (\rx_cam|vcont\(1) & (!\rx_cam|vcont[0]~14\)) # (!\rx_cam|vcont\(1) & ((\rx_cam|vcont[0]~14\) # (GND)))
-- \rx_cam|vcont[1]~16\ = CARRY((!\rx_cam|vcont[0]~14\) # (!\rx_cam|vcont\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rx_cam|vcont\(1),
	datad => VCC,
	cin => \rx_cam|vcont[0]~14\,
	combout => \rx_cam|vcont[1]~15_combout\,
	cout => \rx_cam|vcont[1]~16\);

-- Location: FF_X43_Y20_N3
\rx_cam|vcont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pclk~input_o\,
	d => \rx_cam|vcont[1]~15_combout\,
	sclr => \rx_cam|ALT_INV_Equal1~0_combout\,
	ena => \rx_cam|vcont[1]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_cam|vcont\(1));

-- Location: LCCOMB_X43_Y20_N4
\rx_cam|vcont[2]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_cam|vcont[2]~17_combout\ = (\rx_cam|vcont\(2) & (\rx_cam|vcont[1]~16\ $ (GND))) # (!\rx_cam|vcont\(2) & (!\rx_cam|vcont[1]~16\ & VCC))
-- \rx_cam|vcont[2]~18\ = CARRY((\rx_cam|vcont\(2) & !\rx_cam|vcont[1]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rx_cam|vcont\(2),
	datad => VCC,
	cin => \rx_cam|vcont[1]~16\,
	combout => \rx_cam|vcont[2]~17_combout\,
	cout => \rx_cam|vcont[2]~18\);

-- Location: FF_X43_Y20_N5
\rx_cam|vcont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pclk~input_o\,
	d => \rx_cam|vcont[2]~17_combout\,
	sclr => \rx_cam|ALT_INV_Equal1~0_combout\,
	ena => \rx_cam|vcont[1]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_cam|vcont\(2));

-- Location: LCCOMB_X43_Y20_N6
\rx_cam|vcont[3]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_cam|vcont[3]~19_combout\ = (\rx_cam|vcont\(3) & (!\rx_cam|vcont[2]~18\)) # (!\rx_cam|vcont\(3) & ((\rx_cam|vcont[2]~18\) # (GND)))
-- \rx_cam|vcont[3]~20\ = CARRY((!\rx_cam|vcont[2]~18\) # (!\rx_cam|vcont\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rx_cam|vcont\(3),
	datad => VCC,
	cin => \rx_cam|vcont[2]~18\,
	combout => \rx_cam|vcont[3]~19_combout\,
	cout => \rx_cam|vcont[3]~20\);

-- Location: FF_X43_Y20_N7
\rx_cam|vcont[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pclk~input_o\,
	d => \rx_cam|vcont[3]~19_combout\,
	sclr => \rx_cam|ALT_INV_Equal1~0_combout\,
	ena => \rx_cam|vcont[1]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_cam|vcont\(3));

-- Location: FF_X43_Y20_N9
\rx_cam|vcont[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pclk~input_o\,
	d => \rx_cam|vcont[4]~21_combout\,
	sclr => \rx_cam|ALT_INV_Equal1~0_combout\,
	ena => \rx_cam|vcont[1]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_cam|vcont\(4));

-- Location: LCCOMB_X44_Y20_N6
\rx_cam|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_cam|Add0~0_combout\ = (\rx_cam|vcont\(0) & (\rx_cam|vcont\(2) $ (VCC))) # (!\rx_cam|vcont\(0) & (\rx_cam|vcont\(2) & VCC))
-- \rx_cam|Add0~1\ = CARRY((\rx_cam|vcont\(0) & \rx_cam|vcont\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_cam|vcont\(0),
	datab => \rx_cam|vcont\(2),
	datad => VCC,
	combout => \rx_cam|Add0~0_combout\,
	cout => \rx_cam|Add0~1\);

-- Location: LCCOMB_X44_Y20_N8
\rx_cam|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_cam|Add0~2_combout\ = (\rx_cam|vcont\(1) & ((\rx_cam|vcont\(3) & (\rx_cam|Add0~1\ & VCC)) # (!\rx_cam|vcont\(3) & (!\rx_cam|Add0~1\)))) # (!\rx_cam|vcont\(1) & ((\rx_cam|vcont\(3) & (!\rx_cam|Add0~1\)) # (!\rx_cam|vcont\(3) & ((\rx_cam|Add0~1\) # 
-- (GND)))))
-- \rx_cam|Add0~3\ = CARRY((\rx_cam|vcont\(1) & (!\rx_cam|vcont\(3) & !\rx_cam|Add0~1\)) # (!\rx_cam|vcont\(1) & ((!\rx_cam|Add0~1\) # (!\rx_cam|vcont\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rx_cam|vcont\(1),
	datab => \rx_cam|vcont\(3),
	datad => VCC,
	cin => \rx_cam|Add0~1\,
	combout => \rx_cam|Add0~2_combout\,
	cout => \rx_cam|Add0~3\);

-- Location: LCCOMB_X44_Y20_N10
\rx_cam|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_cam|Add0~4_combout\ = ((\rx_cam|vcont\(4) $ (\rx_cam|vcont\(2) $ (!\rx_cam|Add0~3\)))) # (GND)
-- \rx_cam|Add0~5\ = CARRY((\rx_cam|vcont\(4) & ((\rx_cam|vcont\(2)) # (!\rx_cam|Add0~3\))) # (!\rx_cam|vcont\(4) & (\rx_cam|vcont\(2) & !\rx_cam|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rx_cam|vcont\(4),
	datab => \rx_cam|vcont\(2),
	datad => VCC,
	cin => \rx_cam|Add0~3\,
	combout => \rx_cam|Add0~4_combout\,
	cout => \rx_cam|Add0~5\);

-- Location: LCCOMB_X44_Y20_N12
\rx_cam|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_cam|Add0~6_combout\ = (\rx_cam|vcont\(5) & ((\rx_cam|vcont\(3) & (\rx_cam|Add0~5\ & VCC)) # (!\rx_cam|vcont\(3) & (!\rx_cam|Add0~5\)))) # (!\rx_cam|vcont\(5) & ((\rx_cam|vcont\(3) & (!\rx_cam|Add0~5\)) # (!\rx_cam|vcont\(3) & ((\rx_cam|Add0~5\) # 
-- (GND)))))
-- \rx_cam|Add0~7\ = CARRY((\rx_cam|vcont\(5) & (!\rx_cam|vcont\(3) & !\rx_cam|Add0~5\)) # (!\rx_cam|vcont\(5) & ((!\rx_cam|Add0~5\) # (!\rx_cam|vcont\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rx_cam|vcont\(5),
	datab => \rx_cam|vcont\(3),
	datad => VCC,
	cin => \rx_cam|Add0~5\,
	combout => \rx_cam|Add0~6_combout\,
	cout => \rx_cam|Add0~7\);

-- Location: LCCOMB_X44_Y20_N14
\rx_cam|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_cam|Add0~8_combout\ = ((\rx_cam|vcont\(4) $ (\rx_cam|vcont\(6) $ (!\rx_cam|Add0~7\)))) # (GND)
-- \rx_cam|Add0~9\ = CARRY((\rx_cam|vcont\(4) & ((\rx_cam|vcont\(6)) # (!\rx_cam|Add0~7\))) # (!\rx_cam|vcont\(4) & (\rx_cam|vcont\(6) & !\rx_cam|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rx_cam|vcont\(4),
	datab => \rx_cam|vcont\(6),
	datad => VCC,
	cin => \rx_cam|Add0~7\,
	combout => \rx_cam|Add0~8_combout\,
	cout => \rx_cam|Add0~9\);

-- Location: LCCOMB_X45_Y20_N6
\rx_cam|addr_wr[7]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_cam|addr_wr[7]~14_combout\ = (\rx_cam|vcont\(0) & (\rx_cam|hcont\(7) $ (VCC))) # (!\rx_cam|vcont\(0) & (\rx_cam|hcont\(7) & VCC))
-- \rx_cam|addr_wr[7]~15\ = CARRY((\rx_cam|vcont\(0) & \rx_cam|hcont\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_cam|vcont\(0),
	datab => \rx_cam|hcont\(7),
	datad => VCC,
	combout => \rx_cam|addr_wr[7]~14_combout\,
	cout => \rx_cam|addr_wr[7]~15\);

-- Location: LCCOMB_X45_Y20_N8
\rx_cam|addr_wr[8]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_cam|addr_wr[8]~16_combout\ = (\rx_cam|hcont\(8) & ((\rx_cam|vcont\(1) & (\rx_cam|addr_wr[7]~15\ & VCC)) # (!\rx_cam|vcont\(1) & (!\rx_cam|addr_wr[7]~15\)))) # (!\rx_cam|hcont\(8) & ((\rx_cam|vcont\(1) & (!\rx_cam|addr_wr[7]~15\)) # (!\rx_cam|vcont\(1) 
-- & ((\rx_cam|addr_wr[7]~15\) # (GND)))))
-- \rx_cam|addr_wr[8]~17\ = CARRY((\rx_cam|hcont\(8) & (!\rx_cam|vcont\(1) & !\rx_cam|addr_wr[7]~15\)) # (!\rx_cam|hcont\(8) & ((!\rx_cam|addr_wr[7]~15\) # (!\rx_cam|vcont\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rx_cam|hcont\(8),
	datab => \rx_cam|vcont\(1),
	datad => VCC,
	cin => \rx_cam|addr_wr[7]~15\,
	combout => \rx_cam|addr_wr[8]~16_combout\,
	cout => \rx_cam|addr_wr[8]~17\);

-- Location: LCCOMB_X45_Y20_N10
\rx_cam|addr_wr[9]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_cam|addr_wr[9]~18_combout\ = ((\rx_cam|hcont\(9) $ (\rx_cam|Add0~0_combout\ $ (!\rx_cam|addr_wr[8]~17\)))) # (GND)
-- \rx_cam|addr_wr[9]~19\ = CARRY((\rx_cam|hcont\(9) & ((\rx_cam|Add0~0_combout\) # (!\rx_cam|addr_wr[8]~17\))) # (!\rx_cam|hcont\(9) & (\rx_cam|Add0~0_combout\ & !\rx_cam|addr_wr[8]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rx_cam|hcont\(9),
	datab => \rx_cam|Add0~0_combout\,
	datad => VCC,
	cin => \rx_cam|addr_wr[8]~17\,
	combout => \rx_cam|addr_wr[9]~18_combout\,
	cout => \rx_cam|addr_wr[9]~19\);

-- Location: LCCOMB_X45_Y20_N12
\rx_cam|addr_wr[10]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_cam|addr_wr[10]~20_combout\ = (\rx_cam|Add0~2_combout\ & (!\rx_cam|addr_wr[9]~19\)) # (!\rx_cam|Add0~2_combout\ & ((\rx_cam|addr_wr[9]~19\) # (GND)))
-- \rx_cam|addr_wr[10]~21\ = CARRY((!\rx_cam|addr_wr[9]~19\) # (!\rx_cam|Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rx_cam|Add0~2_combout\,
	datad => VCC,
	cin => \rx_cam|addr_wr[9]~19\,
	combout => \rx_cam|addr_wr[10]~20_combout\,
	cout => \rx_cam|addr_wr[10]~21\);

-- Location: LCCOMB_X45_Y20_N14
\rx_cam|addr_wr[11]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_cam|addr_wr[11]~22_combout\ = (\rx_cam|Add0~4_combout\ & (\rx_cam|addr_wr[10]~21\ $ (GND))) # (!\rx_cam|Add0~4_combout\ & (!\rx_cam|addr_wr[10]~21\ & VCC))
-- \rx_cam|addr_wr[11]~23\ = CARRY((\rx_cam|Add0~4_combout\ & !\rx_cam|addr_wr[10]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rx_cam|Add0~4_combout\,
	datad => VCC,
	cin => \rx_cam|addr_wr[10]~21\,
	combout => \rx_cam|addr_wr[11]~22_combout\,
	cout => \rx_cam|addr_wr[11]~23\);

-- Location: LCCOMB_X45_Y20_N16
\rx_cam|addr_wr[12]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_cam|addr_wr[12]~24_combout\ = (\rx_cam|Add0~6_combout\ & (!\rx_cam|addr_wr[11]~23\)) # (!\rx_cam|Add0~6_combout\ & ((\rx_cam|addr_wr[11]~23\) # (GND)))
-- \rx_cam|addr_wr[12]~25\ = CARRY((!\rx_cam|addr_wr[11]~23\) # (!\rx_cam|Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rx_cam|Add0~6_combout\,
	datad => VCC,
	cin => \rx_cam|addr_wr[11]~23\,
	combout => \rx_cam|addr_wr[12]~24_combout\,
	cout => \rx_cam|addr_wr[12]~25\);

-- Location: LCCOMB_X45_Y20_N18
\rx_cam|addr_wr[13]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_cam|addr_wr[13]~26_combout\ = (\rx_cam|Add0~8_combout\ & (\rx_cam|addr_wr[12]~25\ $ (GND))) # (!\rx_cam|Add0~8_combout\ & (!\rx_cam|addr_wr[12]~25\ & VCC))
-- \rx_cam|addr_wr[13]~27\ = CARRY((\rx_cam|Add0~8_combout\ & !\rx_cam|addr_wr[12]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rx_cam|Add0~8_combout\,
	datad => VCC,
	cin => \rx_cam|addr_wr[12]~25\,
	combout => \rx_cam|addr_wr[13]~26_combout\,
	cout => \rx_cam|addr_wr[13]~27\);

-- Location: LCCOMB_X44_Y18_N26
\rx_cam|addr_wr[13]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_cam|addr_wr[13]~38_combout\ = (!\rx_cam|est\(0) & (\rx_cam|ybyte~q\ & (!\rx_cam|LessThan1~2_combout\ & \rx_cam|est\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_cam|est\(0),
	datab => \rx_cam|ybyte~q\,
	datac => \rx_cam|LessThan1~2_combout\,
	datad => \rx_cam|est\(1),
	combout => \rx_cam|addr_wr[13]~38_combout\);

-- Location: FF_X45_Y20_N19
\rx_cam|addr_wr[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pclk~input_o\,
	d => \rx_cam|addr_wr[13]~26_combout\,
	ena => \rx_cam|addr_wr[13]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_cam|addr_wr\(13));

-- Location: FF_X45_Y19_N13
\frame_buffer|s_wradd[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \frame_buffer|clk_cam~clkctrl_outclk\,
	asdata => \rx_cam|addr_wr\(13),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frame_buffer|s_wradd\(13));

-- Location: LCCOMB_X44_Y20_N16
\rx_cam|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_cam|Add0~10_combout\ = (\rx_cam|vcont\(7) & ((\rx_cam|vcont\(5) & (\rx_cam|Add0~9\ & VCC)) # (!\rx_cam|vcont\(5) & (!\rx_cam|Add0~9\)))) # (!\rx_cam|vcont\(7) & ((\rx_cam|vcont\(5) & (!\rx_cam|Add0~9\)) # (!\rx_cam|vcont\(5) & ((\rx_cam|Add0~9\) # 
-- (GND)))))
-- \rx_cam|Add0~11\ = CARRY((\rx_cam|vcont\(7) & (!\rx_cam|vcont\(5) & !\rx_cam|Add0~9\)) # (!\rx_cam|vcont\(7) & ((!\rx_cam|Add0~9\) # (!\rx_cam|vcont\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rx_cam|vcont\(7),
	datab => \rx_cam|vcont\(5),
	datad => VCC,
	cin => \rx_cam|Add0~9\,
	combout => \rx_cam|Add0~10_combout\,
	cout => \rx_cam|Add0~11\);

-- Location: LCCOMB_X44_Y20_N18
\rx_cam|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_cam|Add0~12_combout\ = ((\rx_cam|vcont\(8) $ (\rx_cam|vcont\(6) $ (!\rx_cam|Add0~11\)))) # (GND)
-- \rx_cam|Add0~13\ = CARRY((\rx_cam|vcont\(8) & ((\rx_cam|vcont\(6)) # (!\rx_cam|Add0~11\))) # (!\rx_cam|vcont\(8) & (\rx_cam|vcont\(6) & !\rx_cam|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rx_cam|vcont\(8),
	datab => \rx_cam|vcont\(6),
	datad => VCC,
	cin => \rx_cam|Add0~11\,
	combout => \rx_cam|Add0~12_combout\,
	cout => \rx_cam|Add0~13\);

-- Location: LCCOMB_X45_Y20_N20
\rx_cam|addr_wr[14]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_cam|addr_wr[14]~28_combout\ = (\rx_cam|Add0~10_combout\ & (!\rx_cam|addr_wr[13]~27\)) # (!\rx_cam|Add0~10_combout\ & ((\rx_cam|addr_wr[13]~27\) # (GND)))
-- \rx_cam|addr_wr[14]~29\ = CARRY((!\rx_cam|addr_wr[13]~27\) # (!\rx_cam|Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rx_cam|Add0~10_combout\,
	datad => VCC,
	cin => \rx_cam|addr_wr[13]~27\,
	combout => \rx_cam|addr_wr[14]~28_combout\,
	cout => \rx_cam|addr_wr[14]~29\);

-- Location: LCCOMB_X45_Y20_N22
\rx_cam|addr_wr[15]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_cam|addr_wr[15]~30_combout\ = (\rx_cam|Add0~12_combout\ & (\rx_cam|addr_wr[14]~29\ $ (GND))) # (!\rx_cam|Add0~12_combout\ & (!\rx_cam|addr_wr[14]~29\ & VCC))
-- \rx_cam|addr_wr[15]~31\ = CARRY((\rx_cam|Add0~12_combout\ & !\rx_cam|addr_wr[14]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rx_cam|Add0~12_combout\,
	datad => VCC,
	cin => \rx_cam|addr_wr[14]~29\,
	combout => \rx_cam|addr_wr[15]~30_combout\,
	cout => \rx_cam|addr_wr[15]~31\);

-- Location: FF_X45_Y20_N23
\rx_cam|addr_wr[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pclk~input_o\,
	d => \rx_cam|addr_wr[15]~30_combout\,
	ena => \rx_cam|addr_wr[13]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_cam|addr_wr\(15));

-- Location: FF_X45_Y19_N5
\frame_buffer|s_wradd[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \frame_buffer|clk_cam~clkctrl_outclk\,
	asdata => \rx_cam|addr_wr\(15),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frame_buffer|s_wradd\(15));

-- Location: LCCOMB_X44_Y20_N20
\rx_cam|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_cam|Add0~14_combout\ = (\rx_cam|vcont\(7) & (!\rx_cam|Add0~13\)) # (!\rx_cam|vcont\(7) & ((\rx_cam|Add0~13\) # (GND)))
-- \rx_cam|Add0~15\ = CARRY((!\rx_cam|Add0~13\) # (!\rx_cam|vcont\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rx_cam|vcont\(7),
	datad => VCC,
	cin => \rx_cam|Add0~13\,
	combout => \rx_cam|Add0~14_combout\,
	cout => \rx_cam|Add0~15\);

-- Location: LCCOMB_X45_Y20_N24
\rx_cam|addr_wr[16]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_cam|addr_wr[16]~32_combout\ = (\rx_cam|Add0~14_combout\ & (!\rx_cam|addr_wr[15]~31\)) # (!\rx_cam|Add0~14_combout\ & ((\rx_cam|addr_wr[15]~31\) # (GND)))
-- \rx_cam|addr_wr[16]~33\ = CARRY((!\rx_cam|addr_wr[15]~31\) # (!\rx_cam|Add0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rx_cam|Add0~14_combout\,
	datad => VCC,
	cin => \rx_cam|addr_wr[15]~31\,
	combout => \rx_cam|addr_wr[16]~32_combout\,
	cout => \rx_cam|addr_wr[16]~33\);

-- Location: FF_X45_Y20_N25
\rx_cam|addr_wr[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pclk~input_o\,
	d => \rx_cam|addr_wr[16]~32_combout\,
	ena => \rx_cam|addr_wr[13]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_cam|addr_wr\(16));

-- Location: FF_X46_Y19_N15
\frame_buffer|s_wradd[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \frame_buffer|clk_cam~clkctrl_outclk\,
	asdata => \rx_cam|addr_wr\(16),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frame_buffer|s_wradd\(16));

-- Location: LCCOMB_X44_Y20_N22
\rx_cam|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_cam|Add0~16_combout\ = (\rx_cam|vcont\(8) & (\rx_cam|Add0~15\ $ (GND))) # (!\rx_cam|vcont\(8) & (!\rx_cam|Add0~15\ & VCC))
-- \rx_cam|Add0~17\ = CARRY((\rx_cam|vcont\(8) & !\rx_cam|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rx_cam|vcont\(8),
	datad => VCC,
	cin => \rx_cam|Add0~15\,
	combout => \rx_cam|Add0~16_combout\,
	cout => \rx_cam|Add0~17\);

-- Location: LCCOMB_X44_Y20_N24
\rx_cam|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_cam|Add0~18_combout\ = \rx_cam|Add0~17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \rx_cam|Add0~17\,
	combout => \rx_cam|Add0~18_combout\);

-- Location: LCCOMB_X45_Y20_N26
\rx_cam|addr_wr[17]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_cam|addr_wr[17]~34_combout\ = (\rx_cam|Add0~16_combout\ & (\rx_cam|addr_wr[16]~33\ $ (GND))) # (!\rx_cam|Add0~16_combout\ & (!\rx_cam|addr_wr[16]~33\ & VCC))
-- \rx_cam|addr_wr[17]~35\ = CARRY((\rx_cam|Add0~16_combout\ & !\rx_cam|addr_wr[16]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rx_cam|Add0~16_combout\,
	datad => VCC,
	cin => \rx_cam|addr_wr[16]~33\,
	combout => \rx_cam|addr_wr[17]~34_combout\,
	cout => \rx_cam|addr_wr[17]~35\);

-- Location: LCCOMB_X45_Y20_N28
\rx_cam|addr_wr[18]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_cam|addr_wr[18]~36_combout\ = \rx_cam|addr_wr[17]~35\ $ (\rx_cam|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \rx_cam|Add0~18_combout\,
	cin => \rx_cam|addr_wr[17]~35\,
	combout => \rx_cam|addr_wr[18]~36_combout\);

-- Location: FF_X45_Y20_N29
\rx_cam|addr_wr[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pclk~input_o\,
	d => \rx_cam|addr_wr[18]~36_combout\,
	ena => \rx_cam|addr_wr[13]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_cam|addr_wr\(18));

-- Location: FF_X46_Y19_N29
\frame_buffer|s_wradd[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \frame_buffer|clk_cam~clkctrl_outclk\,
	asdata => \rx_cam|addr_wr\(18),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frame_buffer|s_wradd\(18));

-- Location: FF_X45_Y20_N27
\rx_cam|addr_wr[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pclk~input_o\,
	d => \rx_cam|addr_wr[17]~34_combout\,
	ena => \rx_cam|addr_wr[13]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_cam|addr_wr\(17));

-- Location: FF_X46_Y19_N5
\frame_buffer|s_wradd[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \frame_buffer|clk_cam~clkctrl_outclk\,
	asdata => \rx_cam|addr_wr\(17),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frame_buffer|s_wradd\(17));

-- Location: LCCOMB_X46_Y19_N28
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode591w[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode591w[2]~2_combout\ = (\frame_buffer|s_wradd\(16) & (!\frame_buffer|s_wradd\(18) & \frame_buffer|s_wradd\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \frame_buffer|s_wradd\(16),
	datac => \frame_buffer|s_wradd\(18),
	datad => \frame_buffer|s_wradd\(17),
	combout => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode591w[2]~2_combout\);

-- Location: FF_X45_Y20_N21
\rx_cam|addr_wr[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pclk~input_o\,
	d => \rx_cam|addr_wr[14]~28_combout\,
	ena => \rx_cam|addr_wr[13]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_cam|addr_wr\(14));

-- Location: FF_X45_Y19_N27
\frame_buffer|s_wradd[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \frame_buffer|clk_cam~clkctrl_outclk\,
	asdata => \rx_cam|addr_wr\(14),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frame_buffer|s_wradd\(14));

-- Location: LCCOMB_X46_Y18_N6
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode756w[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode756w\(3) = (!\frame_buffer|s_wradd\(13) & (\frame_buffer|s_wradd\(15) & (\frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode591w[2]~2_combout\ & 
-- \frame_buffer|s_wradd\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frame_buffer|s_wradd\(13),
	datab => \frame_buffer|s_wradd\(15),
	datac => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode591w[2]~2_combout\,
	datad => \frame_buffer|s_wradd\(14),
	combout => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode756w\(3));

-- Location: IOIBUF_X54_Y0_N29
\D[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(7),
	o => \D[7]~input_o\);

-- Location: LCCOMB_X43_Y18_N20
\rx_cam|d_reg[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_cam|d_reg[7]~feeder_combout\ = \D[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \D[7]~input_o\,
	combout => \rx_cam|d_reg[7]~feeder_combout\);

-- Location: FF_X43_Y18_N21
\rx_cam|d_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pclk~input_o\,
	d => \rx_cam|d_reg[7]~feeder_combout\,
	ena => \rx_cam|addr_wr[13]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_cam|d_reg\(7));

-- Location: LCCOMB_X45_Y18_N20
\rx_cam|dato~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_cam|dato~feeder_combout\ = \rx_cam|d_reg\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_cam|d_reg\(7),
	combout => \rx_cam|dato~feeder_combout\);

-- Location: FF_X45_Y18_N21
\rx_cam|dato\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pclk~input_o\,
	d => \rx_cam|dato~feeder_combout\,
	ena => \rx_cam|addr_wr[13]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_cam|dato~q\);

-- Location: LCCOMB_X45_Y18_N0
\frame_buffer|s_wrdata[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|s_wrdata[0]~feeder_combout\ = \rx_cam|dato~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rx_cam|dato~q\,
	combout => \frame_buffer|s_wrdata[0]~feeder_combout\);

-- Location: FF_X45_Y18_N1
\frame_buffer|s_wrdata[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \frame_buffer|clk_cam~clkctrl_outclk\,
	d => \frame_buffer|s_wrdata[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frame_buffer|s_wrdata\(0));

-- Location: LCCOMB_X45_Y18_N22
\rx_cam|addr_wr[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_cam|addr_wr[0]~feeder_combout\ = \rx_cam|hcont\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rx_cam|hcont\(0),
	combout => \rx_cam|addr_wr[0]~feeder_combout\);

-- Location: FF_X45_Y18_N23
\rx_cam|addr_wr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pclk~input_o\,
	d => \rx_cam|addr_wr[0]~feeder_combout\,
	ena => \rx_cam|addr_wr[13]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_cam|addr_wr\(0));

-- Location: LCCOMB_X45_Y18_N2
\frame_buffer|s_wradd[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|s_wradd[0]~feeder_combout\ = \rx_cam|addr_wr\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_cam|addr_wr\(0),
	combout => \frame_buffer|s_wradd[0]~feeder_combout\);

-- Location: FF_X45_Y18_N3
\frame_buffer|s_wradd[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \frame_buffer|clk_cam~clkctrl_outclk\,
	d => \frame_buffer|s_wradd[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frame_buffer|s_wradd\(0));

-- Location: LCCOMB_X45_Y18_N8
\rx_cam|addr_wr[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_cam|addr_wr[1]~feeder_combout\ = \rx_cam|hcont\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rx_cam|hcont\(1),
	combout => \rx_cam|addr_wr[1]~feeder_combout\);

-- Location: FF_X45_Y18_N9
\rx_cam|addr_wr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pclk~input_o\,
	d => \rx_cam|addr_wr[1]~feeder_combout\,
	ena => \rx_cam|addr_wr[13]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_cam|addr_wr\(1));

-- Location: LCCOMB_X45_Y18_N16
\frame_buffer|s_wradd[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|s_wradd[1]~feeder_combout\ = \rx_cam|addr_wr\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_cam|addr_wr\(1),
	combout => \frame_buffer|s_wradd[1]~feeder_combout\);

-- Location: FF_X45_Y18_N17
\frame_buffer|s_wradd[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \frame_buffer|clk_cam~clkctrl_outclk\,
	d => \frame_buffer|s_wradd[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frame_buffer|s_wradd\(1));

-- Location: LCCOMB_X45_Y18_N26
\rx_cam|addr_wr[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_cam|addr_wr[2]~feeder_combout\ = \rx_cam|hcont\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rx_cam|hcont\(2),
	combout => \rx_cam|addr_wr[2]~feeder_combout\);

-- Location: FF_X45_Y18_N27
\rx_cam|addr_wr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pclk~input_o\,
	d => \rx_cam|addr_wr[2]~feeder_combout\,
	ena => \rx_cam|addr_wr[13]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_cam|addr_wr\(2));

-- Location: LCCOMB_X45_Y18_N6
\frame_buffer|s_wradd[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|s_wradd[2]~feeder_combout\ = \rx_cam|addr_wr\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_cam|addr_wr\(2),
	combout => \frame_buffer|s_wradd[2]~feeder_combout\);

-- Location: FF_X45_Y18_N7
\frame_buffer|s_wradd[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \frame_buffer|clk_cam~clkctrl_outclk\,
	d => \frame_buffer|s_wradd[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frame_buffer|s_wradd\(2));

-- Location: LCCOMB_X45_Y18_N28
\rx_cam|addr_wr[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_cam|addr_wr[3]~feeder_combout\ = \rx_cam|hcont\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_cam|hcont\(3),
	combout => \rx_cam|addr_wr[3]~feeder_combout\);

-- Location: FF_X45_Y18_N29
\rx_cam|addr_wr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pclk~input_o\,
	d => \rx_cam|addr_wr[3]~feeder_combout\,
	ena => \rx_cam|addr_wr[13]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_cam|addr_wr\(3));

-- Location: LCCOMB_X45_Y18_N12
\frame_buffer|s_wradd[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|s_wradd[3]~feeder_combout\ = \rx_cam|addr_wr\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_cam|addr_wr\(3),
	combout => \frame_buffer|s_wradd[3]~feeder_combout\);

-- Location: FF_X45_Y18_N13
\frame_buffer|s_wradd[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \frame_buffer|clk_cam~clkctrl_outclk\,
	d => \frame_buffer|s_wradd[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frame_buffer|s_wradd\(3));

-- Location: LCCOMB_X45_Y18_N14
\rx_cam|addr_wr[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_cam|addr_wr[4]~feeder_combout\ = \rx_cam|hcont\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_cam|hcont\(4),
	combout => \rx_cam|addr_wr[4]~feeder_combout\);

-- Location: FF_X45_Y18_N15
\rx_cam|addr_wr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pclk~input_o\,
	d => \rx_cam|addr_wr[4]~feeder_combout\,
	ena => \rx_cam|addr_wr[13]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_cam|addr_wr\(4));

-- Location: LCCOMB_X45_Y18_N10
\frame_buffer|s_wradd[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|s_wradd[4]~feeder_combout\ = \rx_cam|addr_wr\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_cam|addr_wr\(4),
	combout => \frame_buffer|s_wradd[4]~feeder_combout\);

-- Location: FF_X45_Y18_N11
\frame_buffer|s_wradd[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \frame_buffer|clk_cam~clkctrl_outclk\,
	d => \frame_buffer|s_wradd[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frame_buffer|s_wradd\(4));

-- Location: LCCOMB_X45_Y18_N4
\rx_cam|addr_wr[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_cam|addr_wr[5]~feeder_combout\ = \rx_cam|hcont\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_cam|hcont\(5),
	combout => \rx_cam|addr_wr[5]~feeder_combout\);

-- Location: FF_X45_Y18_N5
\rx_cam|addr_wr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pclk~input_o\,
	d => \rx_cam|addr_wr[5]~feeder_combout\,
	ena => \rx_cam|addr_wr[13]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_cam|addr_wr\(5));

-- Location: LCCOMB_X45_Y18_N24
\frame_buffer|s_wradd[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|s_wradd[5]~feeder_combout\ = \rx_cam|addr_wr\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_cam|addr_wr\(5),
	combout => \frame_buffer|s_wradd[5]~feeder_combout\);

-- Location: FF_X45_Y18_N25
\frame_buffer|s_wradd[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \frame_buffer|clk_cam~clkctrl_outclk\,
	d => \frame_buffer|s_wradd[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frame_buffer|s_wradd\(5));

-- Location: LCCOMB_X45_Y18_N30
\rx_cam|addr_wr[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_cam|addr_wr[6]~feeder_combout\ = \rx_cam|hcont\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rx_cam|hcont\(6),
	combout => \rx_cam|addr_wr[6]~feeder_combout\);

-- Location: FF_X45_Y18_N31
\rx_cam|addr_wr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pclk~input_o\,
	d => \rx_cam|addr_wr[6]~feeder_combout\,
	ena => \rx_cam|addr_wr[13]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_cam|addr_wr\(6));

-- Location: FF_X45_Y18_N19
\frame_buffer|s_wradd[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \frame_buffer|clk_cam~clkctrl_outclk\,
	asdata => \rx_cam|addr_wr\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frame_buffer|s_wradd\(6));

-- Location: LCCOMB_X46_Y20_N28
\rx_cam|addr_wr[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_cam|addr_wr[7]~feeder_combout\ = \rx_cam|addr_wr[7]~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rx_cam|addr_wr[7]~14_combout\,
	combout => \rx_cam|addr_wr[7]~feeder_combout\);

-- Location: FF_X46_Y20_N29
\rx_cam|addr_wr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pclk~input_o\,
	d => \rx_cam|addr_wr[7]~feeder_combout\,
	ena => \rx_cam|addr_wr[13]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_cam|addr_wr\(7));

-- Location: LCCOMB_X46_Y20_N18
\frame_buffer|s_wradd[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|s_wradd[7]~feeder_combout\ = \rx_cam|addr_wr\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_cam|addr_wr\(7),
	combout => \frame_buffer|s_wradd[7]~feeder_combout\);

-- Location: FF_X46_Y20_N19
\frame_buffer|s_wradd[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \frame_buffer|clk_cam~clkctrl_outclk\,
	d => \frame_buffer|s_wradd[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frame_buffer|s_wradd\(7));

-- Location: FF_X45_Y20_N9
\rx_cam|addr_wr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pclk~input_o\,
	d => \rx_cam|addr_wr[8]~16_combout\,
	ena => \rx_cam|addr_wr[13]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_cam|addr_wr\(8));

-- Location: LCCOMB_X45_Y20_N4
\frame_buffer|s_wradd[8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|s_wradd[8]~feeder_combout\ = \rx_cam|addr_wr\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rx_cam|addr_wr\(8),
	combout => \frame_buffer|s_wradd[8]~feeder_combout\);

-- Location: FF_X45_Y20_N5
\frame_buffer|s_wradd[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \frame_buffer|clk_cam~clkctrl_outclk\,
	d => \frame_buffer|s_wradd[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frame_buffer|s_wradd\(8));

-- Location: FF_X45_Y20_N11
\rx_cam|addr_wr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pclk~input_o\,
	d => \rx_cam|addr_wr[9]~18_combout\,
	ena => \rx_cam|addr_wr[13]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_cam|addr_wr\(9));

-- Location: LCCOMB_X45_Y20_N2
\frame_buffer|s_wradd[9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|s_wradd[9]~feeder_combout\ = \rx_cam|addr_wr\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_cam|addr_wr\(9),
	combout => \frame_buffer|s_wradd[9]~feeder_combout\);

-- Location: FF_X45_Y20_N3
\frame_buffer|s_wradd[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \frame_buffer|clk_cam~clkctrl_outclk\,
	d => \frame_buffer|s_wradd[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frame_buffer|s_wradd\(9));

-- Location: FF_X45_Y20_N13
\rx_cam|addr_wr[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pclk~input_o\,
	d => \rx_cam|addr_wr[10]~20_combout\,
	ena => \rx_cam|addr_wr[13]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_cam|addr_wr\(10));

-- Location: FF_X45_Y20_N7
\frame_buffer|s_wradd[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \frame_buffer|clk_cam~clkctrl_outclk\,
	asdata => \rx_cam|addr_wr\(10),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frame_buffer|s_wradd\(10));

-- Location: FF_X45_Y20_N15
\rx_cam|addr_wr[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pclk~input_o\,
	d => \rx_cam|addr_wr[11]~22_combout\,
	ena => \rx_cam|addr_wr[13]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_cam|addr_wr\(11));

-- Location: LCCOMB_X45_Y20_N30
\frame_buffer|s_wradd[11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|s_wradd[11]~feeder_combout\ = \rx_cam|addr_wr\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rx_cam|addr_wr\(11),
	combout => \frame_buffer|s_wradd[11]~feeder_combout\);

-- Location: FF_X45_Y20_N31
\frame_buffer|s_wradd[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \frame_buffer|clk_cam~clkctrl_outclk\,
	d => \frame_buffer|s_wradd[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frame_buffer|s_wradd\(11));

-- Location: FF_X45_Y20_N17
\rx_cam|addr_wr[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pclk~input_o\,
	d => \rx_cam|addr_wr[12]~24_combout\,
	ena => \rx_cam|addr_wr[13]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_cam|addr_wr\(12));

-- Location: LCCOMB_X45_Y20_N0
\frame_buffer|s_wradd[12]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|s_wradd[12]~feeder_combout\ = \rx_cam|addr_wr\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_cam|addr_wr\(12),
	combout => \frame_buffer|s_wradd[12]~feeder_combout\);

-- Location: FF_X45_Y20_N1
\frame_buffer|s_wradd[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \frame_buffer|clk_cam~clkctrl_outclk\,
	d => \frame_buffer|s_wradd[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frame_buffer|s_wradd\(12));

-- Location: LCCOMB_X49_Y21_N0
\vga|pos_h~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga|pos_h~6_combout\ = (\vga|h_count\(0) & (\vga|LessThan5~0_combout\ & \vga|posiciones~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga|h_count\(0),
	datac => \vga|LessThan5~0_combout\,
	datad => \vga|posiciones~4_combout\,
	combout => \vga|pos_h~6_combout\);

-- Location: FF_X49_Y21_N1
\vga|pos_h[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga|clk_b~clkctrl_outclk\,
	d => \vga|pos_h~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|pos_h\(0));

-- Location: LCCOMB_X49_Y21_N22
\vga|pos_h~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga|pos_h~7_combout\ = (\vga|h_count\(1) & (\vga|LessThan5~0_combout\ & \vga|posiciones~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|h_count\(1),
	datac => \vga|LessThan5~0_combout\,
	datad => \vga|posiciones~4_combout\,
	combout => \vga|pos_h~7_combout\);

-- Location: FF_X49_Y21_N23
\vga|pos_h[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga|clk_b~clkctrl_outclk\,
	d => \vga|pos_h~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|pos_h\(1));

-- Location: LCCOMB_X49_Y21_N24
\vga|pos_h~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga|pos_h~8_combout\ = (\vga|h_count\(2) & (\vga|LessThan5~0_combout\ & \vga|posiciones~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|h_count\(2),
	datac => \vga|LessThan5~0_combout\,
	datad => \vga|posiciones~4_combout\,
	combout => \vga|pos_h~8_combout\);

-- Location: FF_X49_Y21_N25
\vga|pos_h[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga|clk_b~clkctrl_outclk\,
	d => \vga|pos_h~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|pos_h\(2));

-- Location: LCCOMB_X49_Y21_N10
\vga|pos_h~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga|pos_h~9_combout\ = (\vga|h_count\(3) & (\vga|LessThan5~0_combout\ & \vga|posiciones~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|h_count\(3),
	datac => \vga|LessThan5~0_combout\,
	datad => \vga|posiciones~4_combout\,
	combout => \vga|pos_h~9_combout\);

-- Location: FF_X49_Y21_N11
\vga|pos_h[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga|clk_b~clkctrl_outclk\,
	d => \vga|pos_h~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|pos_h\(3));

-- Location: FF_X51_Y21_N13
\vga|pos_h[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga|clk_b~clkctrl_outclk\,
	d => \vga|pos_h[4]~10_combout\,
	sclr => \vga|posiciones~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|pos_h\(4));

-- Location: FF_X51_Y21_N15
\vga|pos_h[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga|clk_b~clkctrl_outclk\,
	d => \vga|pos_h[5]~12_combout\,
	sclr => \vga|posiciones~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|pos_h\(5));

-- Location: FF_X51_Y21_N17
\vga|pos_h[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga|clk_b~clkctrl_outclk\,
	d => \vga|pos_h[6]~14_combout\,
	sclr => \vga|posiciones~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|pos_h\(6));

-- Location: M9K_X33_Y18_N0
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a30\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memoria:frame_buffer|Memory:Memory_inst|altsyncram:altsyncram_component|altsyncram_6fn3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 307200,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 307200,
	port_b_logical_ram_width => 1,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode756w\(3),
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a30_PORTADATAIN_bus\,
	portaaddr => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a30_PORTAADDR_bus\,
	portbaddr => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a30_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a30_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X45_Y19_N18
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode766w[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode766w\(3) = (\frame_buffer|s_wradd\(14) & (\frame_buffer|s_wradd\(15) & (\frame_buffer|s_wradd\(13) & 
-- \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode591w[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frame_buffer|s_wradd\(14),
	datab => \frame_buffer|s_wradd\(15),
	datac => \frame_buffer|s_wradd\(13),
	datad => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode591w[2]~2_combout\,
	combout => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode766w\(3));

-- Location: M9K_X33_Y23_N0
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a31\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memoria:frame_buffer|Memory:Memory_inst|altsyncram:altsyncram_component|altsyncram_6fn3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 307200,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 307200,
	port_b_logical_ram_width => 1,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode766w\(3),
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a31_PORTADATAIN_bus\,
	portaaddr => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a31_PORTAADDR_bus\,
	portbaddr => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a31_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a31_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X51_Y20_N8
\vga|R~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga|R~4_combout\ = (\frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(0) & ((\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a31~portbdataout\))) # 
-- (!\frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(0) & (\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a30~portbdataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(0),
	datab => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a30~portbdataout\,
	datad => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a31~portbdataout\,
	combout => \vga|R~4_combout\);

-- Location: LCCOMB_X46_Y19_N6
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode736w[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode736w\(3) = (!\frame_buffer|s_wradd\(13) & (\frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode591w[2]~2_combout\ & (\frame_buffer|s_wradd\(15) & 
-- !\frame_buffer|s_wradd\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frame_buffer|s_wradd\(13),
	datab => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode591w[2]~2_combout\,
	datac => \frame_buffer|s_wradd\(15),
	datad => \frame_buffer|s_wradd\(14),
	combout => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode736w\(3));

-- Location: M9K_X53_Y24_N0
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a28\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memoria:frame_buffer|Memory:Memory_inst|altsyncram:altsyncram_component|altsyncram_6fn3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 307200,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 307200,
	port_b_logical_ram_width => 1,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode736w\(3),
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a28_PORTADATAIN_bus\,
	portaaddr => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a28_PORTAADDR_bus\,
	portbaddr => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a28_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a28_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X47_Y19_N24
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode746w[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode746w\(3) = (\frame_buffer|s_wradd\(15) & (\frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode591w[2]~2_combout\ & (\frame_buffer|s_wradd\(13) & 
-- !\frame_buffer|s_wradd\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frame_buffer|s_wradd\(15),
	datab => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode591w[2]~2_combout\,
	datac => \frame_buffer|s_wradd\(13),
	datad => \frame_buffer|s_wradd\(14),
	combout => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode746w\(3));

-- Location: M9K_X53_Y27_N0
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a29\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memoria:frame_buffer|Memory:Memory_inst|altsyncram:altsyncram_component|altsyncram_6fn3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 307200,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 307200,
	port_b_logical_ram_width => 1,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode746w\(3),
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a29_PORTADATAIN_bus\,
	portaaddr => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a29_PORTAADDR_bus\,
	portbaddr => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a29_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a29_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X52_Y20_N4
\vga|R~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga|R~5_combout\ = (\frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(0) & ((\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a29~portbdataout\))) # 
-- (!\frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(0) & (\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a28~portbdataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(0),
	datac => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a28~portbdataout\,
	datad => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a29~portbdataout\,
	combout => \vga|R~5_combout\);

-- Location: LCCOMB_X51_Y20_N26
\vga|R~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga|R~6_combout\ = (\frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(2) & ((\frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(1) & (\vga|R~4_combout\)) # 
-- (!\frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(1) & ((\vga|R~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(2),
	datab => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(1),
	datac => \vga|R~4_combout\,
	datad => \vga|R~5_combout\,
	combout => \vga|R~6_combout\);

-- Location: LCCOMB_X45_Y19_N16
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode706w[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode706w\(3) = (!\frame_buffer|s_wradd\(14) & (!\frame_buffer|s_wradd\(15) & (\frame_buffer|s_wradd\(13) & 
-- \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode591w[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frame_buffer|s_wradd\(14),
	datab => \frame_buffer|s_wradd\(15),
	datac => \frame_buffer|s_wradd\(13),
	datad => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode591w[2]~2_combout\,
	combout => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode706w\(3));

-- Location: M9K_X53_Y13_N0
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a25\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memoria:frame_buffer|Memory:Memory_inst|altsyncram:altsyncram_component|altsyncram_6fn3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 307200,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 307200,
	port_b_logical_ram_width => 1,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode706w\(3),
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a25_PORTADATAIN_bus\,
	portaaddr => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a25_PORTAADDR_bus\,
	portbaddr => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a25_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a25_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X47_Y19_N14
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode695w[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode695w\(3) = (!\frame_buffer|s_wradd\(15) & (\frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode591w[2]~2_combout\ & (!\frame_buffer|s_wradd\(13) & 
-- !\frame_buffer|s_wradd\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frame_buffer|s_wradd\(15),
	datab => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode591w[2]~2_combout\,
	datac => \frame_buffer|s_wradd\(13),
	datad => \frame_buffer|s_wradd\(14),
	combout => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode695w\(3));

-- Location: M9K_X33_Y13_N0
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a24\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memoria:frame_buffer|Memory:Memory_inst|altsyncram:altsyncram_component|altsyncram_6fn3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 307200,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 307200,
	port_b_logical_ram_width => 1,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode695w\(3),
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a24_PORTADATAIN_bus\,
	portaaddr => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a24_PORTAADDR_bus\,
	portbaddr => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a24_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a24_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X49_Y20_N30
\vga|R~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga|R~2_combout\ = (!\frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(1) & ((\frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(0) & 
-- (\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a25~portbdataout\)) # (!\frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(0) & 
-- ((\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a24~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(1),
	datab => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(0),
	datac => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a25~portbdataout\,
	datad => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a24~portbdataout\,
	combout => \vga|R~2_combout\);

-- Location: LCCOMB_X46_Y19_N24
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode716w[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode716w\(3) = (\frame_buffer|s_wradd\(14) & (\frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode591w[2]~2_combout\ & (!\frame_buffer|s_wradd\(15) & 
-- !\frame_buffer|s_wradd\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frame_buffer|s_wradd\(14),
	datab => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode591w[2]~2_combout\,
	datac => \frame_buffer|s_wradd\(15),
	datad => \frame_buffer|s_wradd\(13),
	combout => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode716w\(3));

-- Location: M9K_X53_Y28_N0
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a26\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memoria:frame_buffer|Memory:Memory_inst|altsyncram:altsyncram_component|altsyncram_6fn3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 307200,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 307200,
	port_b_logical_ram_width => 1,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode716w\(3),
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a26_PORTADATAIN_bus\,
	portaaddr => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a26_PORTAADDR_bus\,
	portbaddr => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a26_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a26_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X47_Y19_N8
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode726w[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode726w\(3) = (!\frame_buffer|s_wradd\(15) & (\frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode591w[2]~2_combout\ & (\frame_buffer|s_wradd\(13) & 
-- \frame_buffer|s_wradd\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frame_buffer|s_wradd\(15),
	datab => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode591w[2]~2_combout\,
	datac => \frame_buffer|s_wradd\(13),
	datad => \frame_buffer|s_wradd\(14),
	combout => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode726w\(3));

-- Location: M9K_X73_Y19_N0
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a27\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memoria:frame_buffer|Memory:Memory_inst|altsyncram:altsyncram_component|altsyncram_6fn3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 307200,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 307200,
	port_b_logical_ram_width => 1,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode726w\(3),
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a27_PORTADATAIN_bus\,
	portaaddr => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a27_PORTAADDR_bus\,
	portbaddr => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a27_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a27_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X49_Y20_N28
\vga|R~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga|R~1_combout\ = (\frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(1) & ((\frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(0) & 
-- ((\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a27~portbdataout\))) # (!\frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(0) & 
-- (\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a26~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(1),
	datab => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a26~portbdataout\,
	datac => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(0),
	datad => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a27~portbdataout\,
	combout => \vga|R~1_combout\);

-- Location: LCCOMB_X49_Y20_N16
\vga|R~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga|R~3_combout\ = (!\frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(2) & ((\vga|R~2_combout\) # (\vga|R~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(2),
	datac => \vga|R~2_combout\,
	datad => \vga|R~1_combout\,
	combout => \vga|R~3_combout\);

-- Location: LCCOMB_X46_Y19_N2
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode591w[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode591w[2]~1_combout\ = (!\frame_buffer|s_wradd\(16) & (\frame_buffer|s_wradd\(17) & !\frame_buffer|s_wradd\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \frame_buffer|s_wradd\(16),
	datac => \frame_buffer|s_wradd\(17),
	datad => \frame_buffer|s_wradd\(18),
	combout => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode591w[2]~1_combout\);

-- Location: LCCOMB_X45_Y19_N10
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode633w[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode633w\(3) = (\frame_buffer|s_wradd\(13) & (!\frame_buffer|s_wradd\(15) & (\frame_buffer|s_wradd\(14) & 
-- \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode591w[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frame_buffer|s_wradd\(13),
	datab => \frame_buffer|s_wradd\(15),
	datac => \frame_buffer|s_wradd\(14),
	datad => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode591w[2]~1_combout\,
	combout => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode633w\(3));

-- Location: M9K_X73_Y20_N0
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a19\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memoria:frame_buffer|Memory:Memory_inst|altsyncram:altsyncram_component|altsyncram_6fn3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 307200,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 307200,
	port_b_logical_ram_width => 1,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode633w\(3),
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a19_PORTADATAIN_bus\,
	portaaddr => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a19_PORTAADDR_bus\,
	portbaddr => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a19_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a19_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X45_Y19_N6
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode613w[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode613w\(3) = (\frame_buffer|s_wradd\(13) & (!\frame_buffer|s_wradd\(15) & (!\frame_buffer|s_wradd\(14) & 
-- \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode591w[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frame_buffer|s_wradd\(13),
	datab => \frame_buffer|s_wradd\(15),
	datac => \frame_buffer|s_wradd\(14),
	datad => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode591w[2]~1_combout\,
	combout => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode613w\(3));

-- Location: M9K_X33_Y22_N0
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a17\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memoria:frame_buffer|Memory:Memory_inst|altsyncram:altsyncram_component|altsyncram_6fn3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 307200,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 307200,
	port_b_logical_ram_width => 1,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode613w\(3),
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a17_PORTADATAIN_bus\,
	portaaddr => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a17_PORTAADDR_bus\,
	portbaddr => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a17_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a17_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X45_Y19_N4
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode623w[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode623w\(3) = (\frame_buffer|s_wradd\(14) & (!\frame_buffer|s_wradd\(13) & (!\frame_buffer|s_wradd\(15) & 
-- \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode591w[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frame_buffer|s_wradd\(14),
	datab => \frame_buffer|s_wradd\(13),
	datac => \frame_buffer|s_wradd\(15),
	datad => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode591w[2]~1_combout\,
	combout => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode623w\(3));

-- Location: M9K_X33_Y19_N0
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a18\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memoria:frame_buffer|Memory:Memory_inst|altsyncram:altsyncram_component|altsyncram_6fn3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 307200,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 307200,
	port_b_logical_ram_width => 1,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode623w\(3),
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a18_PORTADATAIN_bus\,
	portaaddr => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a18_PORTAADDR_bus\,
	portbaddr => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a18_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a18_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X45_Y19_N8
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode602w[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode602w\(3) = (!\frame_buffer|s_wradd\(13) & (!\frame_buffer|s_wradd\(15) & (!\frame_buffer|s_wradd\(14) & 
-- \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode591w[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frame_buffer|s_wradd\(13),
	datab => \frame_buffer|s_wradd\(15),
	datac => \frame_buffer|s_wradd\(14),
	datad => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode591w[2]~1_combout\,
	combout => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode602w\(3));

-- Location: M9K_X33_Y24_N0
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a16\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memoria:frame_buffer|Memory:Memory_inst|altsyncram:altsyncram_component|altsyncram_6fn3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 307200,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 307200,
	port_b_logical_ram_width => 1,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode602w\(3),
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a16_PORTADATAIN_bus\,
	portaaddr => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a16_PORTAADDR_bus\,
	portbaddr => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a16_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a16_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X51_Y20_N12
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~21_combout\ = (\frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(0) & 
-- (\frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(1))) # (!\frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(0) & 
-- ((\frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(1) & (\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a18~portbdataout\)) # 
-- (!\frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(1) & ((\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a16~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(0),
	datab => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(1),
	datac => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a18~portbdataout\,
	datad => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a16~portbdataout\,
	combout => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~21_combout\);

-- Location: LCCOMB_X51_Y20_N14
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~22_combout\ = (\frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(0) & ((\frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~21_combout\ & 
-- (\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a19~portbdataout\)) # (!\frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~21_combout\ & 
-- ((\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a17~portbdataout\))))) # (!\frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(0) & 
-- (((\frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(0),
	datab => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a19~portbdataout\,
	datac => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a17~portbdataout\,
	datad => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~21_combout\,
	combout => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~22_combout\);

-- Location: LCCOMB_X46_Y19_N0
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode653w[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode653w\(3) = (\frame_buffer|s_wradd\(13) & (\frame_buffer|s_wradd\(15) & (!\frame_buffer|s_wradd\(14) & 
-- \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode591w[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frame_buffer|s_wradd\(13),
	datab => \frame_buffer|s_wradd\(15),
	datac => \frame_buffer|s_wradd\(14),
	datad => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode591w[2]~1_combout\,
	combout => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode653w\(3));

-- Location: M9K_X53_Y26_N0
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a21\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memoria:frame_buffer|Memory:Memory_inst|altsyncram:altsyncram_component|altsyncram_6fn3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 307200,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 307200,
	port_b_logical_ram_width => 1,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode653w\(3),
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a21_PORTADATAIN_bus\,
	portaaddr => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a21_PORTAADDR_bus\,
	portbaddr => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a21_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a21_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X45_Y19_N0
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode673w[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode673w\(3) = (\frame_buffer|s_wradd\(14) & (\frame_buffer|s_wradd\(13) & (\frame_buffer|s_wradd\(15) & 
-- \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode591w[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frame_buffer|s_wradd\(14),
	datab => \frame_buffer|s_wradd\(13),
	datac => \frame_buffer|s_wradd\(15),
	datad => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode591w[2]~1_combout\,
	combout => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode673w\(3));

-- Location: M9K_X33_Y27_N0
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a23\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memoria:frame_buffer|Memory:Memory_inst|altsyncram:altsyncram_component|altsyncram_6fn3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 307200,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 307200,
	port_b_logical_ram_width => 1,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode673w\(3),
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a23_PORTADATAIN_bus\,
	portaaddr => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a23_PORTAADDR_bus\,
	portbaddr => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a23_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a23_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X46_Y19_N22
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode643w[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode643w\(3) = (!\frame_buffer|s_wradd\(13) & (\frame_buffer|s_wradd\(15) & (!\frame_buffer|s_wradd\(14) & 
-- \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode591w[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frame_buffer|s_wradd\(13),
	datab => \frame_buffer|s_wradd\(15),
	datac => \frame_buffer|s_wradd\(14),
	datad => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode591w[2]~1_combout\,
	combout => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode643w\(3));

-- Location: M9K_X33_Y16_N0
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a20\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memoria:frame_buffer|Memory:Memory_inst|altsyncram:altsyncram_component|altsyncram_6fn3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 307200,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 307200,
	port_b_logical_ram_width => 1,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode643w\(3),
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a20_PORTADATAIN_bus\,
	portaaddr => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a20_PORTAADDR_bus\,
	portbaddr => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a20_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a20_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X45_Y19_N2
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode663w[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode663w\(3) = (!\frame_buffer|s_wradd\(13) & (\frame_buffer|s_wradd\(15) & (\frame_buffer|s_wradd\(14) & 
-- \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode591w[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frame_buffer|s_wradd\(13),
	datab => \frame_buffer|s_wradd\(15),
	datac => \frame_buffer|s_wradd\(14),
	datad => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode591w[2]~1_combout\,
	combout => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode663w\(3));

-- Location: M9K_X33_Y20_N0
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a22\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memoria:frame_buffer|Memory:Memory_inst|altsyncram:altsyncram_component|altsyncram_6fn3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 307200,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 307200,
	port_b_logical_ram_width => 1,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode663w\(3),
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a22_PORTADATAIN_bus\,
	portaaddr => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a22_PORTAADDR_bus\,
	portbaddr => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a22_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a22_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X51_Y20_N16
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~19_combout\ = (\frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(0) & 
-- (\frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(1))) # (!\frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(0) & 
-- ((\frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(1) & ((\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a22~portbdataout\))) # 
-- (!\frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(1) & (\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a20~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(0),
	datab => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(1),
	datac => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a20~portbdataout\,
	datad => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a22~portbdataout\,
	combout => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~19_combout\);

-- Location: LCCOMB_X51_Y20_N22
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~20_combout\ = (\frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(0) & ((\frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~19_combout\ & 
-- ((\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a23~portbdataout\))) # (!\frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~19_combout\ & 
-- (\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a21~portbdataout\)))) # (!\frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(0) & 
-- (((\frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(0),
	datab => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a21~portbdataout\,
	datac => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a23~portbdataout\,
	datad => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~19_combout\,
	combout => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~20_combout\);

-- Location: LCCOMB_X50_Y20_N28
\vga|R~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga|R~0_combout\ = (!\frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(3) & ((\frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(2) & 
-- ((\frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~20_combout\))) # (!\frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(2) & 
-- (\frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(2),
	datab => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(3),
	datac => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~22_combout\,
	datad => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~20_combout\,
	combout => \vga|R~0_combout\);

-- Location: LCCOMB_X50_Y20_N30
\vga|R~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga|R~7_combout\ = (\vga|R~0_combout\) # ((\frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(3) & ((\vga|R~6_combout\) # (\vga|R~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(3),
	datab => \vga|R~6_combout\,
	datac => \vga|R~3_combout\,
	datad => \vga|R~0_combout\,
	combout => \vga|R~7_combout\);

-- Location: LCCOMB_X50_Y19_N4
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~17_combout\ = (!\frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(3) & \frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(3),
	datad => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(2),
	combout => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~17_combout\);

-- Location: LCCOMB_X46_Y19_N20
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode426w[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode426w[1]~0_combout\ = (!\frame_buffer|s_wradd\(18) & (!\frame_buffer|s_wradd\(17) & (!\frame_buffer|s_wradd\(16) & \frame_buffer|s_wradd\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frame_buffer|s_wradd\(18),
	datab => \frame_buffer|s_wradd\(17),
	datac => \frame_buffer|s_wradd\(16),
	datad => \frame_buffer|s_wradd\(13),
	combout => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode426w[1]~0_combout\);

-- Location: LCCOMB_X46_Y19_N26
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode466w[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode466w\(3) = (\frame_buffer|s_wradd\(15) & (!\frame_buffer|s_wradd\(14) & \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode426w[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \frame_buffer|s_wradd\(15),
	datac => \frame_buffer|s_wradd\(14),
	datad => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode426w[1]~0_combout\,
	combout => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode466w\(3));

-- Location: M9K_X33_Y17_N0
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a5\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memoria:frame_buffer|Memory:Memory_inst|altsyncram:altsyncram_component|altsyncram_6fn3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 307200,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 307200,
	port_b_logical_ram_width => 1,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode466w\(3),
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a5_PORTADATAIN_bus\,
	portaaddr => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\,
	portbaddr => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a5_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a5_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X45_Y19_N28
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode409w[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode409w\(1) = (\frame_buffer|s_wradd\(13)) # ((\frame_buffer|s_wradd\(18)) # ((\frame_buffer|s_wradd\(17)) # (\frame_buffer|s_wradd\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frame_buffer|s_wradd\(13),
	datab => \frame_buffer|s_wradd\(18),
	datac => \frame_buffer|s_wradd\(17),
	datad => \frame_buffer|s_wradd\(16),
	combout => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode409w\(1));

-- Location: LCCOMB_X45_Y19_N12
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode456w[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode456w\(3) = (!\frame_buffer|s_wradd\(14) & (\frame_buffer|s_wradd\(15) & !\frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode409w\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frame_buffer|s_wradd\(14),
	datab => \frame_buffer|s_wradd\(15),
	datad => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode409w\(1),
	combout => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode456w\(3));

-- Location: M9K_X53_Y19_N0
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a4\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memoria:frame_buffer|Memory:Memory_inst|altsyncram:altsyncram_component|altsyncram_6fn3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 307200,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 307200,
	port_b_logical_ram_width => 1,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode456w\(3),
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portaaddr => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\,
	portbaddr => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a4_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a4_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X45_Y19_N24
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode476w[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode476w\(3) = (\frame_buffer|s_wradd\(15) & (\frame_buffer|s_wradd\(14) & !\frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode409w\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \frame_buffer|s_wradd\(15),
	datac => \frame_buffer|s_wradd\(14),
	datad => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode409w\(1),
	combout => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode476w\(3));

-- Location: M9K_X53_Y15_N0
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a6\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memoria:frame_buffer|Memory:Memory_inst|altsyncram:altsyncram_component|altsyncram_6fn3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 307200,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 307200,
	port_b_logical_ram_width => 1,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode476w\(3),
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a6_PORTADATAIN_bus\,
	portaaddr => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\,
	portbaddr => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a6_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a6_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X50_Y19_N0
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~13_combout\ = (\frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(0) & 
-- (((\frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(1))))) # (!\frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(0) & 
-- ((\frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(1) & ((\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a6~portbdataout\))) # 
-- (!\frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(1) & (\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a4~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(0),
	datab => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a4~portbdataout\,
	datac => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(1),
	datad => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a6~portbdataout\,
	combout => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~13_combout\);

-- Location: LCCOMB_X46_Y19_N16
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode486w[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode486w\(3) = (\frame_buffer|s_wradd\(15) & (\frame_buffer|s_wradd\(14) & \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode426w[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \frame_buffer|s_wradd\(15),
	datac => \frame_buffer|s_wradd\(14),
	datad => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode426w[1]~0_combout\,
	combout => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode486w\(3));

-- Location: M9K_X53_Y12_N0
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a7\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memoria:frame_buffer|Memory:Memory_inst|altsyncram:altsyncram_component|altsyncram_6fn3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 307200,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 307200,
	port_b_logical_ram_width => 1,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode486w\(3),
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a7_PORTADATAIN_bus\,
	portaaddr => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\,
	portbaddr => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a7_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a7_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X49_Y19_N30
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~14_combout\ = (\frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(0) & ((\frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~13_combout\ & 
-- ((\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a7~portbdataout\))) # (!\frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~13_combout\ & 
-- (\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a5~portbdataout\)))) # (!\frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(0) & 
-- (((\frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a5~portbdataout\,
	datab => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(0),
	datac => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~13_combout\,
	datad => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a7~portbdataout\,
	combout => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~14_combout\);

-- Location: LCCOMB_X46_Y19_N4
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode777w[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode777w[3]~0_combout\ = (!\frame_buffer|s_wradd\(16) & (!\frame_buffer|s_wradd\(17) & \frame_buffer|s_wradd\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \frame_buffer|s_wradd\(16),
	datac => \frame_buffer|s_wradd\(17),
	datad => \frame_buffer|s_wradd\(18),
	combout => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode777w[3]~0_combout\);

-- Location: LCCOMB_X47_Y19_N4
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode839w[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode839w\(3) = (\frame_buffer|s_wradd\(13) & (\frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode777w[3]~0_combout\ & (!\frame_buffer|s_wradd\(14) & 
-- \frame_buffer|s_wradd\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frame_buffer|s_wradd\(13),
	datab => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode777w[3]~0_combout\,
	datac => \frame_buffer|s_wradd\(14),
	datad => \frame_buffer|s_wradd\(15),
	combout => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode839w\(3));

-- Location: M9K_X53_Y21_N0
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a37\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memoria:frame_buffer|Memory:Memory_inst|altsyncram:altsyncram_component|altsyncram_6fn3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 307200,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 12,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 2,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 307200,
	port_b_logical_ram_width => 1,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode839w\(3),
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a37_PORTADATAIN_bus\,
	portaaddr => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a37_PORTAADDR_bus\,
	portbaddr => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a37_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a37_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X47_Y19_N2
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode829w[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode829w\(3) = (!\frame_buffer|s_wradd\(13) & (\frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode777w[3]~0_combout\ & (!\frame_buffer|s_wradd\(14) & 
-- \frame_buffer|s_wradd\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frame_buffer|s_wradd\(13),
	datab => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode777w[3]~0_combout\,
	datac => \frame_buffer|s_wradd\(14),
	datad => \frame_buffer|s_wradd\(15),
	combout => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode829w\(3));

-- Location: M9K_X53_Y20_N0
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a36\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memoria:frame_buffer|Memory:Memory_inst|altsyncram:altsyncram_component|altsyncram_6fn3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 307200,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 307200,
	port_b_logical_ram_width => 1,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode829w\(3),
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a36_PORTADATAIN_bus\,
	portaaddr => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a36_PORTAADDR_bus\,
	portbaddr => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a36_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a36_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X50_Y19_N30
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~15_combout\ = (\frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(5) & ((\frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(0) 
-- & (\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a37~portbdataout\)) # (!\frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(0) & 
-- ((\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a36~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(5),
	datab => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a37~portbdataout\,
	datac => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(0),
	datad => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a36~portbdataout\,
	combout => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~15_combout\);

-- Location: LCCOMB_X49_Y19_N16
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~16_combout\ = (\frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(5) & (!\frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(1) 
-- & ((\frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~15_combout\)))) # (!\frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(5) & 
-- ((\frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~14_combout\) # ((!\frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(1) & 
-- \frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(5),
	datab => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(1),
	datac => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~14_combout\,
	datad => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~15_combout\,
	combout => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~16_combout\);

-- Location: LCCOMB_X46_Y19_N14
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode591w[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode591w[2]~0_combout\ = (!\frame_buffer|s_wradd\(17) & (\frame_buffer|s_wradd\(16) & !\frame_buffer|s_wradd\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \frame_buffer|s_wradd\(17),
	datac => \frame_buffer|s_wradd\(16),
	datad => \frame_buffer|s_wradd\(18),
	combout => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode591w[2]~0_combout\);

-- Location: LCCOMB_X46_Y16_N4
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode509w[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode509w\(3) = (\frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode591w[2]~0_combout\ & (!\frame_buffer|s_wradd\(15) & (!\frame_buffer|s_wradd\(13) & 
-- !\frame_buffer|s_wradd\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode591w[2]~0_combout\,
	datab => \frame_buffer|s_wradd\(15),
	datac => \frame_buffer|s_wradd\(13),
	datad => \frame_buffer|s_wradd\(14),
	combout => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode509w\(3));

-- Location: M9K_X53_Y16_N0
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a8\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memoria:frame_buffer|Memory:Memory_inst|altsyncram:altsyncram_component|altsyncram_6fn3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 307200,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 307200,
	port_b_logical_ram_width => 1,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode509w\(3),
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a8_PORTADATAIN_bus\,
	portaaddr => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\,
	portbaddr => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a8_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a8_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X45_Y19_N20
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode530w[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode530w\(3) = (!\frame_buffer|s_wradd\(13) & (!\frame_buffer|s_wradd\(15) & (\frame_buffer|s_wradd\(14) & 
-- \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode591w[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frame_buffer|s_wradd\(13),
	datab => \frame_buffer|s_wradd\(15),
	datac => \frame_buffer|s_wradd\(14),
	datad => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode591w[2]~0_combout\,
	combout => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode530w\(3));

-- Location: M9K_X33_Y21_N0
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a10\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memoria:frame_buffer|Memory:Memory_inst|altsyncram:altsyncram_component|altsyncram_6fn3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 307200,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 307200,
	port_b_logical_ram_width => 1,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode530w\(3),
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a10_PORTADATAIN_bus\,
	portaaddr => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\,
	portbaddr => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a10_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X49_Y19_N26
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~7_combout\ = (!\frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(0) & ((\frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(1) 
-- & ((\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a10~portbdataout\))) # (!\frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(1) & 
-- (\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a8~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(1),
	datab => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(0),
	datac => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a8~portbdataout\,
	datad => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a10~portbdataout\,
	combout => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~7_combout\);

-- Location: LCCOMB_X46_Y17_N28
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode520w[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode520w\(3) = (!\frame_buffer|s_wradd\(14) & (\frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode591w[2]~0_combout\ & (\frame_buffer|s_wradd\(13) & 
-- !\frame_buffer|s_wradd\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frame_buffer|s_wradd\(14),
	datab => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode591w[2]~0_combout\,
	datac => \frame_buffer|s_wradd\(13),
	datad => \frame_buffer|s_wradd\(15),
	combout => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode520w\(3));

-- Location: M9K_X53_Y17_N0
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a9\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memoria:frame_buffer|Memory:Memory_inst|altsyncram:altsyncram_component|altsyncram_6fn3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 307200,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 307200,
	port_b_logical_ram_width => 1,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode520w\(3),
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a9_PORTADATAIN_bus\,
	portaaddr => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\,
	portbaddr => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a9_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a9_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X46_Y19_N8
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode540w[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode540w\(3) = (\frame_buffer|s_wradd\(13) & (!\frame_buffer|s_wradd\(15) & (\frame_buffer|s_wradd\(14) & 
-- \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode591w[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frame_buffer|s_wradd\(13),
	datab => \frame_buffer|s_wradd\(15),
	datac => \frame_buffer|s_wradd\(14),
	datad => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode591w[2]~0_combout\,
	combout => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode540w\(3));

-- Location: M9K_X33_Y25_N0
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a11\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memoria:frame_buffer|Memory:Memory_inst|altsyncram:altsyncram_component|altsyncram_6fn3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 307200,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 307200,
	port_b_logical_ram_width => 1,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode540w\(3),
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a11_PORTADATAIN_bus\,
	portaaddr => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\,
	portbaddr => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a11_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a11_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X49_Y19_N0
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~6_combout\ = (\frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(0) & ((\frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(1) 
-- & ((\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a11~portbdataout\))) # (!\frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(1) & 
-- (\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a9~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(1),
	datab => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(0),
	datac => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a9~portbdataout\,
	datad => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a11~portbdataout\,
	combout => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~6_combout\);

-- Location: LCCOMB_X49_Y19_N8
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~8_combout\ = (!\frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(2) & ((\frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~7_combout\) # 
-- (\frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(2),
	datac => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~7_combout\,
	datad => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~6_combout\,
	combout => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~8_combout\);

-- Location: LCCOMB_X46_Y18_N4
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode580w[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode580w\(3) = (\frame_buffer|s_wradd\(15) & (\frame_buffer|s_wradd\(14) & (\frame_buffer|s_wradd\(13) & 
-- \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode591w[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frame_buffer|s_wradd\(15),
	datab => \frame_buffer|s_wradd\(14),
	datac => \frame_buffer|s_wradd\(13),
	datad => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode591w[2]~0_combout\,
	combout => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode580w\(3));

-- Location: M9K_X53_Y18_N0
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a15\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memoria:frame_buffer|Memory:Memory_inst|altsyncram:altsyncram_component|altsyncram_6fn3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 307200,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 307200,
	port_b_logical_ram_width => 1,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode580w\(3),
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a15_PORTADATAIN_bus\,
	portaaddr => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a15_PORTAADDR_bus\,
	portbaddr => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a15_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a15_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X46_Y19_N10
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode560w[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode560w\(3) = (\frame_buffer|s_wradd\(13) & (\frame_buffer|s_wradd\(15) & (!\frame_buffer|s_wradd\(14) & 
-- \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode591w[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frame_buffer|s_wradd\(13),
	datab => \frame_buffer|s_wradd\(15),
	datac => \frame_buffer|s_wradd\(14),
	datad => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode591w[2]~0_combout\,
	combout => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode560w\(3));

-- Location: M9K_X53_Y11_N0
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a13\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memoria:frame_buffer|Memory:Memory_inst|altsyncram:altsyncram_component|altsyncram_6fn3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 307200,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 307200,
	port_b_logical_ram_width => 1,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode560w\(3),
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a13_PORTADATAIN_bus\,
	portaaddr => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a13_PORTAADDR_bus\,
	portbaddr => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a13_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a13_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X49_Y19_N14
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~9_combout\ = (\frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(0) & ((\frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(1) 
-- & (\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a15~portbdataout\)) # (!\frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(1) & 
-- ((\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a13~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(1),
	datab => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(0),
	datac => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a15~portbdataout\,
	datad => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a13~portbdataout\,
	combout => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~9_combout\);

-- Location: LCCOMB_X46_Y19_N12
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode550w[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode550w\(3) = (!\frame_buffer|s_wradd\(13) & (\frame_buffer|s_wradd\(15) & (!\frame_buffer|s_wradd\(14) & 
-- \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode591w[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frame_buffer|s_wradd\(13),
	datab => \frame_buffer|s_wradd\(15),
	datac => \frame_buffer|s_wradd\(14),
	datad => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode591w[2]~0_combout\,
	combout => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode550w\(3));

-- Location: M9K_X53_Y14_N0
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a12\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memoria:frame_buffer|Memory:Memory_inst|altsyncram:altsyncram_component|altsyncram_6fn3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 307200,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 307200,
	port_b_logical_ram_width => 1,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode550w\(3),
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a12_PORTADATAIN_bus\,
	portaaddr => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\,
	portbaddr => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a12_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a12_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X45_Y19_N22
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode570w[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode570w\(3) = (\frame_buffer|s_wradd\(14) & (\frame_buffer|s_wradd\(15) & (\frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode591w[2]~0_combout\ & 
-- !\frame_buffer|s_wradd\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frame_buffer|s_wradd\(14),
	datab => \frame_buffer|s_wradd\(15),
	datac => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode591w[2]~0_combout\,
	datad => \frame_buffer|s_wradd\(13),
	combout => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode570w\(3));

-- Location: M9K_X33_Y26_N0
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a14\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memoria:frame_buffer|Memory:Memory_inst|altsyncram:altsyncram_component|altsyncram_6fn3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 307200,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 307200,
	port_b_logical_ram_width => 1,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode570w\(3),
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\,
	portaaddr => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\,
	portbaddr => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a14_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a14_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X49_Y19_N20
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~10_combout\ = (!\frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(0) & 
-- ((\frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(1) & ((\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a14~portbdataout\))) # 
-- (!\frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(1) & (\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a12~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(1),
	datab => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(0),
	datac => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a12~portbdataout\,
	datad => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a14~portbdataout\,
	combout => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~10_combout\);

-- Location: LCCOMB_X49_Y19_N2
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~11_combout\ = (\frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(2) & ((\frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~9_combout\) # 
-- (\frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(2),
	datac => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~9_combout\,
	datad => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~10_combout\,
	combout => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~11_combout\);

-- Location: LCCOMB_X49_Y19_N4
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~12_combout\ = (!\frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(5) & (\frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(3) 
-- & ((\frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~8_combout\) # (\frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(5),
	datab => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(3),
	datac => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~8_combout\,
	datad => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~11_combout\,
	combout => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~12_combout\);

-- Location: LCCOMB_X47_Y19_N10
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode819w[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode819w\(3) = (\frame_buffer|s_wradd\(13) & (\frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode777w[3]~0_combout\ & (\frame_buffer|s_wradd\(14) & 
-- !\frame_buffer|s_wradd\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frame_buffer|s_wradd\(13),
	datab => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode777w[3]~0_combout\,
	datac => \frame_buffer|s_wradd\(14),
	datad => \frame_buffer|s_wradd\(15),
	combout => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode819w\(3));

-- Location: M9K_X53_Y23_N0
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a35\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memoria:frame_buffer|Memory:Memory_inst|altsyncram:altsyncram_component|altsyncram_6fn3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 307200,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 307200,
	port_b_logical_ram_width => 1,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode819w\(3),
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a35_PORTADATAIN_bus\,
	portaaddr => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a35_PORTAADDR_bus\,
	portbaddr => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a35_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a35_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X45_Y19_N30
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode799w[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode799w\(3) = (\frame_buffer|s_wradd\(13) & (!\frame_buffer|s_wradd\(15) & (!\frame_buffer|s_wradd\(14) & 
-- \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode777w[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frame_buffer|s_wradd\(13),
	datab => \frame_buffer|s_wradd\(15),
	datac => \frame_buffer|s_wradd\(14),
	datad => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode777w[3]~0_combout\,
	combout => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode799w\(3));

-- Location: M9K_X33_Y11_N0
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a33\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memoria:frame_buffer|Memory:Memory_inst|altsyncram:altsyncram_component|altsyncram_6fn3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 307200,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 307200,
	port_b_logical_ram_width => 1,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode799w\(3),
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a33_PORTADATAIN_bus\,
	portaaddr => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a33_PORTAADDR_bus\,
	portbaddr => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a33_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a33_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X46_Y19_N18
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode809w[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode809w\(3) = (!\frame_buffer|s_wradd\(13) & (!\frame_buffer|s_wradd\(15) & (\frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode777w[3]~0_combout\ & 
-- \frame_buffer|s_wradd\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frame_buffer|s_wradd\(13),
	datab => \frame_buffer|s_wradd\(15),
	datac => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode777w[3]~0_combout\,
	datad => \frame_buffer|s_wradd\(14),
	combout => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode809w\(3));

-- Location: M9K_X33_Y12_N0
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a34\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memoria:frame_buffer|Memory:Memory_inst|altsyncram:altsyncram_component|altsyncram_6fn3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 307200,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 307200,
	port_b_logical_ram_width => 1,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode809w\(3),
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a34_PORTADATAIN_bus\,
	portaaddr => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a34_PORTAADDR_bus\,
	portbaddr => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a34_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a34_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X47_Y19_N12
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode788w[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode788w\(3) = (!\frame_buffer|s_wradd\(13) & (\frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode777w[3]~0_combout\ & (!\frame_buffer|s_wradd\(14) & 
-- !\frame_buffer|s_wradd\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frame_buffer|s_wradd\(13),
	datab => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode777w[3]~0_combout\,
	datac => \frame_buffer|s_wradd\(14),
	datad => \frame_buffer|s_wradd\(15),
	combout => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode788w\(3));

-- Location: M9K_X53_Y25_N0
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a32\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memoria:frame_buffer|Memory:Memory_inst|altsyncram:altsyncram_component|altsyncram_6fn3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 307200,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 307200,
	port_b_logical_ram_width => 1,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode788w\(3),
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a32_PORTADATAIN_bus\,
	portaaddr => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a32_PORTAADDR_bus\,
	portbaddr => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a32_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a32_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X49_Y19_N6
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~1_combout\ = (\frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(1) & ((\frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(0)) 
-- # ((\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a34~portbdataout\)))) # (!\frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(1) & 
-- (!\frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(0) & ((\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a32~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(1),
	datab => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(0),
	datac => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a34~portbdataout\,
	datad => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a32~portbdataout\,
	combout => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~1_combout\);

-- Location: LCCOMB_X49_Y19_N24
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~2_combout\ = (\frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(0) & ((\frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~1_combout\ & 
-- (\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a35~portbdataout\)) # (!\frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~1_combout\ & 
-- ((\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a33~portbdataout\))))) # (!\frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(0) & 
-- (((\frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a35~portbdataout\,
	datab => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(0),
	datac => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a33~portbdataout\,
	datad => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~1_combout\,
	combout => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~2_combout\);

-- Location: LCCOMB_X49_Y19_N12
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~0_combout\ = (!\frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(3) & !\frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(3),
	datad => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(2),
	combout => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~0_combout\);

-- Location: LCCOMB_X42_Y15_N28
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode426w[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode426w\(3) = (!\frame_buffer|s_wradd\(14) & (!\frame_buffer|s_wradd\(15) & \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode426w[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \frame_buffer|s_wradd\(14),
	datac => \frame_buffer|s_wradd\(15),
	datad => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode426w[1]~0_combout\,
	combout => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode426w\(3));

-- Location: M9K_X33_Y15_N0
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a1\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memoria:frame_buffer|Memory:Memory_inst|altsyncram:altsyncram_component|altsyncram_6fn3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 307200,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 307200,
	port_b_logical_ram_width => 1,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode426w\(3),
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a1_PORTADATAIN_bus\,
	portaaddr => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\,
	portbaddr => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a1_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a1_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X46_Y19_N30
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode446w[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode446w\(3) = (!\frame_buffer|s_wradd\(15) & (\frame_buffer|s_wradd\(14) & \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode426w[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \frame_buffer|s_wradd\(15),
	datac => \frame_buffer|s_wradd\(14),
	datad => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode426w[1]~0_combout\,
	combout => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode446w\(3));

-- Location: M9K_X33_Y14_N0
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a3\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memoria:frame_buffer|Memory:Memory_inst|altsyncram:altsyncram_component|altsyncram_6fn3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 307200,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 307200,
	port_b_logical_ram_width => 1,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode446w\(3),
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a3_PORTADATAIN_bus\,
	portaaddr => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\,
	portbaddr => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a3_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a3_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X45_Y19_N26
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode409w[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode409w\(3) = (!\frame_buffer|s_wradd\(15) & (!\frame_buffer|s_wradd\(14) & !\frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode409w\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \frame_buffer|s_wradd\(15),
	datac => \frame_buffer|s_wradd\(14),
	datad => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode409w\(1),
	combout => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode409w\(3));

-- Location: M9K_X53_Y22_N0
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a0\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memoria:frame_buffer|Memory:Memory_inst|altsyncram:altsyncram_component|altsyncram_6fn3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 307200,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 307200,
	port_b_logical_ram_width => 1,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode409w\(3),
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X45_Y19_N14
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode436w[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode436w\(3) = (!\frame_buffer|s_wradd\(15) & (\frame_buffer|s_wradd\(14) & !\frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode409w\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \frame_buffer|s_wradd\(15),
	datac => \frame_buffer|s_wradd\(14),
	datad => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode409w\(1),
	combout => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode436w\(3));

-- Location: M9K_X73_Y18_N0
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a2\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memoria:frame_buffer|Memory:Memory_inst|altsyncram:altsyncram_component|altsyncram_6fn3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 307200,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 307200,
	port_b_logical_ram_width => 1,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|decode2|w_anode436w\(3),
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\,
	portaaddr => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\,
	portbaddr => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a2_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a2_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X49_Y19_N10
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~3_combout\ = (\frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(1) & ((\frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(0)) 
-- # ((\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a2~portbdataout\)))) # (!\frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(1) & 
-- (!\frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(0) & (\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a0~portbdataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(1),
	datab => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(0),
	datac => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a0~portbdataout\,
	datad => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a2~portbdataout\,
	combout => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~3_combout\);

-- Location: LCCOMB_X49_Y19_N28
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~4_combout\ = (\frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(0) & ((\frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~3_combout\ & 
-- ((\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a3~portbdataout\))) # (!\frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~3_combout\ & 
-- (\frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a1~portbdataout\)))) # (!\frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(0) & 
-- (((\frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a1~portbdataout\,
	datab => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(0),
	datac => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|ram_block1a3~portbdataout\,
	datad => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~3_combout\,
	combout => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~4_combout\);

-- Location: LCCOMB_X49_Y19_N18
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~5_combout\ = (\frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~0_combout\ & ((\frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(5) & 
-- (\frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~2_combout\)) # (!\frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(5) & 
-- ((\frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(5),
	datab => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~2_combout\,
	datac => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~0_combout\,
	datad => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~4_combout\,
	combout => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~5_combout\);

-- Location: LCCOMB_X49_Y19_N22
\frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~18_combout\ = (\frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~12_combout\) # ((\frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~5_combout\) # 
-- ((\frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~17_combout\ & \frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~17_combout\,
	datab => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~16_combout\,
	datac => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~12_combout\,
	datad => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~5_combout\,
	combout => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~18_combout\);

-- Location: LCCOMB_X50_Y20_N16
\vga|R~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga|R~8_combout\ = (\frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(4) & (!\frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(5) & (\vga|R~7_combout\))) # 
-- (!\frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(4) & (((\frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(4),
	datab => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|out_address_reg_b\(5),
	datac => \vga|R~7_combout\,
	datad => \frame_buffer|Memory_inst|altsyncram_component|auto_generated|mux3|_~18_combout\,
	combout => \vga|R~8_combout\);

-- Location: LCCOMB_X50_Y20_N10
\vga|R~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga|R~9_combout\ = (\vga|LessThan5~0_combout\ & (\vga|posiciones~4_combout\ & \vga|R~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|LessThan5~0_combout\,
	datac => \vga|posiciones~4_combout\,
	datad => \vga|R~8_combout\,
	combout => \vga|R~9_combout\);

-- Location: LCCOMB_X50_Y20_N24
\vga|R[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga|R[0]~feeder_combout\ = \vga|R~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \vga|R~9_combout\,
	combout => \vga|R[0]~feeder_combout\);

-- Location: FF_X50_Y20_N25
\vga|R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga|clk_b~clkctrl_outclk\,
	d => \vga|R[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|R\(0));

-- Location: LCCOMB_X50_Y20_N26
\vga|R[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga|R[1]~feeder_combout\ = \vga|R~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \vga|R~9_combout\,
	combout => \vga|R[1]~feeder_combout\);

-- Location: FF_X50_Y20_N27
\vga|R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga|clk_b~clkctrl_outclk\,
	d => \vga|R[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|R\(1));

-- Location: LCCOMB_X50_Y20_N0
\vga|R[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga|R[2]~feeder_combout\ = \vga|R~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \vga|R~9_combout\,
	combout => \vga|R[2]~feeder_combout\);

-- Location: FF_X50_Y20_N1
\vga|R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga|clk_b~clkctrl_outclk\,
	d => \vga|R[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|R\(2));

-- Location: LCCOMB_X50_Y20_N14
\vga|R[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga|R[3]~feeder_combout\ = \vga|R~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \vga|R~9_combout\,
	combout => \vga|R[3]~feeder_combout\);

-- Location: FF_X50_Y20_N15
\vga|R[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga|clk_b~clkctrl_outclk\,
	d => \vga|R[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|R\(3));

-- Location: LCCOMB_X50_Y20_N12
\vga|G[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga|G[0]~feeder_combout\ = \vga|R~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \vga|R~9_combout\,
	combout => \vga|G[0]~feeder_combout\);

-- Location: FF_X50_Y20_N13
\vga|G[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga|clk_b~clkctrl_outclk\,
	d => \vga|G[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|G\(0));

-- Location: LCCOMB_X50_Y20_N2
\vga|G[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga|G[1]~feeder_combout\ = \vga|R~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \vga|R~9_combout\,
	combout => \vga|G[1]~feeder_combout\);

-- Location: FF_X50_Y20_N3
\vga|G[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga|clk_b~clkctrl_outclk\,
	d => \vga|G[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|G\(1));

-- Location: LCCOMB_X50_Y20_N20
\vga|G[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga|G[2]~feeder_combout\ = \vga|R~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \vga|R~9_combout\,
	combout => \vga|G[2]~feeder_combout\);

-- Location: FF_X50_Y20_N21
\vga|G[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga|clk_b~clkctrl_outclk\,
	d => \vga|G[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|G\(2));

-- Location: LCCOMB_X50_Y20_N6
\vga|G[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga|G[3]~feeder_combout\ = \vga|R~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \vga|R~9_combout\,
	combout => \vga|G[3]~feeder_combout\);

-- Location: FF_X50_Y20_N7
\vga|G[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga|clk_b~clkctrl_outclk\,
	d => \vga|G[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|G\(3));

-- Location: LCCOMB_X50_Y20_N8
\vga|B[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga|B[0]~feeder_combout\ = \vga|R~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \vga|R~9_combout\,
	combout => \vga|B[0]~feeder_combout\);

-- Location: FF_X50_Y20_N9
\vga|B[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga|clk_b~clkctrl_outclk\,
	d => \vga|B[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|B\(0));

-- Location: LCCOMB_X50_Y20_N18
\vga|B[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga|B[1]~feeder_combout\ = \vga|R~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \vga|R~9_combout\,
	combout => \vga|B[1]~feeder_combout\);

-- Location: FF_X50_Y20_N19
\vga|B[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga|clk_b~clkctrl_outclk\,
	d => \vga|B[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|B\(1));

-- Location: LCCOMB_X50_Y20_N4
\vga|B[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga|B[2]~feeder_combout\ = \vga|R~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \vga|R~9_combout\,
	combout => \vga|B[2]~feeder_combout\);

-- Location: FF_X50_Y20_N5
\vga|B[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga|clk_b~clkctrl_outclk\,
	d => \vga|B[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|B\(2));

-- Location: LCCOMB_X50_Y20_N22
\vga|B[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vga|B[3]~feeder_combout\ = \vga|R~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \vga|R~9_combout\,
	combout => \vga|B[3]~feeder_combout\);

-- Location: FF_X50_Y20_N23
\vga|B[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga|clk_b~clkctrl_outclk\,
	d => \vga|B[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|B\(3));

-- Location: LCCOMB_X41_Y3_N20
\rx_cam|oclk~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_cam|oclk~feeder_combout\ = \rx_cam|oclk_r~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_cam|oclk_r~q\,
	combout => \rx_cam|oclk~feeder_combout\);

-- Location: FF_X41_Y3_N21
\rx_cam|oclk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_cam|oclk~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_cam|oclk~q\);

-- Location: IOIBUF_X46_Y0_N1
\D[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(6),
	o => \D[6]~input_o\);

-- Location: IOIBUF_X40_Y0_N15
\D[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(5),
	o => \D[5]~input_o\);

-- Location: IOIBUF_X36_Y0_N1
\D[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(4),
	o => \D[4]~input_o\);

-- Location: IOIBUF_X36_Y0_N8
\D[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(3),
	o => \D[3]~input_o\);

-- Location: IOIBUF_X34_Y0_N1
\D[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(2),
	o => \D[2]~input_o\);

-- Location: IOIBUF_X20_Y0_N1
\D[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(1),
	o => \D[1]~input_o\);

-- Location: IOIBUF_X20_Y0_N8
\D[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(0),
	o => \D[0]~input_o\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_Hsync_VGA <= \Hsync_VGA~output_o\;

ww_Vsync_VGA <= \Vsync_VGA~output_o\;

ww_R(0) <= \R[0]~output_o\;

ww_R(1) <= \R[1]~output_o\;

ww_R(2) <= \R[2]~output_o\;

ww_R(3) <= \R[3]~output_o\;

ww_G(0) <= \G[0]~output_o\;

ww_G(1) <= \G[1]~output_o\;

ww_G(2) <= \G[2]~output_o\;

ww_G(3) <= \G[3]~output_o\;

ww_B(0) <= \B[0]~output_o\;

ww_B(1) <= \B[1]~output_o\;

ww_B(2) <= \B[2]~output_o\;

ww_B(3) <= \B[3]~output_o\;

ww_oclk <= \oclk~output_o\;
END structure;


