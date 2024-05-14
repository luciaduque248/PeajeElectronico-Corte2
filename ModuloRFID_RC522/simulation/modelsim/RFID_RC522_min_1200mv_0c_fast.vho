-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "05/13/2024 15:58:16"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	RFID_RC522 IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	sda : INOUT std_logic;
	sck : OUT std_logic;
	mosi : OUT std_logic;
	miso : IN std_logic;
	irq : IN std_logic;
	datos_in : IN std_logic_vector(31 DOWNTO 0);
	id_vehiculo : OUT std_logic_vector(31 DOWNTO 0)
	);
END RFID_RC522;

-- Design Ports Information
-- sck	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mosi	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- miso	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- id_vehiculo[0]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- id_vehiculo[1]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- id_vehiculo[2]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- id_vehiculo[3]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- id_vehiculo[4]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- id_vehiculo[5]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- id_vehiculo[6]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- id_vehiculo[7]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- id_vehiculo[8]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- id_vehiculo[9]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- id_vehiculo[10]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- id_vehiculo[11]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- id_vehiculo[12]	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- id_vehiculo[13]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- id_vehiculo[14]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- id_vehiculo[15]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- id_vehiculo[16]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- id_vehiculo[17]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- id_vehiculo[18]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- id_vehiculo[19]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- id_vehiculo[20]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- id_vehiculo[21]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- id_vehiculo[22]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- id_vehiculo[23]	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- id_vehiculo[24]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- id_vehiculo[25]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- id_vehiculo[26]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- id_vehiculo[27]	=>  Location: PIN_M19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- id_vehiculo[28]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- id_vehiculo[29]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- id_vehiculo[30]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- id_vehiculo[31]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sda	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datos_in[0]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datos_in[1]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datos_in[2]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datos_in[3]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datos_in[4]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datos_in[5]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datos_in[6]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datos_in[7]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datos_in[8]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datos_in[9]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datos_in[10]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datos_in[11]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datos_in[12]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datos_in[13]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datos_in[14]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datos_in[15]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datos_in[16]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datos_in[17]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datos_in[18]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datos_in[19]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datos_in[20]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datos_in[21]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datos_in[22]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datos_in[23]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datos_in[24]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datos_in[25]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datos_in[26]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datos_in[27]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datos_in[28]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datos_in[29]	=>  Location: PIN_N22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datos_in[30]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datos_in[31]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- irq	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF RFID_RC522 IS
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
SIGNAL ww_rst : std_logic;
SIGNAL ww_sck : std_logic;
SIGNAL ww_mosi : std_logic;
SIGNAL ww_miso : std_logic;
SIGNAL ww_irq : std_logic;
SIGNAL ww_datos_in : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_id_vehiculo : std_logic_vector(31 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \miso~input_o\ : std_logic;
SIGNAL \sda~input_o\ : std_logic;
SIGNAL \sda~output_o\ : std_logic;
SIGNAL \sck~output_o\ : std_logic;
SIGNAL \mosi~output_o\ : std_logic;
SIGNAL \id_vehiculo[0]~output_o\ : std_logic;
SIGNAL \id_vehiculo[1]~output_o\ : std_logic;
SIGNAL \id_vehiculo[2]~output_o\ : std_logic;
SIGNAL \id_vehiculo[3]~output_o\ : std_logic;
SIGNAL \id_vehiculo[4]~output_o\ : std_logic;
SIGNAL \id_vehiculo[5]~output_o\ : std_logic;
SIGNAL \id_vehiculo[6]~output_o\ : std_logic;
SIGNAL \id_vehiculo[7]~output_o\ : std_logic;
SIGNAL \id_vehiculo[8]~output_o\ : std_logic;
SIGNAL \id_vehiculo[9]~output_o\ : std_logic;
SIGNAL \id_vehiculo[10]~output_o\ : std_logic;
SIGNAL \id_vehiculo[11]~output_o\ : std_logic;
SIGNAL \id_vehiculo[12]~output_o\ : std_logic;
SIGNAL \id_vehiculo[13]~output_o\ : std_logic;
SIGNAL \id_vehiculo[14]~output_o\ : std_logic;
SIGNAL \id_vehiculo[15]~output_o\ : std_logic;
SIGNAL \id_vehiculo[16]~output_o\ : std_logic;
SIGNAL \id_vehiculo[17]~output_o\ : std_logic;
SIGNAL \id_vehiculo[18]~output_o\ : std_logic;
SIGNAL \id_vehiculo[19]~output_o\ : std_logic;
SIGNAL \id_vehiculo[20]~output_o\ : std_logic;
SIGNAL \id_vehiculo[21]~output_o\ : std_logic;
SIGNAL \id_vehiculo[22]~output_o\ : std_logic;
SIGNAL \id_vehiculo[23]~output_o\ : std_logic;
SIGNAL \id_vehiculo[24]~output_o\ : std_logic;
SIGNAL \id_vehiculo[25]~output_o\ : std_logic;
SIGNAL \id_vehiculo[26]~output_o\ : std_logic;
SIGNAL \id_vehiculo[27]~output_o\ : std_logic;
SIGNAL \id_vehiculo[28]~output_o\ : std_logic;
SIGNAL \id_vehiculo[29]~output_o\ : std_logic;
SIGNAL \id_vehiculo[30]~output_o\ : std_logic;
SIGNAL \id_vehiculo[31]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \datos_in[0]~input_o\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \irq~input_o\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \estado_actual[1]~feeder_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \estado_actual[0]~feeder_combout\ : std_logic;
SIGNAL \Mux33~0_combout\ : std_logic;
SIGNAL \id_temporal[0]~feeder_combout\ : std_logic;
SIGNAL \Mux65~0_combout\ : std_logic;
SIGNAL \id_leida~feeder_combout\ : std_logic;
SIGNAL \id_leida~q\ : std_logic;
SIGNAL \id_vehiculo~0_combout\ : std_logic;
SIGNAL \datos_in[1]~input_o\ : std_logic;
SIGNAL \datos_recibidos[1]~feeder_combout\ : std_logic;
SIGNAL \id_vehiculo~1_combout\ : std_logic;
SIGNAL \datos_in[2]~input_o\ : std_logic;
SIGNAL \datos_recibidos[2]~feeder_combout\ : std_logic;
SIGNAL \id_vehiculo~2_combout\ : std_logic;
SIGNAL \datos_in[3]~input_o\ : std_logic;
SIGNAL \datos_recibidos[3]~feeder_combout\ : std_logic;
SIGNAL \id_vehiculo~3_combout\ : std_logic;
SIGNAL \datos_in[4]~input_o\ : std_logic;
SIGNAL \datos_recibidos[4]~feeder_combout\ : std_logic;
SIGNAL \id_vehiculo~4_combout\ : std_logic;
SIGNAL \datos_in[5]~input_o\ : std_logic;
SIGNAL \datos_recibidos[5]~feeder_combout\ : std_logic;
SIGNAL \id_vehiculo~5_combout\ : std_logic;
SIGNAL \datos_in[6]~input_o\ : std_logic;
SIGNAL \id_temporal[6]~feeder_combout\ : std_logic;
SIGNAL \id_vehiculo~6_combout\ : std_logic;
SIGNAL \datos_in[7]~input_o\ : std_logic;
SIGNAL \datos_recibidos[7]~feeder_combout\ : std_logic;
SIGNAL \id_vehiculo~7_combout\ : std_logic;
SIGNAL \datos_in[8]~input_o\ : std_logic;
SIGNAL \id_vehiculo~8_combout\ : std_logic;
SIGNAL \datos_in[9]~input_o\ : std_logic;
SIGNAL \id_vehiculo~9_combout\ : std_logic;
SIGNAL \datos_in[10]~input_o\ : std_logic;
SIGNAL \datos_recibidos[10]~feeder_combout\ : std_logic;
SIGNAL \id_vehiculo~10_combout\ : std_logic;
SIGNAL \datos_in[11]~input_o\ : std_logic;
SIGNAL \datos_recibidos[11]~feeder_combout\ : std_logic;
SIGNAL \id_vehiculo~11_combout\ : std_logic;
SIGNAL \datos_in[12]~input_o\ : std_logic;
SIGNAL \datos_recibidos[12]~feeder_combout\ : std_logic;
SIGNAL \id_vehiculo~12_combout\ : std_logic;
SIGNAL \datos_in[13]~input_o\ : std_logic;
SIGNAL \id_vehiculo~13_combout\ : std_logic;
SIGNAL \datos_in[14]~input_o\ : std_logic;
SIGNAL \datos_recibidos[14]~feeder_combout\ : std_logic;
SIGNAL \id_vehiculo~14_combout\ : std_logic;
SIGNAL \datos_in[15]~input_o\ : std_logic;
SIGNAL \id_vehiculo~15_combout\ : std_logic;
SIGNAL \datos_in[16]~input_o\ : std_logic;
SIGNAL \id_vehiculo~16_combout\ : std_logic;
SIGNAL \datos_in[17]~input_o\ : std_logic;
SIGNAL \id_vehiculo~17_combout\ : std_logic;
SIGNAL \datos_in[18]~input_o\ : std_logic;
SIGNAL \datos_recibidos[18]~feeder_combout\ : std_logic;
SIGNAL \id_vehiculo~18_combout\ : std_logic;
SIGNAL \datos_in[19]~input_o\ : std_logic;
SIGNAL \datos_recibidos[19]~feeder_combout\ : std_logic;
SIGNAL \id_vehiculo~19_combout\ : std_logic;
SIGNAL \datos_in[20]~input_o\ : std_logic;
SIGNAL \datos_recibidos[20]~feeder_combout\ : std_logic;
SIGNAL \id_vehiculo~20_combout\ : std_logic;
SIGNAL \datos_in[21]~input_o\ : std_logic;
SIGNAL \id_vehiculo~21_combout\ : std_logic;
SIGNAL \datos_in[22]~input_o\ : std_logic;
SIGNAL \datos_recibidos[22]~feeder_combout\ : std_logic;
SIGNAL \id_vehiculo~22_combout\ : std_logic;
SIGNAL \datos_in[23]~input_o\ : std_logic;
SIGNAL \datos_recibidos[23]~feeder_combout\ : std_logic;
SIGNAL \id_vehiculo~23_combout\ : std_logic;
SIGNAL \datos_in[24]~input_o\ : std_logic;
SIGNAL \datos_recibidos[24]~feeder_combout\ : std_logic;
SIGNAL \id_vehiculo~24_combout\ : std_logic;
SIGNAL \datos_in[25]~input_o\ : std_logic;
SIGNAL \datos_recibidos[25]~feeder_combout\ : std_logic;
SIGNAL \id_vehiculo~25_combout\ : std_logic;
SIGNAL \datos_in[26]~input_o\ : std_logic;
SIGNAL \id_temporal[26]~feeder_combout\ : std_logic;
SIGNAL \id_vehiculo~26_combout\ : std_logic;
SIGNAL \datos_in[27]~input_o\ : std_logic;
SIGNAL \datos_recibidos[27]~feeder_combout\ : std_logic;
SIGNAL \id_vehiculo~27_combout\ : std_logic;
SIGNAL \datos_in[28]~input_o\ : std_logic;
SIGNAL \datos_recibidos[28]~feeder_combout\ : std_logic;
SIGNAL \id_vehiculo~28_combout\ : std_logic;
SIGNAL \datos_in[29]~input_o\ : std_logic;
SIGNAL \datos_recibidos[29]~feeder_combout\ : std_logic;
SIGNAL \id_temporal[29]~feeder_combout\ : std_logic;
SIGNAL \id_vehiculo~29_combout\ : std_logic;
SIGNAL \datos_in[30]~input_o\ : std_logic;
SIGNAL \datos_recibidos[30]~feeder_combout\ : std_logic;
SIGNAL \id_temporal[30]~feeder_combout\ : std_logic;
SIGNAL \id_vehiculo~30_combout\ : std_logic;
SIGNAL \datos_in[31]~input_o\ : std_logic;
SIGNAL \datos_recibidos[31]~feeder_combout\ : std_logic;
SIGNAL \id_vehiculo~31_combout\ : std_logic;
SIGNAL id_temporal : std_logic_vector(31 DOWNTO 0);
SIGNAL estado_siguiente : std_logic_vector(2 DOWNTO 0);
SIGNAL estado_actual : std_logic_vector(2 DOWNTO 0);
SIGNAL datos_recibidos : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_rst~input_o\ : std_logic;
SIGNAL \ALT_INV_rst~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
sck <= ww_sck;
mosi <= ww_mosi;
ww_miso <= miso;
ww_irq <= irq;
ww_datos_in <= datos_in;
id_vehiculo <= ww_id_vehiculo;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;
\ALT_INV_rst~inputclkctrl_outclk\ <= NOT \rst~inputclkctrl_outclk\;

-- Location: IOOBUF_X19_Y0_N9
\sda~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \sda~output_o\);

-- Location: IOOBUF_X30_Y29_N9
\sck~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sck~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\mosi~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mosi~output_o\);

-- Location: IOOBUF_X41_Y14_N23
\id_vehiculo[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \id_vehiculo~0_combout\,
	devoe => ww_devoe,
	o => \id_vehiculo[0]~output_o\);

-- Location: IOOBUF_X41_Y24_N9
\id_vehiculo[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \id_vehiculo~1_combout\,
	devoe => ww_devoe,
	o => \id_vehiculo[1]~output_o\);

-- Location: IOOBUF_X41_Y26_N9
\id_vehiculo[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \id_vehiculo~2_combout\,
	devoe => ww_devoe,
	o => \id_vehiculo[2]~output_o\);

-- Location: IOOBUF_X35_Y29_N9
\id_vehiculo[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \id_vehiculo~3_combout\,
	devoe => ww_devoe,
	o => \id_vehiculo[3]~output_o\);

-- Location: IOOBUF_X41_Y24_N2
\id_vehiculo[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \id_vehiculo~4_combout\,
	devoe => ww_devoe,
	o => \id_vehiculo[4]~output_o\);

-- Location: IOOBUF_X37_Y29_N2
\id_vehiculo[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \id_vehiculo~5_combout\,
	devoe => ww_devoe,
	o => \id_vehiculo[5]~output_o\);

-- Location: IOOBUF_X41_Y26_N2
\id_vehiculo[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \id_vehiculo~6_combout\,
	devoe => ww_devoe,
	o => \id_vehiculo[6]~output_o\);

-- Location: IOOBUF_X41_Y17_N2
\id_vehiculo[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \id_vehiculo~7_combout\,
	devoe => ww_devoe,
	o => \id_vehiculo[7]~output_o\);

-- Location: IOOBUF_X35_Y29_N2
\id_vehiculo[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \id_vehiculo~8_combout\,
	devoe => ww_devoe,
	o => \id_vehiculo[8]~output_o\);

-- Location: IOOBUF_X41_Y19_N2
\id_vehiculo[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \id_vehiculo~9_combout\,
	devoe => ww_devoe,
	o => \id_vehiculo[9]~output_o\);

-- Location: IOOBUF_X41_Y23_N2
\id_vehiculo[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \id_vehiculo~10_combout\,
	devoe => ww_devoe,
	o => \id_vehiculo[10]~output_o\);

-- Location: IOOBUF_X41_Y20_N9
\id_vehiculo[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \id_vehiculo~11_combout\,
	devoe => ww_devoe,
	o => \id_vehiculo[11]~output_o\);

-- Location: IOOBUF_X41_Y18_N16
\id_vehiculo[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \id_vehiculo~12_combout\,
	devoe => ww_devoe,
	o => \id_vehiculo[12]~output_o\);

-- Location: IOOBUF_X41_Y22_N2
\id_vehiculo[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \id_vehiculo~13_combout\,
	devoe => ww_devoe,
	o => \id_vehiculo[13]~output_o\);

-- Location: IOOBUF_X41_Y24_N23
\id_vehiculo[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \id_vehiculo~14_combout\,
	devoe => ww_devoe,
	o => \id_vehiculo[14]~output_o\);

-- Location: IOOBUF_X41_Y24_N16
\id_vehiculo[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \id_vehiculo~15_combout\,
	devoe => ww_devoe,
	o => \id_vehiculo[15]~output_o\);

-- Location: IOOBUF_X37_Y29_N30
\id_vehiculo[16]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \id_vehiculo~16_combout\,
	devoe => ww_devoe,
	o => \id_vehiculo[16]~output_o\);

-- Location: IOOBUF_X41_Y20_N2
\id_vehiculo[17]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \id_vehiculo~17_combout\,
	devoe => ww_devoe,
	o => \id_vehiculo[17]~output_o\);

-- Location: IOOBUF_X41_Y20_N23
\id_vehiculo[18]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \id_vehiculo~18_combout\,
	devoe => ww_devoe,
	o => \id_vehiculo[18]~output_o\);

-- Location: IOOBUF_X39_Y29_N2
\id_vehiculo[19]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \id_vehiculo~19_combout\,
	devoe => ww_devoe,
	o => \id_vehiculo[19]~output_o\);

-- Location: IOOBUF_X41_Y25_N23
\id_vehiculo[20]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \id_vehiculo~20_combout\,
	devoe => ww_devoe,
	o => \id_vehiculo[20]~output_o\);

-- Location: IOOBUF_X41_Y19_N23
\id_vehiculo[21]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \id_vehiculo~21_combout\,
	devoe => ww_devoe,
	o => \id_vehiculo[21]~output_o\);

-- Location: IOOBUF_X41_Y21_N2
\id_vehiculo[22]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \id_vehiculo~22_combout\,
	devoe => ww_devoe,
	o => \id_vehiculo[22]~output_o\);

-- Location: IOOBUF_X41_Y21_N9
\id_vehiculo[23]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \id_vehiculo~23_combout\,
	devoe => ww_devoe,
	o => \id_vehiculo[23]~output_o\);

-- Location: IOOBUF_X41_Y20_N16
\id_vehiculo[24]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \id_vehiculo~24_combout\,
	devoe => ww_devoe,
	o => \id_vehiculo[24]~output_o\);

-- Location: IOOBUF_X41_Y14_N2
\id_vehiculo[25]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \id_vehiculo~25_combout\,
	devoe => ww_devoe,
	o => \id_vehiculo[25]~output_o\);

-- Location: IOOBUF_X41_Y18_N23
\id_vehiculo[26]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \id_vehiculo~26_combout\,
	devoe => ww_devoe,
	o => \id_vehiculo[26]~output_o\);

-- Location: IOOBUF_X41_Y14_N9
\id_vehiculo[27]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \id_vehiculo~27_combout\,
	devoe => ww_devoe,
	o => \id_vehiculo[27]~output_o\);

-- Location: IOOBUF_X41_Y12_N16
\id_vehiculo[28]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \id_vehiculo~28_combout\,
	devoe => ww_devoe,
	o => \id_vehiculo[28]~output_o\);

-- Location: IOOBUF_X41_Y23_N23
\id_vehiculo[29]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \id_vehiculo~29_combout\,
	devoe => ww_devoe,
	o => \id_vehiculo[29]~output_o\);

-- Location: IOOBUF_X37_Y29_N23
\id_vehiculo[30]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \id_vehiculo~30_combout\,
	devoe => ww_devoe,
	o => \id_vehiculo[30]~output_o\);

-- Location: IOOBUF_X41_Y19_N9
\id_vehiculo[31]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \id_vehiculo~31_combout\,
	devoe => ww_devoe,
	o => \id_vehiculo[31]~output_o\);

-- Location: IOIBUF_X0_Y14_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
\clk~inputclkctrl\ : cycloneiii_clkctrl
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

-- Location: IOIBUF_X41_Y15_N1
\datos_in[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datos_in(0),
	o => \datos_in[0]~input_o\);

-- Location: IOIBUF_X0_Y14_N8
\rst~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: CLKCTRL_G2
\rst~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst~inputclkctrl_outclk\);

-- Location: IOIBUF_X35_Y29_N29
\irq~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_irq,
	o => \irq~input_o\);

-- Location: LCCOMB_X36_Y21_N28
\Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = estado_actual(0) $ (estado_actual(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => estado_actual(0),
	datad => estado_actual(1),
	combout => \Mux0~0_combout\);

-- Location: FF_X36_Y21_N29
\estado_siguiente[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux0~0_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => estado_siguiente(1));

-- Location: LCCOMB_X39_Y21_N0
\estado_actual[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \estado_actual[1]~feeder_combout\ = estado_siguiente(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => estado_siguiente(1),
	combout => \estado_actual[1]~feeder_combout\);

-- Location: FF_X39_Y21_N1
\estado_actual[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estado_actual[1]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => estado_actual(1));

-- Location: LCCOMB_X36_Y21_N6
\Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (!estado_actual(0) & ((\irq~input_o\) # (estado_actual(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irq~input_o\,
	datac => estado_actual(0),
	datad => estado_actual(1),
	combout => \Mux1~0_combout\);

-- Location: FF_X36_Y21_N7
\estado_siguiente[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux1~0_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => estado_siguiente(0));

-- Location: LCCOMB_X39_Y21_N30
\estado_actual[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \estado_actual[0]~feeder_combout\ = estado_siguiente(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => estado_siguiente(0),
	combout => \estado_actual[0]~feeder_combout\);

-- Location: FF_X39_Y21_N31
\estado_actual[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estado_actual[0]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => estado_actual(0));

-- Location: LCCOMB_X39_Y21_N18
\Mux33~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux33~0_combout\ = (!estado_actual(0) & estado_actual(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => estado_actual(0),
	datad => estado_actual(1),
	combout => \Mux33~0_combout\);

-- Location: FF_X38_Y21_N27
\datos_recibidos[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \datos_in[0]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux33~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => datos_recibidos(0));

-- Location: LCCOMB_X37_Y21_N26
\id_temporal[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \id_temporal[0]~feeder_combout\ = datos_recibidos(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => datos_recibidos(0),
	combout => \id_temporal[0]~feeder_combout\);

-- Location: LCCOMB_X39_Y21_N24
\Mux65~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux65~0_combout\ = (estado_actual(0) & estado_actual(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => estado_actual(0),
	datab => estado_actual(1),
	combout => \Mux65~0_combout\);

-- Location: FF_X37_Y21_N27
\id_temporal[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \id_temporal[0]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \Mux65~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => id_temporal(0));

-- Location: LCCOMB_X38_Y21_N2
\id_leida~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \id_leida~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \id_leida~feeder_combout\);

-- Location: FF_X38_Y21_N3
id_leida : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \id_leida~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \Mux65~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \id_leida~q\);

-- Location: LCCOMB_X37_Y21_N18
\id_vehiculo~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \id_vehiculo~0_combout\ = (id_temporal(0) & \id_leida~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => id_temporal(0),
	datad => \id_leida~q\,
	combout => \id_vehiculo~0_combout\);

-- Location: IOIBUF_X41_Y18_N8
\datos_in[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datos_in(1),
	o => \datos_in[1]~input_o\);

-- Location: LCCOMB_X38_Y22_N4
\datos_recibidos[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datos_recibidos[1]~feeder_combout\ = \datos_in[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datos_in[1]~input_o\,
	combout => \datos_recibidos[1]~feeder_combout\);

-- Location: FF_X38_Y22_N5
\datos_recibidos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \datos_recibidos[1]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \Mux33~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => datos_recibidos(1));

-- Location: FF_X37_Y21_N23
\id_temporal[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => datos_recibidos(1),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux65~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => id_temporal(1));

-- Location: LCCOMB_X37_Y21_N22
\id_vehiculo~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \id_vehiculo~1_combout\ = (id_temporal(1) & \id_leida~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => id_temporal(1),
	datad => \id_leida~q\,
	combout => \id_vehiculo~1_combout\);

-- Location: IOIBUF_X41_Y27_N8
\datos_in[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datos_in(2),
	o => \datos_in[2]~input_o\);

-- Location: LCCOMB_X39_Y21_N2
\datos_recibidos[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datos_recibidos[2]~feeder_combout\ = \datos_in[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datos_in[2]~input_o\,
	combout => \datos_recibidos[2]~feeder_combout\);

-- Location: FF_X39_Y21_N3
\datos_recibidos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \datos_recibidos[2]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \Mux33~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => datos_recibidos(2));

-- Location: FF_X38_Y21_N29
\id_temporal[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => datos_recibidos(2),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux65~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => id_temporal(2));

-- Location: LCCOMB_X38_Y21_N28
\id_vehiculo~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \id_vehiculo~2_combout\ = (id_temporal(2) & \id_leida~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => id_temporal(2),
	datad => \id_leida~q\,
	combout => \id_vehiculo~2_combout\);

-- Location: IOIBUF_X37_Y29_N15
\datos_in[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datos_in(3),
	o => \datos_in[3]~input_o\);

-- Location: LCCOMB_X37_Y21_N4
\datos_recibidos[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datos_recibidos[3]~feeder_combout\ = \datos_in[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datos_in[3]~input_o\,
	combout => \datos_recibidos[3]~feeder_combout\);

-- Location: FF_X37_Y21_N5
\datos_recibidos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \datos_recibidos[3]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \Mux33~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => datos_recibidos(3));

-- Location: FF_X37_Y21_N11
\id_temporal[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => datos_recibidos(3),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux65~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => id_temporal(3));

-- Location: LCCOMB_X37_Y21_N10
\id_vehiculo~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \id_vehiculo~3_combout\ = (id_temporal(3) & \id_leida~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => id_temporal(3),
	datad => \id_leida~q\,
	combout => \id_vehiculo~3_combout\);

-- Location: IOIBUF_X41_Y27_N15
\datos_in[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datos_in(4),
	o => \datos_in[4]~input_o\);

-- Location: LCCOMB_X40_Y22_N22
\datos_recibidos[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datos_recibidos[4]~feeder_combout\ = \datos_in[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datos_in[4]~input_o\,
	combout => \datos_recibidos[4]~feeder_combout\);

-- Location: FF_X40_Y22_N23
\datos_recibidos[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \datos_recibidos[4]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \Mux33~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => datos_recibidos(4));

-- Location: FF_X40_Y22_N25
\id_temporal[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => datos_recibidos(4),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux65~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => id_temporal(4));

-- Location: LCCOMB_X40_Y22_N24
\id_vehiculo~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \id_vehiculo~4_combout\ = (id_temporal(4) & \id_leida~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => id_temporal(4),
	datad => \id_leida~q\,
	combout => \id_vehiculo~4_combout\);

-- Location: IOIBUF_X41_Y13_N1
\datos_in[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datos_in(5),
	o => \datos_in[5]~input_o\);

-- Location: LCCOMB_X37_Y21_N14
\datos_recibidos[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datos_recibidos[5]~feeder_combout\ = \datos_in[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datos_in[5]~input_o\,
	combout => \datos_recibidos[5]~feeder_combout\);

-- Location: FF_X37_Y21_N15
\datos_recibidos[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \datos_recibidos[5]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \Mux33~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => datos_recibidos(5));

-- Location: FF_X37_Y21_N13
\id_temporal[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => datos_recibidos(5),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux65~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => id_temporal(5));

-- Location: LCCOMB_X37_Y21_N12
\id_vehiculo~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \id_vehiculo~5_combout\ = (id_temporal(5) & \id_leida~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => id_temporal(5),
	datad => \id_leida~q\,
	combout => \id_vehiculo~5_combout\);

-- Location: IOIBUF_X41_Y14_N15
\datos_in[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datos_in(6),
	o => \datos_in[6]~input_o\);

-- Location: FF_X39_Y21_N9
\datos_recibidos[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \datos_in[6]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux33~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => datos_recibidos(6));

-- Location: LCCOMB_X38_Y21_N18
\id_temporal[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \id_temporal[6]~feeder_combout\ = datos_recibidos(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => datos_recibidos(6),
	combout => \id_temporal[6]~feeder_combout\);

-- Location: FF_X38_Y21_N19
\id_temporal[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \id_temporal[6]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \Mux65~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => id_temporal(6));

-- Location: LCCOMB_X38_Y22_N8
\id_vehiculo~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \id_vehiculo~6_combout\ = (id_temporal(6) & \id_leida~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => id_temporal(6),
	datad => \id_leida~q\,
	combout => \id_vehiculo~6_combout\);

-- Location: IOIBUF_X41_Y17_N8
\datos_in[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datos_in(7),
	o => \datos_in[7]~input_o\);

-- Location: LCCOMB_X37_Y21_N30
\datos_recibidos[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datos_recibidos[7]~feeder_combout\ = \datos_in[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datos_in[7]~input_o\,
	combout => \datos_recibidos[7]~feeder_combout\);

-- Location: FF_X37_Y21_N31
\datos_recibidos[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \datos_recibidos[7]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \Mux33~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => datos_recibidos(7));

-- Location: FF_X37_Y21_N29
\id_temporal[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => datos_recibidos(7),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux65~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => id_temporal(7));

-- Location: LCCOMB_X37_Y21_N28
\id_vehiculo~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \id_vehiculo~7_combout\ = (id_temporal(7) & \id_leida~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => id_temporal(7),
	datad => \id_leida~q\,
	combout => \id_vehiculo~7_combout\);

-- Location: IOIBUF_X39_Y29_N22
\datos_in[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datos_in(8),
	o => \datos_in[8]~input_o\);

-- Location: FF_X38_Y21_N11
\datos_recibidos[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \datos_in[8]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux33~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => datos_recibidos(8));

-- Location: FF_X37_Y21_N3
\id_temporal[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => datos_recibidos(8),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux65~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => id_temporal(8));

-- Location: LCCOMB_X37_Y21_N2
\id_vehiculo~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \id_vehiculo~8_combout\ = (id_temporal(8) & \id_leida~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => id_temporal(8),
	datad => \id_leida~q\,
	combout => \id_vehiculo~8_combout\);

-- Location: IOIBUF_X41_Y12_N22
\datos_in[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datos_in(9),
	o => \datos_in[9]~input_o\);

-- Location: FF_X39_Y21_N25
\datos_recibidos[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \datos_in[9]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux33~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => datos_recibidos(9));

-- Location: FF_X38_Y21_N5
\id_temporal[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => datos_recibidos(9),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux65~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => id_temporal(9));

-- Location: LCCOMB_X38_Y21_N4
\id_vehiculo~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \id_vehiculo~9_combout\ = (id_temporal(9) & \id_leida~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => id_temporal(9),
	datad => \id_leida~q\,
	combout => \id_vehiculo~9_combout\);

-- Location: IOIBUF_X41_Y26_N22
\datos_in[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datos_in(10),
	o => \datos_in[10]~input_o\);

-- Location: LCCOMB_X38_Y21_N12
\datos_recibidos[10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datos_recibidos[10]~feeder_combout\ = \datos_in[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datos_in[10]~input_o\,
	combout => \datos_recibidos[10]~feeder_combout\);

-- Location: FF_X38_Y21_N13
\datos_recibidos[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \datos_recibidos[10]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \Mux33~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => datos_recibidos(10));

-- Location: FF_X37_Y21_N25
\id_temporal[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => datos_recibidos(10),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux65~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => id_temporal(10));

-- Location: LCCOMB_X37_Y21_N24
\id_vehiculo~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \id_vehiculo~10_combout\ = (id_temporal(10) & \id_leida~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => id_temporal(10),
	datad => \id_leida~q\,
	combout => \id_vehiculo~10_combout\);

-- Location: IOIBUF_X39_Y29_N29
\datos_in[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datos_in(11),
	o => \datos_in[11]~input_o\);

-- Location: LCCOMB_X39_Y21_N26
\datos_recibidos[11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datos_recibidos[11]~feeder_combout\ = \datos_in[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datos_in[11]~input_o\,
	combout => \datos_recibidos[11]~feeder_combout\);

-- Location: FF_X39_Y21_N27
\datos_recibidos[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \datos_recibidos[11]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \Mux33~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => datos_recibidos(11));

-- Location: FF_X38_Y21_N31
\id_temporal[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => datos_recibidos(11),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux65~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => id_temporal(11));

-- Location: LCCOMB_X38_Y21_N30
\id_vehiculo~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \id_vehiculo~11_combout\ = (id_temporal(11) & \id_leida~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => id_temporal(11),
	datad => \id_leida~q\,
	combout => \id_vehiculo~11_combout\);

-- Location: IOIBUF_X41_Y22_N22
\datos_in[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datos_in(12),
	o => \datos_in[12]~input_o\);

-- Location: LCCOMB_X38_Y22_N30
\datos_recibidos[12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datos_recibidos[12]~feeder_combout\ = \datos_in[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datos_in[12]~input_o\,
	combout => \datos_recibidos[12]~feeder_combout\);

-- Location: FF_X38_Y22_N31
\datos_recibidos[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \datos_recibidos[12]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \Mux33~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => datos_recibidos(12));

-- Location: FF_X37_Y21_N17
\id_temporal[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => datos_recibidos(12),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux65~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => id_temporal(12));

-- Location: LCCOMB_X37_Y21_N16
\id_vehiculo~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \id_vehiculo~12_combout\ = (id_temporal(12) & \id_leida~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => id_temporal(12),
	datad => \id_leida~q\,
	combout => \id_vehiculo~12_combout\);

-- Location: IOIBUF_X41_Y22_N15
\datos_in[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datos_in(13),
	o => \datos_in[13]~input_o\);

-- Location: FF_X40_Y22_N1
\datos_recibidos[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \datos_in[13]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux33~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => datos_recibidos(13));

-- Location: FF_X37_Y21_N1
\id_temporal[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => datos_recibidos(13),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux65~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => id_temporal(13));

-- Location: LCCOMB_X37_Y21_N0
\id_vehiculo~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \id_vehiculo~13_combout\ = (id_temporal(13) & \id_leida~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => id_temporal(13),
	datad => \id_leida~q\,
	combout => \id_vehiculo~13_combout\);

-- Location: IOIBUF_X41_Y26_N15
\datos_in[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datos_in(14),
	o => \datos_in[14]~input_o\);

-- Location: LCCOMB_X40_Y22_N30
\datos_recibidos[14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datos_recibidos[14]~feeder_combout\ = \datos_in[14]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datos_in[14]~input_o\,
	combout => \datos_recibidos[14]~feeder_combout\);

-- Location: FF_X40_Y22_N31
\datos_recibidos[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \datos_recibidos[14]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \Mux33~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => datos_recibidos(14));

-- Location: FF_X37_Y21_N21
\id_temporal[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => datos_recibidos(14),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux65~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => id_temporal(14));

-- Location: LCCOMB_X37_Y21_N20
\id_vehiculo~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \id_vehiculo~14_combout\ = (id_temporal(14) & \id_leida~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => id_temporal(14),
	datad => \id_leida~q\,
	combout => \id_vehiculo~14_combout\);

-- Location: IOIBUF_X41_Y25_N8
\datos_in[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datos_in(15),
	o => \datos_in[15]~input_o\);

-- Location: FF_X39_Y21_N5
\datos_recibidos[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \datos_in[15]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux33~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => datos_recibidos(15));

-- Location: FF_X40_Y21_N3
\id_temporal[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => datos_recibidos(15),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux65~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => id_temporal(15));

-- Location: LCCOMB_X40_Y21_N2
\id_vehiculo~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \id_vehiculo~15_combout\ = (\id_leida~q\ & id_temporal(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \id_leida~q\,
	datac => id_temporal(15),
	combout => \id_vehiculo~15_combout\);

-- Location: IOIBUF_X41_Y13_N8
\datos_in[16]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datos_in(16),
	o => \datos_in[16]~input_o\);

-- Location: FF_X39_Y21_N19
\datos_recibidos[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \datos_in[16]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux33~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => datos_recibidos(16));

-- Location: FF_X38_Y21_N25
\id_temporal[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => datos_recibidos(16),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux65~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => id_temporal(16));

-- Location: LCCOMB_X38_Y21_N24
\id_vehiculo~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \id_vehiculo~16_combout\ = (id_temporal(16) & \id_leida~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => id_temporal(16),
	datad => \id_leida~q\,
	combout => \id_vehiculo~16_combout\);

-- Location: IOIBUF_X41_Y25_N1
\datos_in[17]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datos_in(17),
	o => \datos_in[17]~input_o\);

-- Location: FF_X39_Y21_N13
\datos_recibidos[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \datos_in[17]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux33~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => datos_recibidos(17));

-- Location: FF_X40_Y21_N13
\id_temporal[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => datos_recibidos(17),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux65~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => id_temporal(17));

-- Location: LCCOMB_X40_Y21_N12
\id_vehiculo~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \id_vehiculo~17_combout\ = (\id_leida~q\ & id_temporal(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \id_leida~q\,
	datac => id_temporal(17),
	combout => \id_vehiculo~17_combout\);

-- Location: IOIBUF_X41_Y23_N8
\datos_in[18]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datos_in(18),
	o => \datos_in[18]~input_o\);

-- Location: LCCOMB_X40_Y21_N4
\datos_recibidos[18]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datos_recibidos[18]~feeder_combout\ = \datos_in[18]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datos_in[18]~input_o\,
	combout => \datos_recibidos[18]~feeder_combout\);

-- Location: FF_X40_Y21_N5
\datos_recibidos[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \datos_recibidos[18]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \Mux33~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => datos_recibidos(18));

-- Location: FF_X40_Y21_N29
\id_temporal[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => datos_recibidos(18),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux65~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => id_temporal(18));

-- Location: LCCOMB_X40_Y21_N28
\id_vehiculo~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \id_vehiculo~18_combout\ = (\id_leida~q\ & id_temporal(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \id_leida~q\,
	datac => id_temporal(18),
	combout => \id_vehiculo~18_combout\);

-- Location: IOIBUF_X41_Y13_N22
\datos_in[19]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datos_in(19),
	o => \datos_in[19]~input_o\);

-- Location: LCCOMB_X40_Y21_N8
\datos_recibidos[19]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datos_recibidos[19]~feeder_combout\ = \datos_in[19]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datos_in[19]~input_o\,
	combout => \datos_recibidos[19]~feeder_combout\);

-- Location: FF_X40_Y21_N9
\datos_recibidos[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \datos_recibidos[19]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \Mux33~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => datos_recibidos(19));

-- Location: FF_X40_Y21_N11
\id_temporal[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => datos_recibidos(19),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux65~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => id_temporal(19));

-- Location: LCCOMB_X40_Y21_N10
\id_vehiculo~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \id_vehiculo~19_combout\ = (\id_leida~q\ & id_temporal(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \id_leida~q\,
	datac => id_temporal(19),
	combout => \id_vehiculo~19_combout\);

-- Location: IOIBUF_X39_Y29_N15
\datos_in[20]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datos_in(20),
	o => \datos_in[20]~input_o\);

-- Location: LCCOMB_X39_Y21_N6
\datos_recibidos[20]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datos_recibidos[20]~feeder_combout\ = \datos_in[20]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datos_in[20]~input_o\,
	combout => \datos_recibidos[20]~feeder_combout\);

-- Location: FF_X39_Y21_N7
\datos_recibidos[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \datos_recibidos[20]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \Mux33~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => datos_recibidos(20));

-- Location: FF_X40_Y21_N19
\id_temporal[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => datos_recibidos(20),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux65~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => id_temporal(20));

-- Location: LCCOMB_X40_Y21_N18
\id_vehiculo~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \id_vehiculo~20_combout\ = (\id_leida~q\ & id_temporal(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \id_leida~q\,
	datac => id_temporal(20),
	combout => \id_vehiculo~20_combout\);

-- Location: IOIBUF_X41_Y12_N8
\datos_in[21]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datos_in(21),
	o => \datos_in[21]~input_o\);

-- Location: FF_X40_Y21_N27
\datos_recibidos[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \datos_in[21]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux33~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => datos_recibidos(21));

-- Location: FF_X40_Y21_N21
\id_temporal[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => datos_recibidos(21),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux65~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => id_temporal(21));

-- Location: LCCOMB_X40_Y21_N20
\id_vehiculo~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \id_vehiculo~21_combout\ = (\id_leida~q\ & id_temporal(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \id_leida~q\,
	datac => id_temporal(21),
	combout => \id_vehiculo~21_combout\);

-- Location: IOIBUF_X41_Y21_N15
\datos_in[22]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datos_in(22),
	o => \datos_in[22]~input_o\);

-- Location: LCCOMB_X40_Y21_N22
\datos_recibidos[22]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datos_recibidos[22]~feeder_combout\ = \datos_in[22]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datos_in[22]~input_o\,
	combout => \datos_recibidos[22]~feeder_combout\);

-- Location: FF_X40_Y21_N23
\datos_recibidos[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \datos_recibidos[22]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \Mux33~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => datos_recibidos(22));

-- Location: FF_X40_Y21_N7
\id_temporal[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => datos_recibidos(22),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux65~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => id_temporal(22));

-- Location: LCCOMB_X40_Y21_N6
\id_vehiculo~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \id_vehiculo~22_combout\ = (\id_leida~q\ & id_temporal(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \id_leida~q\,
	datac => id_temporal(22),
	combout => \id_vehiculo~22_combout\);

-- Location: IOIBUF_X41_Y27_N22
\datos_in[23]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datos_in(23),
	o => \datos_in[23]~input_o\);

-- Location: LCCOMB_X40_Y21_N14
\datos_recibidos[23]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datos_recibidos[23]~feeder_combout\ = \datos_in[23]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datos_in[23]~input_o\,
	combout => \datos_recibidos[23]~feeder_combout\);

-- Location: FF_X40_Y21_N15
\datos_recibidos[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \datos_recibidos[23]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \Mux33~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => datos_recibidos(23));

-- Location: FF_X40_Y21_N17
\id_temporal[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => datos_recibidos(23),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux65~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => id_temporal(23));

-- Location: LCCOMB_X40_Y21_N16
\id_vehiculo~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \id_vehiculo~23_combout\ = (\id_leida~q\ & id_temporal(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \id_leida~q\,
	datac => id_temporal(23),
	combout => \id_vehiculo~23_combout\);

-- Location: IOIBUF_X41_Y25_N15
\datos_in[24]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datos_in(24),
	o => \datos_in[24]~input_o\);

-- Location: LCCOMB_X39_Y21_N16
\datos_recibidos[24]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datos_recibidos[24]~feeder_combout\ = \datos_in[24]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datos_in[24]~input_o\,
	combout => \datos_recibidos[24]~feeder_combout\);

-- Location: FF_X39_Y21_N17
\datos_recibidos[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \datos_recibidos[24]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \Mux33~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => datos_recibidos(24));

-- Location: FF_X40_Y21_N25
\id_temporal[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => datos_recibidos(24),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux65~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => id_temporal(24));

-- Location: LCCOMB_X40_Y21_N24
\id_vehiculo~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \id_vehiculo~24_combout\ = (\id_leida~q\ & id_temporal(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \id_leida~q\,
	datac => id_temporal(24),
	combout => \id_vehiculo~24_combout\);

-- Location: IOIBUF_X37_Y29_N8
\datos_in[25]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datos_in(25),
	o => \datos_in[25]~input_o\);

-- Location: LCCOMB_X39_Y21_N14
\datos_recibidos[25]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datos_recibidos[25]~feeder_combout\ = \datos_in[25]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datos_in[25]~input_o\,
	combout => \datos_recibidos[25]~feeder_combout\);

-- Location: FF_X39_Y21_N15
\datos_recibidos[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \datos_recibidos[25]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \Mux33~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => datos_recibidos(25));

-- Location: FF_X38_Y21_N15
\id_temporal[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => datos_recibidos(25),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux65~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => id_temporal(25));

-- Location: LCCOMB_X38_Y21_N14
\id_vehiculo~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \id_vehiculo~25_combout\ = (id_temporal(25) & \id_leida~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => id_temporal(25),
	datad => \id_leida~q\,
	combout => \id_vehiculo~25_combout\);

-- Location: IOIBUF_X39_Y29_N8
\datos_in[26]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datos_in(26),
	o => \datos_in[26]~input_o\);

-- Location: FF_X39_Y21_N21
\datos_recibidos[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \datos_in[26]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux33~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => datos_recibidos(26));

-- Location: LCCOMB_X38_Y21_N8
\id_temporal[26]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \id_temporal[26]~feeder_combout\ = datos_recibidos(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => datos_recibidos(26),
	combout => \id_temporal[26]~feeder_combout\);

-- Location: FF_X38_Y21_N9
\id_temporal[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \id_temporal[26]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \Mux65~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => id_temporal(26));

-- Location: LCCOMB_X38_Y22_N6
\id_vehiculo~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \id_vehiculo~26_combout\ = (id_temporal(26) & \id_leida~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => id_temporal(26),
	datad => \id_leida~q\,
	combout => \id_vehiculo~26_combout\);

-- Location: IOIBUF_X41_Y21_N22
\datos_in[27]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datos_in(27),
	o => \datos_in[27]~input_o\);

-- Location: LCCOMB_X40_Y21_N30
\datos_recibidos[27]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datos_recibidos[27]~feeder_combout\ = \datos_in[27]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datos_in[27]~input_o\,
	combout => \datos_recibidos[27]~feeder_combout\);

-- Location: FF_X40_Y21_N31
\datos_recibidos[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \datos_recibidos[27]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \Mux33~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => datos_recibidos(27));

-- Location: FF_X40_Y21_N1
\id_temporal[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => datos_recibidos(27),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux65~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => id_temporal(27));

-- Location: LCCOMB_X40_Y21_N0
\id_vehiculo~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \id_vehiculo~27_combout\ = (\id_leida~q\ & id_temporal(27))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \id_leida~q\,
	datac => id_temporal(27),
	combout => \id_vehiculo~27_combout\);

-- Location: IOIBUF_X41_Y23_N15
\datos_in[28]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datos_in(28),
	o => \datos_in[28]~input_o\);

-- Location: LCCOMB_X38_Y21_N22
\datos_recibidos[28]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datos_recibidos[28]~feeder_combout\ = \datos_in[28]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datos_in[28]~input_o\,
	combout => \datos_recibidos[28]~feeder_combout\);

-- Location: FF_X38_Y21_N23
\datos_recibidos[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \datos_recibidos[28]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \Mux33~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => datos_recibidos(28));

-- Location: FF_X38_Y21_N17
\id_temporal[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => datos_recibidos(28),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux65~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => id_temporal(28));

-- Location: LCCOMB_X38_Y21_N16
\id_vehiculo~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \id_vehiculo~28_combout\ = (id_temporal(28) & \id_leida~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => id_temporal(28),
	datad => \id_leida~q\,
	combout => \id_vehiculo~28_combout\);

-- Location: IOIBUF_X41_Y13_N15
\datos_in[29]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datos_in(29),
	o => \datos_in[29]~input_o\);

-- Location: LCCOMB_X39_Y21_N22
\datos_recibidos[29]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datos_recibidos[29]~feeder_combout\ = \datos_in[29]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datos_in[29]~input_o\,
	combout => \datos_recibidos[29]~feeder_combout\);

-- Location: FF_X39_Y21_N23
\datos_recibidos[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \datos_recibidos[29]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \Mux33~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => datos_recibidos(29));

-- Location: LCCOMB_X38_Y21_N0
\id_temporal[29]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \id_temporal[29]~feeder_combout\ = datos_recibidos(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => datos_recibidos(29),
	combout => \id_temporal[29]~feeder_combout\);

-- Location: FF_X38_Y21_N1
\id_temporal[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \id_temporal[29]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \Mux65~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => id_temporal(29));

-- Location: LCCOMB_X38_Y22_N0
\id_vehiculo~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \id_vehiculo~29_combout\ = (\id_leida~q\ & id_temporal(29))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \id_leida~q\,
	datad => id_temporal(29),
	combout => \id_vehiculo~29_combout\);

-- Location: IOIBUF_X41_Y27_N1
\datos_in[30]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datos_in(30),
	o => \datos_in[30]~input_o\);

-- Location: LCCOMB_X39_Y21_N28
\datos_recibidos[30]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datos_recibidos[30]~feeder_combout\ = \datos_in[30]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datos_in[30]~input_o\,
	combout => \datos_recibidos[30]~feeder_combout\);

-- Location: FF_X39_Y21_N29
\datos_recibidos[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \datos_recibidos[30]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \Mux33~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => datos_recibidos(30));

-- Location: LCCOMB_X38_Y21_N20
\id_temporal[30]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \id_temporal[30]~feeder_combout\ = datos_recibidos(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => datos_recibidos(30),
	combout => \id_temporal[30]~feeder_combout\);

-- Location: FF_X38_Y21_N21
\id_temporal[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \id_temporal[30]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \Mux65~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => id_temporal(30));

-- Location: LCCOMB_X38_Y22_N14
\id_vehiculo~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \id_vehiculo~30_combout\ = (id_temporal(30) & \id_leida~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => id_temporal(30),
	datad => \id_leida~q\,
	combout => \id_vehiculo~30_combout\);

-- Location: IOIBUF_X41_Y18_N1
\datos_in[31]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datos_in(31),
	o => \datos_in[31]~input_o\);

-- Location: LCCOMB_X39_Y21_N10
\datos_recibidos[31]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datos_recibidos[31]~feeder_combout\ = \datos_in[31]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datos_in[31]~input_o\,
	combout => \datos_recibidos[31]~feeder_combout\);

-- Location: FF_X39_Y21_N11
\datos_recibidos[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \datos_recibidos[31]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \Mux33~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => datos_recibidos(31));

-- Location: FF_X38_Y21_N7
\id_temporal[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => datos_recibidos(31),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux65~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => id_temporal(31));

-- Location: LCCOMB_X38_Y21_N6
\id_vehiculo~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \id_vehiculo~31_combout\ = (id_temporal(31) & \id_leida~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => id_temporal(31),
	datad => \id_leida~q\,
	combout => \id_vehiculo~31_combout\);

-- Location: IOIBUF_X41_Y15_N8
\miso~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_miso,
	o => \miso~input_o\);

-- Location: IOIBUF_X19_Y0_N8
\sda~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => sda,
	o => \sda~input_o\);

ww_sck <= \sck~output_o\;

ww_mosi <= \mosi~output_o\;

ww_id_vehiculo(0) <= \id_vehiculo[0]~output_o\;

ww_id_vehiculo(1) <= \id_vehiculo[1]~output_o\;

ww_id_vehiculo(2) <= \id_vehiculo[2]~output_o\;

ww_id_vehiculo(3) <= \id_vehiculo[3]~output_o\;

ww_id_vehiculo(4) <= \id_vehiculo[4]~output_o\;

ww_id_vehiculo(5) <= \id_vehiculo[5]~output_o\;

ww_id_vehiculo(6) <= \id_vehiculo[6]~output_o\;

ww_id_vehiculo(7) <= \id_vehiculo[7]~output_o\;

ww_id_vehiculo(8) <= \id_vehiculo[8]~output_o\;

ww_id_vehiculo(9) <= \id_vehiculo[9]~output_o\;

ww_id_vehiculo(10) <= \id_vehiculo[10]~output_o\;

ww_id_vehiculo(11) <= \id_vehiculo[11]~output_o\;

ww_id_vehiculo(12) <= \id_vehiculo[12]~output_o\;

ww_id_vehiculo(13) <= \id_vehiculo[13]~output_o\;

ww_id_vehiculo(14) <= \id_vehiculo[14]~output_o\;

ww_id_vehiculo(15) <= \id_vehiculo[15]~output_o\;

ww_id_vehiculo(16) <= \id_vehiculo[16]~output_o\;

ww_id_vehiculo(17) <= \id_vehiculo[17]~output_o\;

ww_id_vehiculo(18) <= \id_vehiculo[18]~output_o\;

ww_id_vehiculo(19) <= \id_vehiculo[19]~output_o\;

ww_id_vehiculo(20) <= \id_vehiculo[20]~output_o\;

ww_id_vehiculo(21) <= \id_vehiculo[21]~output_o\;

ww_id_vehiculo(22) <= \id_vehiculo[22]~output_o\;

ww_id_vehiculo(23) <= \id_vehiculo[23]~output_o\;

ww_id_vehiculo(24) <= \id_vehiculo[24]~output_o\;

ww_id_vehiculo(25) <= \id_vehiculo[25]~output_o\;

ww_id_vehiculo(26) <= \id_vehiculo[26]~output_o\;

ww_id_vehiculo(27) <= \id_vehiculo[27]~output_o\;

ww_id_vehiculo(28) <= \id_vehiculo[28]~output_o\;

ww_id_vehiculo(29) <= \id_vehiculo[29]~output_o\;

ww_id_vehiculo(30) <= \id_vehiculo[30]~output_o\;

ww_id_vehiculo(31) <= \id_vehiculo[31]~output_o\;

sda <= \sda~output_o\;
END structure;


