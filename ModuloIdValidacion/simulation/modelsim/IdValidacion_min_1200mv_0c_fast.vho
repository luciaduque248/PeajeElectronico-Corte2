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

-- DATE "05/13/2024 00:48:53"

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

ENTITY 	IdValidacion IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	identificacion_tag : IN std_logic_vector(31 DOWNTO 0);
	identificacion_valida : OUT std_logic;
	categoria_vehiculo : OUT std_logic_vector(3 DOWNTO 0)
	);
END IdValidacion;

-- Design Ports Information
-- identificacion_valida	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- categoria_vehiculo[0]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- categoria_vehiculo[1]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- categoria_vehiculo[2]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- categoria_vehiculo[3]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- identificacion_tag[28]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- identificacion_tag[29]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- identificacion_tag[30]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- identificacion_tag[31]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- identificacion_tag[3]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- identificacion_tag[7]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- identificacion_tag[11]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- identificacion_tag[15]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- identificacion_tag[18]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- identificacion_tag[19]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- identificacion_tag[16]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- identificacion_tag[17]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- identificacion_tag[20]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- identificacion_tag[21]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- identificacion_tag[22]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- identificacion_tag[23]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- identificacion_tag[24]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- identificacion_tag[25]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- identificacion_tag[26]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- identificacion_tag[27]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- identificacion_tag[1]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- identificacion_tag[5]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- identificacion_tag[9]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- identificacion_tag[13]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- identificacion_tag[0]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- identificacion_tag[4]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- identificacion_tag[8]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- identificacion_tag[12]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- identificacion_tag[2]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- identificacion_tag[6]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- identificacion_tag[10]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- identificacion_tag[14]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF IdValidacion IS
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
SIGNAL ww_identificacion_tag : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_identificacion_valida : std_logic;
SIGNAL ww_categoria_vehiculo : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \identificacion_valida~output_o\ : std_logic;
SIGNAL \categoria_vehiculo[0]~output_o\ : std_logic;
SIGNAL \categoria_vehiculo[1]~output_o\ : std_logic;
SIGNAL \categoria_vehiculo[2]~output_o\ : std_logic;
SIGNAL \categoria_vehiculo[3]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \identificacion_tag[6]~input_o\ : std_logic;
SIGNAL \identificacion_tag[2]~input_o\ : std_logic;
SIGNAL \identificacion_tag[10]~input_o\ : std_logic;
SIGNAL \identificacion_tag[14]~input_o\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \identificacion_tag[8]~input_o\ : std_logic;
SIGNAL \identificacion_tag[12]~input_o\ : std_logic;
SIGNAL \identificacion_tag[4]~input_o\ : std_logic;
SIGNAL \identificacion_tag[0]~input_o\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \identificacion_tag[29]~input_o\ : std_logic;
SIGNAL \identificacion_tag[30]~input_o\ : std_logic;
SIGNAL \identificacion_tag[31]~input_o\ : std_logic;
SIGNAL \identificacion_tag[28]~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \identificacion_tag[17]~input_o\ : std_logic;
SIGNAL \identificacion_tag[18]~input_o\ : std_logic;
SIGNAL \identificacion_tag[19]~input_o\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \identificacion_tag[16]~input_o\ : std_logic;
SIGNAL \identificacion_tag[11]~input_o\ : std_logic;
SIGNAL \identificacion_tag[7]~input_o\ : std_logic;
SIGNAL \identificacion_tag[15]~input_o\ : std_logic;
SIGNAL \identificacion_tag[3]~input_o\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \identificacion_tag[20]~input_o\ : std_logic;
SIGNAL \identificacion_tag[23]~input_o\ : std_logic;
SIGNAL \identificacion_tag[22]~input_o\ : std_logic;
SIGNAL \identificacion_tag[21]~input_o\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \identificacion_tag[27]~input_o\ : std_logic;
SIGNAL \identificacion_tag[24]~input_o\ : std_logic;
SIGNAL \identificacion_tag[25]~input_o\ : std_logic;
SIGNAL \identificacion_tag[26]~input_o\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \identificacion_tag[9]~input_o\ : std_logic;
SIGNAL \identificacion_tag[1]~input_o\ : std_logic;
SIGNAL \identificacion_tag[5]~input_o\ : std_logic;
SIGNAL \identificacion_tag[13]~input_o\ : std_logic;
SIGNAL \Equal3~1_combout\ : std_logic;
SIGNAL \Equal3~2_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \identificacion_valida~5_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \identificacion_valida~6_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \identificacion_valida~reg0_q\ : std_logic;
SIGNAL \categoria_vehiculo~4_combout\ : std_logic;
SIGNAL \categoria_vehiculo[0]~reg0_q\ : std_logic;
SIGNAL \identificacion_valida~4_combout\ : std_logic;
SIGNAL \categoria_vehiculo~5_combout\ : std_logic;
SIGNAL \categoria_vehiculo[1]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_rst~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_identificacion_tag <= identificacion_tag;
identificacion_valida <= ww_identificacion_valida;
categoria_vehiculo <= ww_categoria_vehiculo;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);
\ALT_INV_rst~inputclkctrl_outclk\ <= NOT \rst~inputclkctrl_outclk\;

-- Location: IOOBUF_X11_Y0_N30
\identificacion_valida~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \identificacion_valida~reg0_q\,
	devoe => ww_devoe,
	o => \identificacion_valida~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\categoria_vehiculo[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \categoria_vehiculo[0]~reg0_q\,
	devoe => ww_devoe,
	o => \categoria_vehiculo[0]~output_o\);

-- Location: IOOBUF_X21_Y29_N9
\categoria_vehiculo[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \categoria_vehiculo[1]~reg0_q\,
	devoe => ww_devoe,
	o => \categoria_vehiculo[1]~output_o\);

-- Location: IOOBUF_X7_Y29_N30
\categoria_vehiculo[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \categoria_vehiculo[2]~output_o\);

-- Location: IOOBUF_X0_Y7_N23
\categoria_vehiculo[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \categoria_vehiculo[3]~output_o\);

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

-- Location: IOIBUF_X19_Y0_N22
\identificacion_tag[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_identificacion_tag(6),
	o => \identificacion_tag[6]~input_o\);

-- Location: IOIBUF_X23_Y0_N22
\identificacion_tag[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_identificacion_tag(2),
	o => \identificacion_tag[2]~input_o\);

-- Location: IOIBUF_X26_Y0_N15
\identificacion_tag[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_identificacion_tag(10),
	o => \identificacion_tag[10]~input_o\);

-- Location: IOIBUF_X32_Y0_N22
\identificacion_tag[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_identificacion_tag(14),
	o => \identificacion_tag[14]~input_o\);

-- Location: LCCOMB_X22_Y1_N22
\Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!\identificacion_tag[6]~input_o\ & (!\identificacion_tag[2]~input_o\ & (!\identificacion_tag[10]~input_o\ & !\identificacion_tag[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \identificacion_tag[6]~input_o\,
	datab => \identificacion_tag[2]~input_o\,
	datac => \identificacion_tag[10]~input_o\,
	datad => \identificacion_tag[14]~input_o\,
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X22_Y1_N6
\Equal0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (\identificacion_tag[6]~input_o\ & (\identificacion_tag[2]~input_o\ & (\identificacion_tag[10]~input_o\ & \identificacion_tag[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \identificacion_tag[6]~input_o\,
	datab => \identificacion_tag[2]~input_o\,
	datac => \identificacion_tag[10]~input_o\,
	datad => \identificacion_tag[14]~input_o\,
	combout => \Equal0~10_combout\);

-- Location: IOIBUF_X26_Y0_N29
\identificacion_tag[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_identificacion_tag(8),
	o => \identificacion_tag[8]~input_o\);

-- Location: IOIBUF_X16_Y0_N22
\identificacion_tag[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_identificacion_tag(12),
	o => \identificacion_tag[12]~input_o\);

-- Location: IOIBUF_X19_Y0_N29
\identificacion_tag[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_identificacion_tag(4),
	o => \identificacion_tag[4]~input_o\);

-- Location: IOIBUF_X23_Y0_N8
\identificacion_tag[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_identificacion_tag(0),
	o => \identificacion_tag[0]~input_o\);

-- Location: LCCOMB_X22_Y1_N20
\Equal3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (!\identificacion_tag[8]~input_o\ & (!\identificacion_tag[12]~input_o\ & (!\identificacion_tag[4]~input_o\ & !\identificacion_tag[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \identificacion_tag[8]~input_o\,
	datab => \identificacion_tag[12]~input_o\,
	datac => \identificacion_tag[4]~input_o\,
	datad => \identificacion_tag[0]~input_o\,
	combout => \Equal3~0_combout\);

-- Location: IOIBUF_X21_Y0_N1
\identificacion_tag[29]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_identificacion_tag(29),
	o => \identificacion_tag[29]~input_o\);

-- Location: IOIBUF_X19_Y0_N8
\identificacion_tag[30]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_identificacion_tag(30),
	o => \identificacion_tag[30]~input_o\);

-- Location: IOIBUF_X19_Y29_N29
\identificacion_tag[31]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_identificacion_tag(31),
	o => \identificacion_tag[31]~input_o\);

-- Location: IOIBUF_X21_Y0_N8
\identificacion_tag[28]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_identificacion_tag(28),
	o => \identificacion_tag[28]~input_o\);

-- Location: LCCOMB_X19_Y3_N0
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\identificacion_tag[29]~input_o\ & (!\identificacion_tag[30]~input_o\ & (!\identificacion_tag[31]~input_o\ & !\identificacion_tag[28]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \identificacion_tag[29]~input_o\,
	datab => \identificacion_tag[30]~input_o\,
	datac => \identificacion_tag[31]~input_o\,
	datad => \identificacion_tag[28]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: IOIBUF_X16_Y0_N8
\identificacion_tag[17]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_identificacion_tag(17),
	o => \identificacion_tag[17]~input_o\);

-- Location: IOIBUF_X14_Y0_N8
\identificacion_tag[18]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_identificacion_tag(18),
	o => \identificacion_tag[18]~input_o\);

-- Location: IOIBUF_X26_Y0_N8
\identificacion_tag[19]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_identificacion_tag(19),
	o => \identificacion_tag[19]~input_o\);

-- Location: LCCOMB_X14_Y1_N2
\Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!\identificacion_tag[18]~input_o\ & !\identificacion_tag[19]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \identificacion_tag[18]~input_o\,
	datac => \identificacion_tag[19]~input_o\,
	combout => \Equal0~2_combout\);

-- Location: IOIBUF_X11_Y0_N15
\identificacion_tag[16]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_identificacion_tag(16),
	o => \identificacion_tag[16]~input_o\);

-- Location: IOIBUF_X14_Y0_N15
\identificacion_tag[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_identificacion_tag(11),
	o => \identificacion_tag[11]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\identificacion_tag[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_identificacion_tag(7),
	o => \identificacion_tag[7]~input_o\);

-- Location: IOIBUF_X0_Y2_N15
\identificacion_tag[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_identificacion_tag(15),
	o => \identificacion_tag[15]~input_o\);

-- Location: IOIBUF_X16_Y0_N15
\identificacion_tag[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_identificacion_tag(3),
	o => \identificacion_tag[3]~input_o\);

-- Location: LCCOMB_X14_Y1_N0
\Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (\identificacion_tag[11]~input_o\ & (\identificacion_tag[7]~input_o\ & (\identificacion_tag[15]~input_o\ & \identificacion_tag[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \identificacion_tag[11]~input_o\,
	datab => \identificacion_tag[7]~input_o\,
	datac => \identificacion_tag[15]~input_o\,
	datad => \identificacion_tag[3]~input_o\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X14_Y1_N28
\Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!\identificacion_tag[17]~input_o\ & (\Equal0~2_combout\ & (!\identificacion_tag[16]~input_o\ & \Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \identificacion_tag[17]~input_o\,
	datab => \Equal0~2_combout\,
	datac => \identificacion_tag[16]~input_o\,
	datad => \Equal0~1_combout\,
	combout => \Equal0~3_combout\);

-- Location: IOIBUF_X23_Y0_N1
\identificacion_tag[20]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_identificacion_tag(20),
	o => \identificacion_tag[20]~input_o\);

-- Location: IOIBUF_X21_Y29_N22
\identificacion_tag[23]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_identificacion_tag(23),
	o => \identificacion_tag[23]~input_o\);

-- Location: IOIBUF_X26_Y0_N1
\identificacion_tag[22]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_identificacion_tag(22),
	o => \identificacion_tag[22]~input_o\);

-- Location: IOIBUF_X28_Y0_N8
\identificacion_tag[21]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_identificacion_tag(21),
	o => \identificacion_tag[21]~input_o\);

-- Location: LCCOMB_X22_Y1_N14
\Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (!\identificacion_tag[20]~input_o\ & (!\identificacion_tag[23]~input_o\ & (!\identificacion_tag[22]~input_o\ & !\identificacion_tag[21]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \identificacion_tag[20]~input_o\,
	datab => \identificacion_tag[23]~input_o\,
	datac => \identificacion_tag[22]~input_o\,
	datad => \identificacion_tag[21]~input_o\,
	combout => \Equal0~4_combout\);

-- Location: IOIBUF_X35_Y0_N22
\identificacion_tag[27]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_identificacion_tag(27),
	o => \identificacion_tag[27]~input_o\);

-- Location: IOIBUF_X35_Y0_N15
\identificacion_tag[24]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_identificacion_tag(24),
	o => \identificacion_tag[24]~input_o\);

-- Location: IOIBUF_X41_Y8_N8
\identificacion_tag[25]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_identificacion_tag(25),
	o => \identificacion_tag[25]~input_o\);

-- Location: IOIBUF_X37_Y0_N29
\identificacion_tag[26]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_identificacion_tag(26),
	o => \identificacion_tag[26]~input_o\);

-- Location: LCCOMB_X37_Y1_N8
\Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!\identificacion_tag[27]~input_o\ & (!\identificacion_tag[24]~input_o\ & (!\identificacion_tag[25]~input_o\ & !\identificacion_tag[26]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \identificacion_tag[27]~input_o\,
	datab => \identificacion_tag[24]~input_o\,
	datac => \identificacion_tag[25]~input_o\,
	datad => \identificacion_tag[26]~input_o\,
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X22_Y1_N8
\Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (\Equal0~0_combout\ & (\Equal0~3_combout\ & (\Equal0~4_combout\ & \Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~3_combout\,
	datac => \Equal0~4_combout\,
	datad => \Equal0~5_combout\,
	combout => \Equal0~6_combout\);

-- Location: IOIBUF_X21_Y0_N29
\identificacion_tag[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_identificacion_tag(9),
	o => \identificacion_tag[9]~input_o\);

-- Location: IOIBUF_X11_Y0_N22
\identificacion_tag[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_identificacion_tag(1),
	o => \identificacion_tag[1]~input_o\);

-- Location: IOIBUF_X19_Y0_N1
\identificacion_tag[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_identificacion_tag(5),
	o => \identificacion_tag[5]~input_o\);

-- Location: IOIBUF_X26_Y0_N22
\identificacion_tag[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_identificacion_tag(13),
	o => \identificacion_tag[13]~input_o\);

-- Location: LCCOMB_X22_Y1_N18
\Equal3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal3~1_combout\ = (!\identificacion_tag[9]~input_o\ & (!\identificacion_tag[1]~input_o\ & (!\identificacion_tag[5]~input_o\ & !\identificacion_tag[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \identificacion_tag[9]~input_o\,
	datab => \identificacion_tag[1]~input_o\,
	datac => \identificacion_tag[5]~input_o\,
	datad => \identificacion_tag[13]~input_o\,
	combout => \Equal3~1_combout\);

-- Location: LCCOMB_X22_Y1_N28
\Equal3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal3~2_combout\ = (\Equal0~10_combout\ & (\Equal3~0_combout\ & (\Equal0~6_combout\ & \Equal3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~10_combout\,
	datab => \Equal3~0_combout\,
	datac => \Equal0~6_combout\,
	datad => \Equal3~1_combout\,
	combout => \Equal3~2_combout\);

-- Location: LCCOMB_X22_Y1_N10
\Equal0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (\identificacion_tag[8]~input_o\ & (\identificacion_tag[12]~input_o\ & (\identificacion_tag[4]~input_o\ & \identificacion_tag[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \identificacion_tag[8]~input_o\,
	datab => \identificacion_tag[12]~input_o\,
	datac => \identificacion_tag[4]~input_o\,
	datad => \identificacion_tag[0]~input_o\,
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X22_Y1_N2
\Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (\identificacion_tag[9]~input_o\ & (\identificacion_tag[1]~input_o\ & (\identificacion_tag[5]~input_o\ & \identificacion_tag[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \identificacion_tag[9]~input_o\,
	datab => \identificacion_tag[1]~input_o\,
	datac => \identificacion_tag[5]~input_o\,
	datad => \identificacion_tag[13]~input_o\,
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X22_Y1_N4
\Equal0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (\Equal0~8_combout\ & (\Equal0~6_combout\ & \Equal0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~8_combout\,
	datac => \Equal0~6_combout\,
	datad => \Equal0~7_combout\,
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X22_Y1_N30
\identificacion_valida~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \identificacion_valida~5_combout\ = \Equal3~2_combout\ $ (((\Equal2~0_combout\ & \Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \Equal3~2_combout\,
	datac => \Equal0~9_combout\,
	combout => \identificacion_valida~5_combout\);

-- Location: LCCOMB_X22_Y1_N16
\Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (\Equal2~0_combout\ & (\Equal3~0_combout\ & (\Equal0~6_combout\ & \Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \Equal3~0_combout\,
	datac => \Equal0~6_combout\,
	datad => \Equal0~7_combout\,
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X22_Y1_N0
\identificacion_valida~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \identificacion_valida~6_combout\ = (\identificacion_valida~5_combout\) # (\Equal1~0_combout\ $ (((\Equal0~9_combout\ & \Equal0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \identificacion_valida~5_combout\,
	datab => \Equal1~0_combout\,
	datac => \Equal0~9_combout\,
	datad => \Equal0~10_combout\,
	combout => \identificacion_valida~6_combout\);

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

-- Location: FF_X22_Y1_N1
\identificacion_valida~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \identificacion_valida~6_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \identificacion_valida~reg0_q\);

-- Location: LCCOMB_X22_Y1_N26
\categoria_vehiculo~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \categoria_vehiculo~4_combout\ = \Equal3~2_combout\ $ (\Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal3~2_combout\,
	datad => \Equal1~0_combout\,
	combout => \categoria_vehiculo~4_combout\);

-- Location: FF_X22_Y1_N27
\categoria_vehiculo[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \categoria_vehiculo~4_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \categoria_vehiculo[0]~reg0_q\);

-- Location: LCCOMB_X22_Y1_N24
\identificacion_valida~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \identificacion_valida~4_combout\ = \Equal1~0_combout\ $ (((\Equal0~10_combout\ & \Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~10_combout\,
	datab => \Equal1~0_combout\,
	datac => \Equal0~9_combout\,
	combout => \identificacion_valida~4_combout\);

-- Location: LCCOMB_X22_Y1_N12
\categoria_vehiculo~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \categoria_vehiculo~5_combout\ = (!\identificacion_valida~4_combout\ & (\Equal3~2_combout\ $ (((\Equal2~0_combout\ & \Equal0~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \Equal3~2_combout\,
	datac => \Equal0~9_combout\,
	datad => \identificacion_valida~4_combout\,
	combout => \categoria_vehiculo~5_combout\);

-- Location: FF_X22_Y1_N13
\categoria_vehiculo[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \categoria_vehiculo~5_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \categoria_vehiculo[1]~reg0_q\);

ww_identificacion_valida <= \identificacion_valida~output_o\;

ww_categoria_vehiculo(0) <= \categoria_vehiculo[0]~output_o\;

ww_categoria_vehiculo(1) <= \categoria_vehiculo[1]~output_o\;

ww_categoria_vehiculo(2) <= \categoria_vehiculo[2]~output_o\;

ww_categoria_vehiculo(3) <= \categoria_vehiculo[3]~output_o\;
END structure;


