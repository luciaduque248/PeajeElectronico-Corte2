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

-- DATE "05/12/2024 18:30:55"

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

ENTITY 	ControladorLCDRoHS IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	total_vehiculos : IN IEEE.NUMERIC_STD.unsigned(13 DOWNTO 0);
	tiempo_ultimo : IN IEEE.NUMERIC_STD.unsigned(13 DOWNTO 0);
	estado_sistema : IN std_logic_vector(2 DOWNTO 0);
	lcd_data : OUT std_logic_vector(7 DOWNTO 0);
	lcd_rs : OUT std_logic;
	lcd_rw : OUT std_logic;
	lcd_en : OUT std_logic
	);
END ControladorLCDRoHS;

-- Design Ports Information
-- lcd_data[0]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[1]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[2]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[3]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[4]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[5]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[6]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[7]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_rs	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_rw	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_en	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- total_vehiculos[8]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tiempo_ultimo[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tiempo_ultimo[8]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- total_vehiculos[0]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tiempo_ultimo[1]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- total_vehiculos[9]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tiempo_ultimo[9]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- total_vehiculos[1]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- total_vehiculos[10]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tiempo_ultimo[2]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tiempo_ultimo[10]	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- total_vehiculos[2]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tiempo_ultimo[3]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- total_vehiculos[11]	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tiempo_ultimo[11]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- total_vehiculos[3]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- total_vehiculos[12]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tiempo_ultimo[4]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tiempo_ultimo[12]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- total_vehiculos[4]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tiempo_ultimo[5]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- total_vehiculos[13]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tiempo_ultimo[13]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- total_vehiculos[5]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tiempo_ultimo[6]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- total_vehiculos[6]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tiempo_ultimo[7]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- total_vehiculos[7]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estado_sistema[1]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estado_sistema[0]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estado_sistema[2]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ControladorLCDRoHS IS
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
SIGNAL ww_total_vehiculos : std_logic_vector(13 DOWNTO 0);
SIGNAL ww_tiempo_ultimo : std_logic_vector(13 DOWNTO 0);
SIGNAL ww_estado_sistema : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_lcd_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_lcd_rs : std_logic;
SIGNAL ww_lcd_rw : std_logic;
SIGNAL ww_lcd_en : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \lcd_data[0]~output_o\ : std_logic;
SIGNAL \lcd_data[1]~output_o\ : std_logic;
SIGNAL \lcd_data[2]~output_o\ : std_logic;
SIGNAL \lcd_data[3]~output_o\ : std_logic;
SIGNAL \lcd_data[4]~output_o\ : std_logic;
SIGNAL \lcd_data[5]~output_o\ : std_logic;
SIGNAL \lcd_data[6]~output_o\ : std_logic;
SIGNAL \lcd_data[7]~output_o\ : std_logic;
SIGNAL \lcd_rs~output_o\ : std_logic;
SIGNAL \lcd_rw~output_o\ : std_logic;
SIGNAL \lcd_en~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst_PantallaLcd|Add0~0_combout\ : std_logic;
SIGNAL \inst_PantallaLcd|Mux24~0_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst_PantallaLcd|estado[1]~1_combout\ : std_logic;
SIGNAL \inst_PantallaLcd|lcd_data_int[3]~0_combout\ : std_logic;
SIGNAL \inst_PantallaLcd|Add0~1\ : std_logic;
SIGNAL \inst_PantallaLcd|Add0~2_combout\ : std_logic;
SIGNAL \inst_PantallaLcd|Add0~3\ : std_logic;
SIGNAL \inst_PantallaLcd|Add0~4_combout\ : std_logic;
SIGNAL \inst_PantallaLcd|Add0~5\ : std_logic;
SIGNAL \inst_PantallaLcd|Add0~6_combout\ : std_logic;
SIGNAL \inst_PantallaLcd|Add0~7\ : std_logic;
SIGNAL \inst_PantallaLcd|Add0~8_combout\ : std_logic;
SIGNAL \inst_PantallaLcd|Mux20~0_combout\ : std_logic;
SIGNAL \inst_PantallaLcd|Equal0~3_combout\ : std_logic;
SIGNAL \inst_PantallaLcd|Add0~9\ : std_logic;
SIGNAL \inst_PantallaLcd|Add0~10_combout\ : std_logic;
SIGNAL \inst_PantallaLcd|Add0~11\ : std_logic;
SIGNAL \inst_PantallaLcd|Add0~12_combout\ : std_logic;
SIGNAL \inst_PantallaLcd|Mux18~0_combout\ : std_logic;
SIGNAL \inst_PantallaLcd|Add0~13\ : std_logic;
SIGNAL \inst_PantallaLcd|Add0~14_combout\ : std_logic;
SIGNAL \inst_PantallaLcd|Add0~15\ : std_logic;
SIGNAL \inst_PantallaLcd|Add0~16_combout\ : std_logic;
SIGNAL \inst_PantallaLcd|Mux16~0_combout\ : std_logic;
SIGNAL \inst_PantallaLcd|Equal0~2_combout\ : std_logic;
SIGNAL \inst_PantallaLcd|Add0~17\ : std_logic;
SIGNAL \inst_PantallaLcd|Add0~18_combout\ : std_logic;
SIGNAL \inst_PantallaLcd|Mux15~0_combout\ : std_logic;
SIGNAL \inst_PantallaLcd|Add0~19\ : std_logic;
SIGNAL \inst_PantallaLcd|Add0~20_combout\ : std_logic;
SIGNAL \inst_PantallaLcd|Add0~21\ : std_logic;
SIGNAL \inst_PantallaLcd|Add0~22_combout\ : std_logic;
SIGNAL \inst_PantallaLcd|Add0~23\ : std_logic;
SIGNAL \inst_PantallaLcd|Add0~24_combout\ : std_logic;
SIGNAL \inst_PantallaLcd|Equal0~1_combout\ : std_logic;
SIGNAL \inst_PantallaLcd|Add0~25\ : std_logic;
SIGNAL \inst_PantallaLcd|Add0~26_combout\ : std_logic;
SIGNAL \inst_PantallaLcd|Add0~27\ : std_logic;
SIGNAL \inst_PantallaLcd|Add0~28_combout\ : std_logic;
SIGNAL \inst_PantallaLcd|Mux10~0_combout\ : std_logic;
SIGNAL \inst_PantallaLcd|Add0~29\ : std_logic;
SIGNAL \inst_PantallaLcd|Add0~30_combout\ : std_logic;
SIGNAL \inst_PantallaLcd|Mux9~0_combout\ : std_logic;
SIGNAL \inst_PantallaLcd|Equal0~0_combout\ : std_logic;
SIGNAL \inst_PantallaLcd|Equal0~4_combout\ : std_logic;
SIGNAL \inst_PantallaLcd|estado[0]~0_combout\ : std_logic;
SIGNAL \estado_sistema[2]~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \contador_refresco~0_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \estado_siguiente~2_combout\ : std_logic;
SIGNAL \estado_actual[2]~feeder_combout\ : std_logic;
SIGNAL \estado_sistema[0]~input_o\ : std_logic;
SIGNAL \estado_siguiente~1_combout\ : std_logic;
SIGNAL \estado_sistema[1]~input_o\ : std_logic;
SIGNAL \estado_siguiente~0_combout\ : std_logic;
SIGNAL \total_vehiculos[0]~input_o\ : std_logic;
SIGNAL \dato_lcd[1]~4_combout\ : std_logic;
SIGNAL \total_vehiculos[8]~input_o\ : std_logic;
SIGNAL \tiempo_ultimo[0]~input_o\ : std_logic;
SIGNAL \tiempo_ultimo[8]~input_o\ : std_logic;
SIGNAL \dato_lcd[1]~5_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \inst_PantallaLcd|Mux7~0_combout\ : std_logic;
SIGNAL \total_vehiculos[1]~input_o\ : std_logic;
SIGNAL \tiempo_ultimo[1]~input_o\ : std_logic;
SIGNAL \tiempo_ultimo[9]~input_o\ : std_logic;
SIGNAL \total_vehiculos[9]~input_o\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \inst_PantallaLcd|Mux6~0_combout\ : std_logic;
SIGNAL \total_vehiculos[10]~input_o\ : std_logic;
SIGNAL \total_vehiculos[2]~input_o\ : std_logic;
SIGNAL \tiempo_ultimo[10]~input_o\ : std_logic;
SIGNAL \tiempo_ultimo[2]~input_o\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \inst_PantallaLcd|Mux5~0_combout\ : std_logic;
SIGNAL \total_vehiculos[3]~input_o\ : std_logic;
SIGNAL \tiempo_ultimo[3]~input_o\ : std_logic;
SIGNAL \total_vehiculos[11]~input_o\ : std_logic;
SIGNAL \tiempo_ultimo[11]~input_o\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \inst_PantallaLcd|Mux4~0_combout\ : std_logic;
SIGNAL \total_vehiculos[12]~input_o\ : std_logic;
SIGNAL \total_vehiculos[4]~input_o\ : std_logic;
SIGNAL \tiempo_ultimo[12]~input_o\ : std_logic;
SIGNAL \tiempo_ultimo[4]~input_o\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \inst_PantallaLcd|Mux3~0_combout\ : std_logic;
SIGNAL \total_vehiculos[5]~input_o\ : std_logic;
SIGNAL \tiempo_ultimo[5]~input_o\ : std_logic;
SIGNAL \total_vehiculos[13]~input_o\ : std_logic;
SIGNAL \tiempo_ultimo[13]~input_o\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \inst_PantallaLcd|Mux2~0_combout\ : std_logic;
SIGNAL \tiempo_ultimo[6]~input_o\ : std_logic;
SIGNAL \total_vehiculos[6]~input_o\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \inst_PantallaLcd|Mux1~0_combout\ : std_logic;
SIGNAL \tiempo_ultimo[7]~input_o\ : std_logic;
SIGNAL \total_vehiculos[7]~input_o\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \inst_PantallaLcd|Mux0~0_combout\ : std_logic;
SIGNAL \inst_PantallaLcd|lcd_rs_int~0_combout\ : std_logic;
SIGNAL \inst_PantallaLcd|lcd_rs_int~q\ : std_logic;
SIGNAL \inst_PantallaLcd|lcd_en_int~feeder_combout\ : std_logic;
SIGNAL \inst_PantallaLcd|lcd_en_int~q\ : std_logic;
SIGNAL estado_siguiente : std_logic_vector(2 DOWNTO 0);
SIGNAL estado_actual : std_logic_vector(2 DOWNTO 0);
SIGNAL dato_lcd : std_logic_vector(7 DOWNTO 0);
SIGNAL contador_refresco : std_logic_vector(19 DOWNTO 0);
SIGNAL \inst_PantallaLcd|lcd_data_int\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst_PantallaLcd|estado\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst_PantallaLcd|contador\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_rst~input_o\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_total_vehiculos <= IEEE.STD_LOGIC_1164.STD_LOGIC_VECTOR(total_vehiculos);
ww_tiempo_ultimo <= IEEE.STD_LOGIC_1164.STD_LOGIC_VECTOR(tiempo_ultimo);
ww_estado_sistema <= estado_sistema;
lcd_data <= ww_lcd_data;
lcd_rs <= ww_lcd_rs;
lcd_rw <= ww_lcd_rw;
lcd_en <= ww_lcd_en;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);
\ALT_INV_rst~inputclkctrl_outclk\ <= NOT \rst~inputclkctrl_outclk\;
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;

-- Location: IOOBUF_X41_Y27_N16
\lcd_data[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_PantallaLcd|lcd_data_int\(0),
	devoe => ww_devoe,
	o => \lcd_data[0]~output_o\);

-- Location: IOOBUF_X41_Y25_N9
\lcd_data[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_PantallaLcd|lcd_data_int\(1),
	devoe => ww_devoe,
	o => \lcd_data[1]~output_o\);

-- Location: IOOBUF_X41_Y22_N2
\lcd_data[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_PantallaLcd|lcd_data_int\(2),
	devoe => ww_devoe,
	o => \lcd_data[2]~output_o\);

-- Location: IOOBUF_X41_Y22_N23
\lcd_data[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_PantallaLcd|lcd_data_int\(3),
	devoe => ww_devoe,
	o => \lcd_data[3]~output_o\);

-- Location: IOOBUF_X41_Y26_N2
\lcd_data[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_PantallaLcd|lcd_data_int\(4),
	devoe => ww_devoe,
	o => \lcd_data[4]~output_o\);

-- Location: IOOBUF_X41_Y23_N9
\lcd_data[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_PantallaLcd|lcd_data_int\(5),
	devoe => ww_devoe,
	o => \lcd_data[5]~output_o\);

-- Location: IOOBUF_X41_Y23_N23
\lcd_data[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_PantallaLcd|lcd_data_int\(6),
	devoe => ww_devoe,
	o => \lcd_data[6]~output_o\);

-- Location: IOOBUF_X41_Y22_N16
\lcd_data[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_PantallaLcd|lcd_data_int\(7),
	devoe => ww_devoe,
	o => \lcd_data[7]~output_o\);

-- Location: IOOBUF_X39_Y29_N30
\lcd_rs~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_PantallaLcd|lcd_rs_int~q\,
	devoe => ww_devoe,
	o => \lcd_rs~output_o\);

-- Location: IOOBUF_X14_Y0_N23
\lcd_rw~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \lcd_rw~output_o\);

-- Location: IOOBUF_X41_Y26_N23
\lcd_en~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_PantallaLcd|lcd_en_int~q\,
	devoe => ww_devoe,
	o => \lcd_en~output_o\);

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

-- Location: LCCOMB_X39_Y24_N0
\inst_PantallaLcd|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_PantallaLcd|Add0~0_combout\ = \inst_PantallaLcd|contador\(0) $ (VCC)
-- \inst_PantallaLcd|Add0~1\ = CARRY(\inst_PantallaLcd|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_PantallaLcd|contador\(0),
	datad => VCC,
	combout => \inst_PantallaLcd|Add0~0_combout\,
	cout => \inst_PantallaLcd|Add0~1\);

-- Location: LCCOMB_X40_Y24_N28
\inst_PantallaLcd|Mux24~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_PantallaLcd|Mux24~0_combout\ = (\inst_PantallaLcd|Add0~0_combout\ & \inst_PantallaLcd|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_PantallaLcd|Add0~0_combout\,
	datac => \inst_PantallaLcd|Equal0~4_combout\,
	combout => \inst_PantallaLcd|Mux24~0_combout\);

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

-- Location: LCCOMB_X40_Y24_N0
\inst_PantallaLcd|estado[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_PantallaLcd|estado[1]~1_combout\ = (\inst_PantallaLcd|estado\(1)) # ((!\inst_PantallaLcd|Equal0~4_combout\ & \inst_PantallaLcd|estado\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_PantallaLcd|Equal0~4_combout\,
	datac => \inst_PantallaLcd|estado\(1),
	datad => \inst_PantallaLcd|estado\(0),
	combout => \inst_PantallaLcd|estado[1]~1_combout\);

-- Location: FF_X40_Y24_N1
\inst_PantallaLcd|estado[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_PantallaLcd|estado[1]~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_PantallaLcd|estado\(1));

-- Location: LCCOMB_X40_Y24_N14
\inst_PantallaLcd|lcd_data_int[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_PantallaLcd|lcd_data_int[3]~0_combout\ = (!\inst_PantallaLcd|estado\(1)) # (!\inst_PantallaLcd|estado\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_PantallaLcd|estado\(0),
	datad => \inst_PantallaLcd|estado\(1),
	combout => \inst_PantallaLcd|lcd_data_int[3]~0_combout\);

-- Location: FF_X40_Y24_N29
\inst_PantallaLcd|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_PantallaLcd|Mux24~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \inst_PantallaLcd|lcd_data_int[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_PantallaLcd|contador\(0));

-- Location: LCCOMB_X39_Y24_N2
\inst_PantallaLcd|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_PantallaLcd|Add0~2_combout\ = (\inst_PantallaLcd|contador\(1) & (!\inst_PantallaLcd|Add0~1\)) # (!\inst_PantallaLcd|contador\(1) & ((\inst_PantallaLcd|Add0~1\) # (GND)))
-- \inst_PantallaLcd|Add0~3\ = CARRY((!\inst_PantallaLcd|Add0~1\) # (!\inst_PantallaLcd|contador\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_PantallaLcd|contador\(1),
	datad => VCC,
	cin => \inst_PantallaLcd|Add0~1\,
	combout => \inst_PantallaLcd|Add0~2_combout\,
	cout => \inst_PantallaLcd|Add0~3\);

-- Location: FF_X39_Y24_N3
\inst_PantallaLcd|contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_PantallaLcd|Add0~2_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \inst_PantallaLcd|lcd_data_int[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_PantallaLcd|contador\(1));

-- Location: LCCOMB_X39_Y24_N4
\inst_PantallaLcd|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_PantallaLcd|Add0~4_combout\ = (\inst_PantallaLcd|contador\(2) & (\inst_PantallaLcd|Add0~3\ $ (GND))) # (!\inst_PantallaLcd|contador\(2) & (!\inst_PantallaLcd|Add0~3\ & VCC))
-- \inst_PantallaLcd|Add0~5\ = CARRY((\inst_PantallaLcd|contador\(2) & !\inst_PantallaLcd|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_PantallaLcd|contador\(2),
	datad => VCC,
	cin => \inst_PantallaLcd|Add0~3\,
	combout => \inst_PantallaLcd|Add0~4_combout\,
	cout => \inst_PantallaLcd|Add0~5\);

-- Location: FF_X39_Y24_N5
\inst_PantallaLcd|contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_PantallaLcd|Add0~4_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \inst_PantallaLcd|lcd_data_int[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_PantallaLcd|contador\(2));

-- Location: LCCOMB_X39_Y24_N6
\inst_PantallaLcd|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_PantallaLcd|Add0~6_combout\ = (\inst_PantallaLcd|contador\(3) & (!\inst_PantallaLcd|Add0~5\)) # (!\inst_PantallaLcd|contador\(3) & ((\inst_PantallaLcd|Add0~5\) # (GND)))
-- \inst_PantallaLcd|Add0~7\ = CARRY((!\inst_PantallaLcd|Add0~5\) # (!\inst_PantallaLcd|contador\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_PantallaLcd|contador\(3),
	datad => VCC,
	cin => \inst_PantallaLcd|Add0~5\,
	combout => \inst_PantallaLcd|Add0~6_combout\,
	cout => \inst_PantallaLcd|Add0~7\);

-- Location: FF_X39_Y24_N7
\inst_PantallaLcd|contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_PantallaLcd|Add0~6_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \inst_PantallaLcd|lcd_data_int[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_PantallaLcd|contador\(3));

-- Location: LCCOMB_X39_Y24_N8
\inst_PantallaLcd|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_PantallaLcd|Add0~8_combout\ = (\inst_PantallaLcd|contador\(4) & (\inst_PantallaLcd|Add0~7\ $ (GND))) # (!\inst_PantallaLcd|contador\(4) & (!\inst_PantallaLcd|Add0~7\ & VCC))
-- \inst_PantallaLcd|Add0~9\ = CARRY((\inst_PantallaLcd|contador\(4) & !\inst_PantallaLcd|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_PantallaLcd|contador\(4),
	datad => VCC,
	cin => \inst_PantallaLcd|Add0~7\,
	combout => \inst_PantallaLcd|Add0~8_combout\,
	cout => \inst_PantallaLcd|Add0~9\);

-- Location: LCCOMB_X40_Y24_N30
\inst_PantallaLcd|Mux20~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_PantallaLcd|Mux20~0_combout\ = (\inst_PantallaLcd|Equal0~4_combout\ & \inst_PantallaLcd|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_PantallaLcd|Equal0~4_combout\,
	datad => \inst_PantallaLcd|Add0~8_combout\,
	combout => \inst_PantallaLcd|Mux20~0_combout\);

-- Location: FF_X40_Y24_N31
\inst_PantallaLcd|contador[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_PantallaLcd|Mux20~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \inst_PantallaLcd|lcd_data_int[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_PantallaLcd|contador\(4));

-- Location: LCCOMB_X40_Y24_N12
\inst_PantallaLcd|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_PantallaLcd|Equal0~3_combout\ = ((\inst_PantallaLcd|contador\(2)) # ((\inst_PantallaLcd|contador\(3)) # (\inst_PantallaLcd|contador\(1)))) # (!\inst_PantallaLcd|contador\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_PantallaLcd|contador\(4),
	datab => \inst_PantallaLcd|contador\(2),
	datac => \inst_PantallaLcd|contador\(3),
	datad => \inst_PantallaLcd|contador\(1),
	combout => \inst_PantallaLcd|Equal0~3_combout\);

-- Location: LCCOMB_X39_Y24_N10
\inst_PantallaLcd|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_PantallaLcd|Add0~10_combout\ = (\inst_PantallaLcd|contador\(5) & (!\inst_PantallaLcd|Add0~9\)) # (!\inst_PantallaLcd|contador\(5) & ((\inst_PantallaLcd|Add0~9\) # (GND)))
-- \inst_PantallaLcd|Add0~11\ = CARRY((!\inst_PantallaLcd|Add0~9\) # (!\inst_PantallaLcd|contador\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_PantallaLcd|contador\(5),
	datad => VCC,
	cin => \inst_PantallaLcd|Add0~9\,
	combout => \inst_PantallaLcd|Add0~10_combout\,
	cout => \inst_PantallaLcd|Add0~11\);

-- Location: FF_X39_Y24_N11
\inst_PantallaLcd|contador[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_PantallaLcd|Add0~10_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \inst_PantallaLcd|lcd_data_int[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_PantallaLcd|contador\(5));

-- Location: LCCOMB_X39_Y24_N12
\inst_PantallaLcd|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_PantallaLcd|Add0~12_combout\ = (\inst_PantallaLcd|contador\(6) & (\inst_PantallaLcd|Add0~11\ $ (GND))) # (!\inst_PantallaLcd|contador\(6) & (!\inst_PantallaLcd|Add0~11\ & VCC))
-- \inst_PantallaLcd|Add0~13\ = CARRY((\inst_PantallaLcd|contador\(6) & !\inst_PantallaLcd|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_PantallaLcd|contador\(6),
	datad => VCC,
	cin => \inst_PantallaLcd|Add0~11\,
	combout => \inst_PantallaLcd|Add0~12_combout\,
	cout => \inst_PantallaLcd|Add0~13\);

-- Location: LCCOMB_X40_Y24_N10
\inst_PantallaLcd|Mux18~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_PantallaLcd|Mux18~0_combout\ = (\inst_PantallaLcd|Equal0~4_combout\ & \inst_PantallaLcd|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_PantallaLcd|Equal0~4_combout\,
	datad => \inst_PantallaLcd|Add0~12_combout\,
	combout => \inst_PantallaLcd|Mux18~0_combout\);

-- Location: FF_X40_Y24_N11
\inst_PantallaLcd|contador[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_PantallaLcd|Mux18~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \inst_PantallaLcd|lcd_data_int[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_PantallaLcd|contador\(6));

-- Location: LCCOMB_X39_Y24_N14
\inst_PantallaLcd|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_PantallaLcd|Add0~14_combout\ = (\inst_PantallaLcd|contador\(7) & (!\inst_PantallaLcd|Add0~13\)) # (!\inst_PantallaLcd|contador\(7) & ((\inst_PantallaLcd|Add0~13\) # (GND)))
-- \inst_PantallaLcd|Add0~15\ = CARRY((!\inst_PantallaLcd|Add0~13\) # (!\inst_PantallaLcd|contador\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_PantallaLcd|contador\(7),
	datad => VCC,
	cin => \inst_PantallaLcd|Add0~13\,
	combout => \inst_PantallaLcd|Add0~14_combout\,
	cout => \inst_PantallaLcd|Add0~15\);

-- Location: FF_X39_Y24_N15
\inst_PantallaLcd|contador[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_PantallaLcd|Add0~14_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \inst_PantallaLcd|lcd_data_int[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_PantallaLcd|contador\(7));

-- Location: LCCOMB_X39_Y24_N16
\inst_PantallaLcd|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_PantallaLcd|Add0~16_combout\ = (\inst_PantallaLcd|contador\(8) & (\inst_PantallaLcd|Add0~15\ $ (GND))) # (!\inst_PantallaLcd|contador\(8) & (!\inst_PantallaLcd|Add0~15\ & VCC))
-- \inst_PantallaLcd|Add0~17\ = CARRY((\inst_PantallaLcd|contador\(8) & !\inst_PantallaLcd|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_PantallaLcd|contador\(8),
	datad => VCC,
	cin => \inst_PantallaLcd|Add0~15\,
	combout => \inst_PantallaLcd|Add0~16_combout\,
	cout => \inst_PantallaLcd|Add0~17\);

-- Location: LCCOMB_X40_Y24_N4
\inst_PantallaLcd|Mux16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_PantallaLcd|Mux16~0_combout\ = (\inst_PantallaLcd|Equal0~4_combout\ & \inst_PantallaLcd|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_PantallaLcd|Equal0~4_combout\,
	datac => \inst_PantallaLcd|Add0~16_combout\,
	combout => \inst_PantallaLcd|Mux16~0_combout\);

-- Location: FF_X40_Y24_N5
\inst_PantallaLcd|contador[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_PantallaLcd|Mux16~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \inst_PantallaLcd|lcd_data_int[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_PantallaLcd|contador\(8));

-- Location: LCCOMB_X40_Y24_N24
\inst_PantallaLcd|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_PantallaLcd|Equal0~2_combout\ = (\inst_PantallaLcd|contador\(7)) # (((\inst_PantallaLcd|contador\(5)) # (!\inst_PantallaLcd|contador\(8))) # (!\inst_PantallaLcd|contador\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_PantallaLcd|contador\(7),
	datab => \inst_PantallaLcd|contador\(6),
	datac => \inst_PantallaLcd|contador\(8),
	datad => \inst_PantallaLcd|contador\(5),
	combout => \inst_PantallaLcd|Equal0~2_combout\);

-- Location: LCCOMB_X39_Y24_N18
\inst_PantallaLcd|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_PantallaLcd|Add0~18_combout\ = (\inst_PantallaLcd|contador\(9) & (!\inst_PantallaLcd|Add0~17\)) # (!\inst_PantallaLcd|contador\(9) & ((\inst_PantallaLcd|Add0~17\) # (GND)))
-- \inst_PantallaLcd|Add0~19\ = CARRY((!\inst_PantallaLcd|Add0~17\) # (!\inst_PantallaLcd|contador\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_PantallaLcd|contador\(9),
	datad => VCC,
	cin => \inst_PantallaLcd|Add0~17\,
	combout => \inst_PantallaLcd|Add0~18_combout\,
	cout => \inst_PantallaLcd|Add0~19\);

-- Location: LCCOMB_X40_Y24_N8
\inst_PantallaLcd|Mux15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_PantallaLcd|Mux15~0_combout\ = (\inst_PantallaLcd|Equal0~4_combout\ & \inst_PantallaLcd|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_PantallaLcd|Equal0~4_combout\,
	datad => \inst_PantallaLcd|Add0~18_combout\,
	combout => \inst_PantallaLcd|Mux15~0_combout\);

-- Location: FF_X40_Y24_N9
\inst_PantallaLcd|contador[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_PantallaLcd|Mux15~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \inst_PantallaLcd|lcd_data_int[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_PantallaLcd|contador\(9));

-- Location: LCCOMB_X39_Y24_N20
\inst_PantallaLcd|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_PantallaLcd|Add0~20_combout\ = (\inst_PantallaLcd|contador\(10) & (\inst_PantallaLcd|Add0~19\ $ (GND))) # (!\inst_PantallaLcd|contador\(10) & (!\inst_PantallaLcd|Add0~19\ & VCC))
-- \inst_PantallaLcd|Add0~21\ = CARRY((\inst_PantallaLcd|contador\(10) & !\inst_PantallaLcd|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_PantallaLcd|contador\(10),
	datad => VCC,
	cin => \inst_PantallaLcd|Add0~19\,
	combout => \inst_PantallaLcd|Add0~20_combout\,
	cout => \inst_PantallaLcd|Add0~21\);

-- Location: FF_X39_Y24_N21
\inst_PantallaLcd|contador[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_PantallaLcd|Add0~20_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \inst_PantallaLcd|lcd_data_int[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_PantallaLcd|contador\(10));

-- Location: LCCOMB_X39_Y24_N22
\inst_PantallaLcd|Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_PantallaLcd|Add0~22_combout\ = (\inst_PantallaLcd|contador\(11) & (!\inst_PantallaLcd|Add0~21\)) # (!\inst_PantallaLcd|contador\(11) & ((\inst_PantallaLcd|Add0~21\) # (GND)))
-- \inst_PantallaLcd|Add0~23\ = CARRY((!\inst_PantallaLcd|Add0~21\) # (!\inst_PantallaLcd|contador\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_PantallaLcd|contador\(11),
	datad => VCC,
	cin => \inst_PantallaLcd|Add0~21\,
	combout => \inst_PantallaLcd|Add0~22_combout\,
	cout => \inst_PantallaLcd|Add0~23\);

-- Location: FF_X39_Y24_N23
\inst_PantallaLcd|contador[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_PantallaLcd|Add0~22_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \inst_PantallaLcd|lcd_data_int[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_PantallaLcd|contador\(11));

-- Location: LCCOMB_X39_Y24_N24
\inst_PantallaLcd|Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_PantallaLcd|Add0~24_combout\ = (\inst_PantallaLcd|contador\(12) & (\inst_PantallaLcd|Add0~23\ $ (GND))) # (!\inst_PantallaLcd|contador\(12) & (!\inst_PantallaLcd|Add0~23\ & VCC))
-- \inst_PantallaLcd|Add0~25\ = CARRY((\inst_PantallaLcd|contador\(12) & !\inst_PantallaLcd|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_PantallaLcd|contador\(12),
	datad => VCC,
	cin => \inst_PantallaLcd|Add0~23\,
	combout => \inst_PantallaLcd|Add0~24_combout\,
	cout => \inst_PantallaLcd|Add0~25\);

-- Location: FF_X39_Y24_N25
\inst_PantallaLcd|contador[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_PantallaLcd|Add0~24_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \inst_PantallaLcd|lcd_data_int[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_PantallaLcd|contador\(12));

-- Location: LCCOMB_X40_Y24_N26
\inst_PantallaLcd|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_PantallaLcd|Equal0~1_combout\ = (\inst_PantallaLcd|contador\(12)) # ((\inst_PantallaLcd|contador\(11)) # ((\inst_PantallaLcd|contador\(10)) # (!\inst_PantallaLcd|contador\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_PantallaLcd|contador\(12),
	datab => \inst_PantallaLcd|contador\(11),
	datac => \inst_PantallaLcd|contador\(9),
	datad => \inst_PantallaLcd|contador\(10),
	combout => \inst_PantallaLcd|Equal0~1_combout\);

-- Location: LCCOMB_X39_Y24_N26
\inst_PantallaLcd|Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_PantallaLcd|Add0~26_combout\ = (\inst_PantallaLcd|contador\(13) & (!\inst_PantallaLcd|Add0~25\)) # (!\inst_PantallaLcd|contador\(13) & ((\inst_PantallaLcd|Add0~25\) # (GND)))
-- \inst_PantallaLcd|Add0~27\ = CARRY((!\inst_PantallaLcd|Add0~25\) # (!\inst_PantallaLcd|contador\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_PantallaLcd|contador\(13),
	datad => VCC,
	cin => \inst_PantallaLcd|Add0~25\,
	combout => \inst_PantallaLcd|Add0~26_combout\,
	cout => \inst_PantallaLcd|Add0~27\);

-- Location: FF_X39_Y24_N27
\inst_PantallaLcd|contador[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_PantallaLcd|Add0~26_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \inst_PantallaLcd|lcd_data_int[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_PantallaLcd|contador\(13));

-- Location: LCCOMB_X39_Y24_N28
\inst_PantallaLcd|Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_PantallaLcd|Add0~28_combout\ = (\inst_PantallaLcd|contador\(14) & (\inst_PantallaLcd|Add0~27\ $ (GND))) # (!\inst_PantallaLcd|contador\(14) & (!\inst_PantallaLcd|Add0~27\ & VCC))
-- \inst_PantallaLcd|Add0~29\ = CARRY((\inst_PantallaLcd|contador\(14) & !\inst_PantallaLcd|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_PantallaLcd|contador\(14),
	datad => VCC,
	cin => \inst_PantallaLcd|Add0~27\,
	combout => \inst_PantallaLcd|Add0~28_combout\,
	cout => \inst_PantallaLcd|Add0~29\);

-- Location: LCCOMB_X40_Y24_N16
\inst_PantallaLcd|Mux10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_PantallaLcd|Mux10~0_combout\ = (\inst_PantallaLcd|Equal0~4_combout\ & \inst_PantallaLcd|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_PantallaLcd|Equal0~4_combout\,
	datad => \inst_PantallaLcd|Add0~28_combout\,
	combout => \inst_PantallaLcd|Mux10~0_combout\);

-- Location: FF_X40_Y24_N17
\inst_PantallaLcd|contador[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_PantallaLcd|Mux10~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \inst_PantallaLcd|lcd_data_int[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_PantallaLcd|contador\(14));

-- Location: LCCOMB_X39_Y24_N30
\inst_PantallaLcd|Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_PantallaLcd|Add0~30_combout\ = \inst_PantallaLcd|Add0~29\ $ (\inst_PantallaLcd|contador\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst_PantallaLcd|contador\(15),
	cin => \inst_PantallaLcd|Add0~29\,
	combout => \inst_PantallaLcd|Add0~30_combout\);

-- Location: LCCOMB_X40_Y24_N6
\inst_PantallaLcd|Mux9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_PantallaLcd|Mux9~0_combout\ = (\inst_PantallaLcd|Equal0~4_combout\ & \inst_PantallaLcd|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_PantallaLcd|Equal0~4_combout\,
	datad => \inst_PantallaLcd|Add0~30_combout\,
	combout => \inst_PantallaLcd|Mux9~0_combout\);

-- Location: FF_X40_Y24_N7
\inst_PantallaLcd|contador[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_PantallaLcd|Mux9~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \inst_PantallaLcd|lcd_data_int[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_PantallaLcd|contador\(15));

-- Location: LCCOMB_X40_Y24_N2
\inst_PantallaLcd|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_PantallaLcd|Equal0~0_combout\ = ((\inst_PantallaLcd|contador\(0)) # ((\inst_PantallaLcd|contador\(13)) # (!\inst_PantallaLcd|contador\(14)))) # (!\inst_PantallaLcd|contador\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_PantallaLcd|contador\(15),
	datab => \inst_PantallaLcd|contador\(0),
	datac => \inst_PantallaLcd|contador\(13),
	datad => \inst_PantallaLcd|contador\(14),
	combout => \inst_PantallaLcd|Equal0~0_combout\);

-- Location: LCCOMB_X40_Y24_N22
\inst_PantallaLcd|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_PantallaLcd|Equal0~4_combout\ = (\inst_PantallaLcd|Equal0~3_combout\) # ((\inst_PantallaLcd|Equal0~2_combout\) # ((\inst_PantallaLcd|Equal0~1_combout\) # (\inst_PantallaLcd|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_PantallaLcd|Equal0~3_combout\,
	datab => \inst_PantallaLcd|Equal0~2_combout\,
	datac => \inst_PantallaLcd|Equal0~1_combout\,
	datad => \inst_PantallaLcd|Equal0~0_combout\,
	combout => \inst_PantallaLcd|Equal0~4_combout\);

-- Location: LCCOMB_X40_Y24_N18
\inst_PantallaLcd|estado[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_PantallaLcd|estado[0]~0_combout\ = \inst_PantallaLcd|estado\(0) $ (((!\inst_PantallaLcd|Equal0~4_combout\ & !\inst_PantallaLcd|estado\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_PantallaLcd|Equal0~4_combout\,
	datac => \inst_PantallaLcd|estado\(0),
	datad => \inst_PantallaLcd|estado\(1),
	combout => \inst_PantallaLcd|estado[0]~0_combout\);

-- Location: FF_X40_Y24_N19
\inst_PantallaLcd|estado[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_PantallaLcd|estado[0]~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_PantallaLcd|estado\(0));

-- Location: IOIBUF_X41_Y25_N15
\estado_sistema[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_estado_sistema(2),
	o => \estado_sistema[2]~input_o\);

-- Location: LCCOMB_X39_Y22_N12
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = contador_refresco(0) $ (VCC)
-- \Add0~1\ = CARRY(contador_refresco(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador_refresco(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: FF_X39_Y22_N13
\contador_refresco[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_refresco(0));

-- Location: LCCOMB_X39_Y22_N14
\Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (contador_refresco(1) & (!\Add0~1\)) # (!contador_refresco(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!contador_refresco(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_refresco(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: FF_X39_Y22_N15
\contador_refresco[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~2_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_refresco(1));

-- Location: LCCOMB_X39_Y22_N16
\Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (contador_refresco(2) & (\Add0~3\ $ (GND))) # (!contador_refresco(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((contador_refresco(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_refresco(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X38_Y22_N8
\contador_refresco~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_refresco~0_combout\ = (\Add0~4_combout\ & !\Equal3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~4_combout\,
	datad => \Equal3~0_combout\,
	combout => \contador_refresco~0_combout\);

-- Location: FF_X38_Y22_N9
\contador_refresco[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_refresco~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_refresco(2));

-- Location: LCCOMB_X39_Y22_N18
\Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (contador_refresco(3) & (!\Add0~5\)) # (!contador_refresco(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!contador_refresco(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_refresco(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: FF_X39_Y22_N19
\contador_refresco[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~6_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_refresco(3));

-- Location: LCCOMB_X39_Y22_N2
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!contador_refresco(2) & !contador_refresco(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => contador_refresco(2),
	datad => contador_refresco(3),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X39_Y22_N20
\Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (contador_refresco(4) & (\Add0~7\ $ (GND))) # (!contador_refresco(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((contador_refresco(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador_refresco(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: FF_X39_Y22_N21
\contador_refresco[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~8_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_refresco(4));

-- Location: LCCOMB_X39_Y22_N22
\Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (contador_refresco(5) & (!\Add0~9\)) # (!contador_refresco(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!contador_refresco(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_refresco(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: FF_X39_Y22_N23
\contador_refresco[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~10_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_refresco(5));

-- Location: LCCOMB_X39_Y22_N24
\Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (contador_refresco(6) & (\Add0~11\ $ (GND))) # (!contador_refresco(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((contador_refresco(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador_refresco(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: FF_X39_Y22_N25
\contador_refresco[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~12_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_refresco(6));

-- Location: LCCOMB_X39_Y22_N26
\Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (contador_refresco(7) & (!\Add0~13\)) # (!contador_refresco(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!contador_refresco(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_refresco(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: FF_X39_Y22_N27
\contador_refresco[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~14_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_refresco(7));

-- Location: LCCOMB_X39_Y22_N28
\Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (contador_refresco(8) & (\Add0~15\ $ (GND))) # (!contador_refresco(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((contador_refresco(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_refresco(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: FF_X39_Y22_N29
\contador_refresco[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~16_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_refresco(8));

-- Location: LCCOMB_X39_Y22_N30
\Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (contador_refresco(9) & (!\Add0~17\)) # (!contador_refresco(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!contador_refresco(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador_refresco(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: FF_X39_Y22_N31
\contador_refresco[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~18_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_refresco(9));

-- Location: LCCOMB_X39_Y21_N0
\Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (contador_refresco(10) & (\Add0~19\ $ (GND))) # (!contador_refresco(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((contador_refresco(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_refresco(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: FF_X39_Y21_N1
\contador_refresco[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~20_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_refresco(10));

-- Location: LCCOMB_X39_Y21_N2
\Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (contador_refresco(11) & (!\Add0~21\)) # (!contador_refresco(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!contador_refresco(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_refresco(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: FF_X39_Y21_N3
\contador_refresco[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~22_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_refresco(11));

-- Location: LCCOMB_X39_Y21_N4
\Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (contador_refresco(12) & (\Add0~23\ $ (GND))) # (!contador_refresco(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((contador_refresco(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_refresco(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: FF_X39_Y21_N5
\contador_refresco[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~24_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_refresco(12));

-- Location: LCCOMB_X39_Y21_N6
\Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (contador_refresco(13) & (!\Add0~25\)) # (!contador_refresco(13) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!contador_refresco(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador_refresco(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: FF_X39_Y21_N7
\contador_refresco[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~26_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_refresco(13));

-- Location: LCCOMB_X39_Y21_N8
\Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (contador_refresco(14) & (\Add0~27\ $ (GND))) # (!contador_refresco(14) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((contador_refresco(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_refresco(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: FF_X39_Y21_N9
\contador_refresco[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~28_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_refresco(14));

-- Location: LCCOMB_X39_Y21_N10
\Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (contador_refresco(15) & (!\Add0~29\)) # (!contador_refresco(15) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!contador_refresco(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador_refresco(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: FF_X39_Y21_N11
\contador_refresco[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~30_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_refresco(15));

-- Location: LCCOMB_X39_Y21_N30
\Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!contador_refresco(15) & (!contador_refresco(12) & (!contador_refresco(14) & !contador_refresco(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador_refresco(15),
	datab => contador_refresco(12),
	datac => contador_refresco(14),
	datad => contador_refresco(13),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X39_Y21_N12
\Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (contador_refresco(16) & (\Add0~31\ $ (GND))) # (!contador_refresco(16) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((contador_refresco(16) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador_refresco(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: FF_X39_Y21_N13
\contador_refresco[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~32_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_refresco(16));

-- Location: LCCOMB_X39_Y21_N14
\Add0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (contador_refresco(17) & (!\Add0~33\)) # (!contador_refresco(17) & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!contador_refresco(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_refresco(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: FF_X39_Y21_N15
\contador_refresco[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~34_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_refresco(17));

-- Location: LCCOMB_X39_Y21_N16
\Add0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (contador_refresco(18) & (\Add0~35\ $ (GND))) # (!contador_refresco(18) & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((contador_refresco(18) & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_refresco(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: FF_X39_Y21_N17
\contador_refresco[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~36_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_refresco(18));

-- Location: LCCOMB_X39_Y21_N18
\Add0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = \Add0~37\ $ (contador_refresco(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => contador_refresco(19),
	cin => \Add0~37\,
	combout => \Add0~38_combout\);

-- Location: FF_X39_Y21_N19
\contador_refresco[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~38_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_refresco(19));

-- Location: LCCOMB_X39_Y21_N24
\Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!contador_refresco(16) & (!contador_refresco(19) & (!contador_refresco(17) & !contador_refresco(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador_refresco(16),
	datab => contador_refresco(19),
	datac => contador_refresco(17),
	datad => contador_refresco(18),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X39_Y21_N28
\Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!contador_refresco(9) & (!contador_refresco(10) & (!contador_refresco(11) & !contador_refresco(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador_refresco(9),
	datab => contador_refresco(10),
	datac => contador_refresco(11),
	datad => contador_refresco(8),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X39_Y22_N0
\Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (!contador_refresco(5) & (!contador_refresco(4) & (!contador_refresco(7) & !contador_refresco(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador_refresco(5),
	datab => contador_refresco(4),
	datac => contador_refresco(7),
	datad => contador_refresco(6),
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X39_Y21_N22
\Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (\Equal0~2_combout\ & (\Equal0~1_combout\ & (\Equal0~3_combout\ & \Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~3_combout\,
	datad => \Equal0~4_combout\,
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X40_Y22_N18
\Equal3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (contador_refresco(0) & (contador_refresco(1) & (\Equal0~0_combout\ & \Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador_refresco(0),
	datab => contador_refresco(1),
	datac => \Equal0~0_combout\,
	datad => \Equal0~5_combout\,
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X40_Y22_N8
\estado_siguiente~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \estado_siguiente~2_combout\ = (\Equal3~0_combout\ & ((\estado_sistema[2]~input_o\))) # (!\Equal3~0_combout\ & (estado_actual(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => estado_actual(2),
	datac => \estado_sistema[2]~input_o\,
	datad => \Equal3~0_combout\,
	combout => \estado_siguiente~2_combout\);

-- Location: FF_X40_Y22_N9
\estado_siguiente[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estado_siguiente~2_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => estado_siguiente(2));

-- Location: LCCOMB_X38_Y22_N10
\estado_actual[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \estado_actual[2]~feeder_combout\ = estado_siguiente(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => estado_siguiente(2),
	combout => \estado_actual[2]~feeder_combout\);

-- Location: FF_X38_Y22_N11
\estado_actual[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estado_actual[2]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => estado_actual(2));

-- Location: IOIBUF_X41_Y26_N15
\estado_sistema[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_estado_sistema(0),
	o => \estado_sistema[0]~input_o\);

-- Location: LCCOMB_X40_Y22_N10
\estado_siguiente~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \estado_siguiente~1_combout\ = (\Equal3~0_combout\ & ((\estado_sistema[0]~input_o\))) # (!\Equal3~0_combout\ & (estado_actual(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => estado_actual(0),
	datab => \estado_sistema[0]~input_o\,
	datad => \Equal3~0_combout\,
	combout => \estado_siguiente~1_combout\);

-- Location: FF_X40_Y22_N11
\estado_siguiente[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estado_siguiente~1_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => estado_siguiente(0));

-- Location: FF_X39_Y22_N3
\estado_actual[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => estado_siguiente(0),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => estado_actual(0));

-- Location: IOIBUF_X41_Y23_N1
\estado_sistema[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_estado_sistema(1),
	o => \estado_sistema[1]~input_o\);

-- Location: LCCOMB_X40_Y22_N12
\estado_siguiente~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \estado_siguiente~0_combout\ = (\Equal3~0_combout\ & (\estado_sistema[1]~input_o\)) # (!\Equal3~0_combout\ & ((estado_actual(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_sistema[1]~input_o\,
	datac => estado_actual(1),
	datad => \Equal3~0_combout\,
	combout => \estado_siguiente~0_combout\);

-- Location: FF_X40_Y22_N13
\estado_siguiente[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estado_siguiente~0_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => estado_siguiente(1));

-- Location: FF_X39_Y22_N17
\estado_actual[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => estado_siguiente(1),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => estado_actual(1));

-- Location: IOIBUF_X41_Y18_N22
\total_vehiculos[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_total_vehiculos(0),
	o => \total_vehiculos[0]~input_o\);

-- Location: LCCOMB_X39_Y21_N20
\dato_lcd[1]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dato_lcd[1]~4_combout\ = (!contador_refresco(2) & (!contador_refresco(3) & (\Equal0~5_combout\ & !contador_refresco(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador_refresco(2),
	datab => contador_refresco(3),
	datac => \Equal0~5_combout\,
	datad => contador_refresco(1),
	combout => \dato_lcd[1]~4_combout\);

-- Location: IOIBUF_X21_Y0_N8
\total_vehiculos[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_total_vehiculos(8),
	o => \total_vehiculos[8]~input_o\);

-- Location: IOIBUF_X21_Y0_N1
\tiempo_ultimo[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tiempo_ultimo(0),
	o => \tiempo_ultimo[0]~input_o\);

-- Location: IOIBUF_X41_Y18_N8
\tiempo_ultimo[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tiempo_ultimo(8),
	o => \tiempo_ultimo[8]~input_o\);

-- Location: LCCOMB_X39_Y21_N26
\dato_lcd[1]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dato_lcd[1]~5_combout\ = (!contador_refresco(2) & (!contador_refresco(0) & (\Equal0~5_combout\ & !contador_refresco(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador_refresco(2),
	datab => contador_refresco(0),
	datac => \Equal0~5_combout\,
	datad => contador_refresco(3),
	combout => \dato_lcd[1]~5_combout\);

-- Location: LCCOMB_X40_Y21_N18
\Mux7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\dato_lcd[1]~5_combout\ & ((\tiempo_ultimo[0]~input_o\) # ((\dato_lcd[1]~4_combout\)))) # (!\dato_lcd[1]~5_combout\ & (((\tiempo_ultimo[8]~input_o\ & !\dato_lcd[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tiempo_ultimo[0]~input_o\,
	datab => \tiempo_ultimo[8]~input_o\,
	datac => \dato_lcd[1]~5_combout\,
	datad => \dato_lcd[1]~4_combout\,
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X40_Y21_N20
\Mux7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (\dato_lcd[1]~4_combout\ & ((\Mux7~0_combout\ & (\total_vehiculos[0]~input_o\)) # (!\Mux7~0_combout\ & ((\total_vehiculos[8]~input_o\))))) # (!\dato_lcd[1]~4_combout\ & (((\Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \total_vehiculos[0]~input_o\,
	datab => \dato_lcd[1]~4_combout\,
	datac => \total_vehiculos[8]~input_o\,
	datad => \Mux7~0_combout\,
	combout => \Mux7~1_combout\);

-- Location: LCCOMB_X40_Y21_N16
\Mux7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = (!estado_actual(2) & ((estado_actual(0)) # ((estado_actual(1)) # (\Mux7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => estado_actual(2),
	datab => estado_actual(0),
	datac => estado_actual(1),
	datad => \Mux7~1_combout\,
	combout => \Mux7~2_combout\);

-- Location: FF_X40_Y21_N17
\dato_lcd[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux7~2_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dato_lcd(0));

-- Location: LCCOMB_X40_Y22_N24
\inst_PantallaLcd|Mux7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_PantallaLcd|Mux7~0_combout\ = (\inst_PantallaLcd|estado\(1) & ((dato_lcd(0)))) # (!\inst_PantallaLcd|estado\(1) & (\inst_PantallaLcd|estado\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_PantallaLcd|estado\(0),
	datac => dato_lcd(0),
	datad => \inst_PantallaLcd|estado\(1),
	combout => \inst_PantallaLcd|Mux7~0_combout\);

-- Location: FF_X40_Y22_N25
\inst_PantallaLcd|lcd_data_int[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_PantallaLcd|Mux7~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \inst_PantallaLcd|lcd_data_int[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_PantallaLcd|lcd_data_int\(0));

-- Location: IOIBUF_X41_Y21_N22
\total_vehiculos[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_total_vehiculos(1),
	o => \total_vehiculos[1]~input_o\);

-- Location: IOIBUF_X41_Y21_N15
\tiempo_ultimo[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tiempo_ultimo(1),
	o => \tiempo_ultimo[1]~input_o\);

-- Location: IOIBUF_X41_Y20_N15
\tiempo_ultimo[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tiempo_ultimo(9),
	o => \tiempo_ultimo[9]~input_o\);

-- Location: IOIBUF_X41_Y24_N1
\total_vehiculos[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_total_vehiculos(9),
	o => \total_vehiculos[9]~input_o\);

-- Location: LCCOMB_X40_Y21_N6
\Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\dato_lcd[1]~5_combout\ & (((\dato_lcd[1]~4_combout\)))) # (!\dato_lcd[1]~5_combout\ & ((\dato_lcd[1]~4_combout\ & ((\total_vehiculos[9]~input_o\))) # (!\dato_lcd[1]~4_combout\ & (\tiempo_ultimo[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tiempo_ultimo[9]~input_o\,
	datab => \total_vehiculos[9]~input_o\,
	datac => \dato_lcd[1]~5_combout\,
	datad => \dato_lcd[1]~4_combout\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X40_Y21_N28
\Mux6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\dato_lcd[1]~5_combout\ & ((\Mux6~0_combout\ & (\total_vehiculos[1]~input_o\)) # (!\Mux6~0_combout\ & ((\tiempo_ultimo[1]~input_o\))))) # (!\dato_lcd[1]~5_combout\ & (((\Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \total_vehiculos[1]~input_o\,
	datab => \tiempo_ultimo[1]~input_o\,
	datac => \dato_lcd[1]~5_combout\,
	datad => \Mux6~0_combout\,
	combout => \Mux6~1_combout\);

-- Location: LCCOMB_X40_Y21_N26
\Mux6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = (!estado_actual(2) & ((estado_actual(0) & (!estado_actual(1))) # (!estado_actual(0) & ((estado_actual(1)) # (\Mux6~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => estado_actual(2),
	datab => estado_actual(0),
	datac => estado_actual(1),
	datad => \Mux6~1_combout\,
	combout => \Mux6~2_combout\);

-- Location: FF_X40_Y21_N27
\dato_lcd[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux6~2_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dato_lcd(1));

-- Location: LCCOMB_X40_Y22_N30
\inst_PantallaLcd|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_PantallaLcd|Mux6~0_combout\ = (\inst_PantallaLcd|estado\(1) & ((dato_lcd(1)))) # (!\inst_PantallaLcd|estado\(1) & (\inst_PantallaLcd|estado\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_PantallaLcd|estado\(0),
	datac => dato_lcd(1),
	datad => \inst_PantallaLcd|estado\(1),
	combout => \inst_PantallaLcd|Mux6~0_combout\);

-- Location: FF_X40_Y22_N31
\inst_PantallaLcd|lcd_data_int[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_PantallaLcd|Mux6~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \inst_PantallaLcd|lcd_data_int[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_PantallaLcd|lcd_data_int\(1));

-- Location: IOIBUF_X41_Y24_N8
\total_vehiculos[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_total_vehiculos(10),
	o => \total_vehiculos[10]~input_o\);

-- Location: IOIBUF_X41_Y24_N15
\total_vehiculos[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_total_vehiculos(2),
	o => \total_vehiculos[2]~input_o\);

-- Location: IOIBUF_X41_Y18_N15
\tiempo_ultimo[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tiempo_ultimo(10),
	o => \tiempo_ultimo[10]~input_o\);

-- Location: IOIBUF_X41_Y21_N1
\tiempo_ultimo[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tiempo_ultimo(2),
	o => \tiempo_ultimo[2]~input_o\);

-- Location: LCCOMB_X40_Y21_N10
\Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\dato_lcd[1]~5_combout\ & (((\tiempo_ultimo[2]~input_o\) # (\dato_lcd[1]~4_combout\)))) # (!\dato_lcd[1]~5_combout\ & (\tiempo_ultimo[10]~input_o\ & ((!\dato_lcd[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tiempo_ultimo[10]~input_o\,
	datab => \tiempo_ultimo[2]~input_o\,
	datac => \dato_lcd[1]~5_combout\,
	datad => \dato_lcd[1]~4_combout\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X40_Y21_N0
\Mux5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\dato_lcd[1]~4_combout\ & ((\Mux5~0_combout\ & ((\total_vehiculos[2]~input_o\))) # (!\Mux5~0_combout\ & (\total_vehiculos[10]~input_o\)))) # (!\dato_lcd[1]~4_combout\ & (((\Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \total_vehiculos[10]~input_o\,
	datab => \dato_lcd[1]~4_combout\,
	datac => \total_vehiculos[2]~input_o\,
	datad => \Mux5~0_combout\,
	combout => \Mux5~1_combout\);

-- Location: LCCOMB_X40_Y21_N8
\Mux5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = (!estado_actual(2) & ((estado_actual(0) & (estado_actual(1))) # (!estado_actual(0) & (!estado_actual(1) & \Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => estado_actual(2),
	datab => estado_actual(0),
	datac => estado_actual(1),
	datad => \Mux5~1_combout\,
	combout => \Mux5~2_combout\);

-- Location: FF_X40_Y21_N9
\dato_lcd[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux5~2_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dato_lcd(2));

-- Location: LCCOMB_X40_Y22_N16
\inst_PantallaLcd|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_PantallaLcd|Mux5~0_combout\ = (\inst_PantallaLcd|estado\(1) & ((dato_lcd(2)))) # (!\inst_PantallaLcd|estado\(1) & (\inst_PantallaLcd|estado\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_PantallaLcd|estado\(0),
	datac => dato_lcd(2),
	datad => \inst_PantallaLcd|estado\(1),
	combout => \inst_PantallaLcd|Mux5~0_combout\);

-- Location: FF_X40_Y22_N17
\inst_PantallaLcd|lcd_data_int[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_PantallaLcd|Mux5~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \inst_PantallaLcd|lcd_data_int[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_PantallaLcd|lcd_data_int\(2));

-- Location: IOIBUF_X41_Y18_N1
\total_vehiculos[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_total_vehiculos(3),
	o => \total_vehiculos[3]~input_o\);

-- Location: IOIBUF_X41_Y20_N22
\tiempo_ultimo[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tiempo_ultimo(3),
	o => \tiempo_ultimo[3]~input_o\);

-- Location: IOIBUF_X41_Y21_N8
\total_vehiculos[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_total_vehiculos(11),
	o => \total_vehiculos[11]~input_o\);

-- Location: IOIBUF_X41_Y20_N1
\tiempo_ultimo[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tiempo_ultimo(11),
	o => \tiempo_ultimo[11]~input_o\);

-- Location: LCCOMB_X40_Y21_N2
\Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\dato_lcd[1]~5_combout\ & (((\dato_lcd[1]~4_combout\)))) # (!\dato_lcd[1]~5_combout\ & ((\dato_lcd[1]~4_combout\ & (\total_vehiculos[11]~input_o\)) # (!\dato_lcd[1]~4_combout\ & ((\tiempo_ultimo[11]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \total_vehiculos[11]~input_o\,
	datab => \tiempo_ultimo[11]~input_o\,
	datac => \dato_lcd[1]~5_combout\,
	datad => \dato_lcd[1]~4_combout\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X40_Y21_N12
\Mux4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\dato_lcd[1]~5_combout\ & ((\Mux4~0_combout\ & (\total_vehiculos[3]~input_o\)) # (!\Mux4~0_combout\ & ((\tiempo_ultimo[3]~input_o\))))) # (!\dato_lcd[1]~5_combout\ & (((\Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \total_vehiculos[3]~input_o\,
	datab => \tiempo_ultimo[3]~input_o\,
	datac => \dato_lcd[1]~5_combout\,
	datad => \Mux4~0_combout\,
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X40_Y21_N22
\Mux4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (!estado_actual(2) & (!estado_actual(0) & (!estado_actual(1) & \Mux4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => estado_actual(2),
	datab => estado_actual(0),
	datac => estado_actual(1),
	datad => \Mux4~1_combout\,
	combout => \Mux4~2_combout\);

-- Location: FF_X40_Y21_N23
\dato_lcd[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux4~2_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dato_lcd(3));

-- Location: LCCOMB_X40_Y22_N6
\inst_PantallaLcd|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_PantallaLcd|Mux4~0_combout\ = (dato_lcd(3)) # (!\inst_PantallaLcd|estado\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => dato_lcd(3),
	datad => \inst_PantallaLcd|estado\(1),
	combout => \inst_PantallaLcd|Mux4~0_combout\);

-- Location: FF_X40_Y22_N7
\inst_PantallaLcd|lcd_data_int[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_PantallaLcd|Mux4~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \inst_PantallaLcd|lcd_data_int[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_PantallaLcd|lcd_data_int\(3));

-- Location: IOIBUF_X41_Y19_N8
\total_vehiculos[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_total_vehiculos(12),
	o => \total_vehiculos[12]~input_o\);

-- Location: IOIBUF_X41_Y19_N22
\total_vehiculos[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_total_vehiculos(4),
	o => \total_vehiculos[4]~input_o\);

-- Location: IOIBUF_X41_Y25_N1
\tiempo_ultimo[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tiempo_ultimo(12),
	o => \tiempo_ultimo[12]~input_o\);

-- Location: IOIBUF_X41_Y20_N8
\tiempo_ultimo[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tiempo_ultimo(4),
	o => \tiempo_ultimo[4]~input_o\);

-- Location: LCCOMB_X40_Y21_N30
\Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\dato_lcd[1]~5_combout\ & (((\tiempo_ultimo[4]~input_o\) # (\dato_lcd[1]~4_combout\)))) # (!\dato_lcd[1]~5_combout\ & (\tiempo_ultimo[12]~input_o\ & ((!\dato_lcd[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tiempo_ultimo[12]~input_o\,
	datab => \tiempo_ultimo[4]~input_o\,
	datac => \dato_lcd[1]~5_combout\,
	datad => \dato_lcd[1]~4_combout\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X40_Y21_N24
\Mux3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\Mux3~0_combout\ & (((\total_vehiculos[4]~input_o\) # (!\dato_lcd[1]~4_combout\)))) # (!\Mux3~0_combout\ & (\total_vehiculos[12]~input_o\ & ((\dato_lcd[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \total_vehiculos[12]~input_o\,
	datab => \total_vehiculos[4]~input_o\,
	datac => \Mux3~0_combout\,
	datad => \dato_lcd[1]~4_combout\,
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X40_Y21_N4
\Mux3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (!estado_actual(2) & (!estado_actual(0) & ((estado_actual(1)) # (\Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => estado_actual(2),
	datab => estado_actual(0),
	datac => estado_actual(1),
	datad => \Mux3~1_combout\,
	combout => \Mux3~2_combout\);

-- Location: FF_X40_Y21_N5
\dato_lcd[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux3~2_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dato_lcd(4));

-- Location: LCCOMB_X40_Y22_N4
\inst_PantallaLcd|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_PantallaLcd|Mux3~0_combout\ = (\inst_PantallaLcd|estado\(1) & (dato_lcd(4))) # (!\inst_PantallaLcd|estado\(1) & ((!\inst_PantallaLcd|estado\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dato_lcd(4),
	datac => \inst_PantallaLcd|estado\(0),
	datad => \inst_PantallaLcd|estado\(1),
	combout => \inst_PantallaLcd|Mux3~0_combout\);

-- Location: FF_X40_Y22_N5
\inst_PantallaLcd|lcd_data_int[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_PantallaLcd|Mux3~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \inst_PantallaLcd|lcd_data_int[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_PantallaLcd|lcd_data_int\(4));

-- Location: IOIBUF_X37_Y29_N1
\total_vehiculos[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_total_vehiculos(5),
	o => \total_vehiculos[5]~input_o\);

-- Location: IOIBUF_X37_Y29_N8
\tiempo_ultimo[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tiempo_ultimo(5),
	o => \tiempo_ultimo[5]~input_o\);

-- Location: IOIBUF_X41_Y25_N22
\total_vehiculos[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_total_vehiculos(13),
	o => \total_vehiculos[13]~input_o\);

-- Location: IOIBUF_X41_Y24_N22
\tiempo_ultimo[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tiempo_ultimo(13),
	o => \tiempo_ultimo[13]~input_o\);

-- Location: LCCOMB_X38_Y21_N2
\Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\dato_lcd[1]~4_combout\ & ((\total_vehiculos[13]~input_o\) # ((\dato_lcd[1]~5_combout\)))) # (!\dato_lcd[1]~4_combout\ & (((\tiempo_ultimo[13]~input_o\ & !\dato_lcd[1]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \total_vehiculos[13]~input_o\,
	datab => \tiempo_ultimo[13]~input_o\,
	datac => \dato_lcd[1]~4_combout\,
	datad => \dato_lcd[1]~5_combout\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X38_Y21_N12
\Mux2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\dato_lcd[1]~5_combout\ & ((\Mux2~0_combout\ & (\total_vehiculos[5]~input_o\)) # (!\Mux2~0_combout\ & ((\tiempo_ultimo[5]~input_o\))))) # (!\dato_lcd[1]~5_combout\ & (((\Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \total_vehiculos[5]~input_o\,
	datab => \dato_lcd[1]~5_combout\,
	datac => \tiempo_ultimo[5]~input_o\,
	datad => \Mux2~0_combout\,
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X38_Y21_N0
\Mux2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (!estado_actual(2) & (!estado_actual(1) & (!estado_actual(0) & \Mux2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => estado_actual(2),
	datab => estado_actual(1),
	datac => estado_actual(0),
	datad => \Mux2~1_combout\,
	combout => \Mux2~2_combout\);

-- Location: FF_X38_Y21_N1
\dato_lcd[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux2~2_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dato_lcd(5));

-- Location: LCCOMB_X40_Y22_N2
\inst_PantallaLcd|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_PantallaLcd|Mux2~0_combout\ = (\inst_PantallaLcd|estado\(1) & ((dato_lcd(5)))) # (!\inst_PantallaLcd|estado\(1) & (!\inst_PantallaLcd|estado\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_PantallaLcd|estado\(0),
	datac => dato_lcd(5),
	datad => \inst_PantallaLcd|estado\(1),
	combout => \inst_PantallaLcd|Mux2~0_combout\);

-- Location: FF_X40_Y22_N3
\inst_PantallaLcd|lcd_data_int[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_PantallaLcd|Mux2~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \inst_PantallaLcd|lcd_data_int[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_PantallaLcd|lcd_data_int\(5));

-- Location: IOIBUF_X39_Y29_N1
\tiempo_ultimo[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tiempo_ultimo(6),
	o => \tiempo_ultimo[6]~input_o\);

-- Location: IOIBUF_X41_Y26_N8
\total_vehiculos[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_total_vehiculos(6),
	o => \total_vehiculos[6]~input_o\);

-- Location: LCCOMB_X39_Y22_N8
\Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (!contador_refresco(0) & (\Equal0~0_combout\ & (contador_refresco(1) & \Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador_refresco(0),
	datab => \Equal0~0_combout\,
	datac => contador_refresco(1),
	datad => \Equal0~5_combout\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X39_Y22_N6
\Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!contador_refresco(0) & (\Equal0~0_combout\ & (!contador_refresco(1) & \Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador_refresco(0),
	datab => \Equal0~0_combout\,
	datac => contador_refresco(1),
	datad => \Equal0~5_combout\,
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X39_Y22_N10
\Mux1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\tiempo_ultimo[6]~input_o\ & ((\Mux1~0_combout\) # ((\total_vehiculos[6]~input_o\ & \Equal0~6_combout\)))) # (!\tiempo_ultimo[6]~input_o\ & (\total_vehiculos[6]~input_o\ & ((\Equal0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tiempo_ultimo[6]~input_o\,
	datab => \total_vehiculos[6]~input_o\,
	datac => \Mux1~0_combout\,
	datad => \Equal0~6_combout\,
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X39_Y22_N4
\Mux1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (!estado_actual(2) & ((estado_actual(1)) # ((estado_actual(0)) # (\Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => estado_actual(2),
	datab => estado_actual(1),
	datac => estado_actual(0),
	datad => \Mux1~1_combout\,
	combout => \Mux1~2_combout\);

-- Location: FF_X39_Y22_N5
\dato_lcd[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux1~2_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dato_lcd(6));

-- Location: LCCOMB_X40_Y22_N0
\inst_PantallaLcd|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_PantallaLcd|Mux1~0_combout\ = (dato_lcd(6) & \inst_PantallaLcd|estado\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => dato_lcd(6),
	datad => \inst_PantallaLcd|estado\(1),
	combout => \inst_PantallaLcd|Mux1~0_combout\);

-- Location: FF_X40_Y22_N1
\inst_PantallaLcd|lcd_data_int[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_PantallaLcd|Mux1~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \inst_PantallaLcd|lcd_data_int[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_PantallaLcd|lcd_data_int\(6));

-- Location: IOIBUF_X41_Y19_N1
\tiempo_ultimo[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tiempo_ultimo(7),
	o => \tiempo_ultimo[7]~input_o\);

-- Location: IOIBUF_X41_Y23_N15
\total_vehiculos[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_total_vehiculos(7),
	o => \total_vehiculos[7]~input_o\);

-- Location: LCCOMB_X40_Y22_N28
\Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\tiempo_ultimo[7]~input_o\ & ((\Mux1~0_combout\) # ((\total_vehiculos[7]~input_o\ & \Equal0~6_combout\)))) # (!\tiempo_ultimo[7]~input_o\ & (\total_vehiculos[7]~input_o\ & (\Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tiempo_ultimo[7]~input_o\,
	datab => \total_vehiculos[7]~input_o\,
	datac => \Equal0~6_combout\,
	datad => \Mux1~0_combout\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X40_Y22_N26
\Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (!estado_actual(0) & (!estado_actual(2) & (!estado_actual(1) & \Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => estado_actual(0),
	datab => estado_actual(2),
	datac => estado_actual(1),
	datad => \Mux0~0_combout\,
	combout => \Mux0~1_combout\);

-- Location: FF_X40_Y22_N27
\dato_lcd[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux0~1_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dato_lcd(7));

-- Location: LCCOMB_X40_Y22_N14
\inst_PantallaLcd|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_PantallaLcd|Mux0~0_combout\ = (dato_lcd(7) & \inst_PantallaLcd|estado\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => dato_lcd(7),
	datad => \inst_PantallaLcd|estado\(1),
	combout => \inst_PantallaLcd|Mux0~0_combout\);

-- Location: FF_X40_Y22_N15
\inst_PantallaLcd|lcd_data_int[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_PantallaLcd|Mux0~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \inst_PantallaLcd|lcd_data_int[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_PantallaLcd|lcd_data_int\(7));

-- Location: LCCOMB_X40_Y24_N20
\inst_PantallaLcd|lcd_rs_int~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_PantallaLcd|lcd_rs_int~0_combout\ = (\inst_PantallaLcd|lcd_rs_int~q\) # ((!\inst_PantallaLcd|estado\(0) & \inst_PantallaLcd|estado\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_PantallaLcd|estado\(0),
	datac => \inst_PantallaLcd|lcd_rs_int~q\,
	datad => \inst_PantallaLcd|estado\(1),
	combout => \inst_PantallaLcd|lcd_rs_int~0_combout\);

-- Location: FF_X40_Y24_N21
\inst_PantallaLcd|lcd_rs_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_PantallaLcd|lcd_rs_int~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_PantallaLcd|lcd_rs_int~q\);

-- Location: LCCOMB_X40_Y22_N20
\inst_PantallaLcd|lcd_en_int~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_PantallaLcd|lcd_en_int~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst_PantallaLcd|lcd_en_int~feeder_combout\);

-- Location: FF_X40_Y22_N21
\inst_PantallaLcd|lcd_en_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_PantallaLcd|lcd_en_int~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \inst_PantallaLcd|lcd_data_int[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_PantallaLcd|lcd_en_int~q\);

ww_lcd_data(0) <= \lcd_data[0]~output_o\;

ww_lcd_data(1) <= \lcd_data[1]~output_o\;

ww_lcd_data(2) <= \lcd_data[2]~output_o\;

ww_lcd_data(3) <= \lcd_data[3]~output_o\;

ww_lcd_data(4) <= \lcd_data[4]~output_o\;

ww_lcd_data(5) <= \lcd_data[5]~output_o\;

ww_lcd_data(6) <= \lcd_data[6]~output_o\;

ww_lcd_data(7) <= \lcd_data[7]~output_o\;

ww_lcd_rs <= \lcd_rs~output_o\;

ww_lcd_rw <= \lcd_rw~output_o\;

ww_lcd_en <= \lcd_en~output_o\;
END structure;


