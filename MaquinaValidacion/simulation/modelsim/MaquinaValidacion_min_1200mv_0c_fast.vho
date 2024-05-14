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

-- DATE "05/12/2024 16:36:14"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	MaquinaValidacion IS
    PORT (
	identificacion : IN std_logic_vector(4 DOWNTO 0);
	identificacion_valida : OUT std_logic;
	categoria_vehiculo : OUT std_logic_vector(1 DOWNTO 0)
	);
END MaquinaValidacion;

-- Design Ports Information
-- identificacion_valida	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- categoria_vehiculo[0]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- categoria_vehiculo[1]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- identificacion[0]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- identificacion[2]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- identificacion[3]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- identificacion[4]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- identificacion[1]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF MaquinaValidacion IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_identificacion : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_identificacion_valida : std_logic;
SIGNAL ww_categoria_vehiculo : std_logic_vector(1 DOWNTO 0);
SIGNAL \estado_siguiente.esperando_identificacion~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \identificacion_valida~output_o\ : std_logic;
SIGNAL \categoria_vehiculo[0]~output_o\ : std_logic;
SIGNAL \categoria_vehiculo[1]~output_o\ : std_logic;
SIGNAL \identificacion[0]~input_o\ : std_logic;
SIGNAL \identificacion[4]~input_o\ : std_logic;
SIGNAL \identificacion[3]~input_o\ : std_logic;
SIGNAL \identificacion[2]~input_o\ : std_logic;
SIGNAL \categoria_vehiculo~0_combout\ : std_logic;
SIGNAL \estado_siguiente.esperando_identificacion~0_combout\ : std_logic;
SIGNAL \estado_siguiente.esperando_identificacion~0clkctrl_outclk\ : std_logic;
SIGNAL \categoria_vehiculo[0]$latch~combout\ : std_logic;
SIGNAL \identificacion[1]~input_o\ : std_logic;
SIGNAL \categoria_vehiculo~1_combout\ : std_logic;
SIGNAL \categoria_vehiculo[1]$latch~combout\ : std_logic;

BEGIN

ww_identificacion <= identificacion;
identificacion_valida <= ww_identificacion_valida;
categoria_vehiculo <= ww_categoria_vehiculo;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\estado_siguiente.esperando_identificacion~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \estado_siguiente.esperando_identificacion~0_combout\);

-- Location: IOOBUF_X7_Y29_N23
\identificacion_valida~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \identificacion_valida~output_o\);

-- Location: IOOBUF_X0_Y11_N23
\categoria_vehiculo[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \categoria_vehiculo[0]$latch~combout\,
	devoe => ww_devoe,
	o => \categoria_vehiculo[0]~output_o\);

-- Location: IOOBUF_X0_Y22_N9
\categoria_vehiculo[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \categoria_vehiculo[1]$latch~combout\,
	devoe => ww_devoe,
	o => \categoria_vehiculo[1]~output_o\);

-- Location: IOIBUF_X0_Y6_N8
\identificacion[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_identificacion(0),
	o => \identificacion[0]~input_o\);

-- Location: IOIBUF_X0_Y13_N1
\identificacion[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_identificacion(4),
	o => \identificacion[4]~input_o\);

-- Location: IOIBUF_X1_Y0_N22
\identificacion[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_identificacion(3),
	o => \identificacion[3]~input_o\);

-- Location: IOIBUF_X0_Y20_N8
\identificacion[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_identificacion(2),
	o => \identificacion[2]~input_o\);

-- Location: LCCOMB_X1_Y20_N0
\categoria_vehiculo~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \categoria_vehiculo~0_combout\ = (\identificacion[0]~input_o\ & (!\identificacion[4]~input_o\ & (!\identificacion[3]~input_o\ & !\identificacion[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \identificacion[0]~input_o\,
	datab => \identificacion[4]~input_o\,
	datac => \identificacion[3]~input_o\,
	datad => \identificacion[2]~input_o\,
	combout => \categoria_vehiculo~0_combout\);

-- Location: LCCOMB_X21_Y2_N16
\estado_siguiente.esperando_identificacion~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \estado_siguiente.esperando_identificacion~0_combout\ = !\estado_siguiente.esperando_identificacion~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \estado_siguiente.esperando_identificacion~0_combout\,
	combout => \estado_siguiente.esperando_identificacion~0_combout\);

-- Location: CLKCTRL_G18
\estado_siguiente.esperando_identificacion~0clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \estado_siguiente.esperando_identificacion~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \estado_siguiente.esperando_identificacion~0clkctrl_outclk\);

-- Location: LCCOMB_X1_Y20_N28
\categoria_vehiculo[0]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \categoria_vehiculo[0]$latch~combout\ = (GLOBAL(\estado_siguiente.esperando_identificacion~0clkctrl_outclk\) & (\categoria_vehiculo~0_combout\)) # (!GLOBAL(\estado_siguiente.esperando_identificacion~0clkctrl_outclk\) & 
-- ((\categoria_vehiculo[0]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \categoria_vehiculo~0_combout\,
	datac => \estado_siguiente.esperando_identificacion~0clkctrl_outclk\,
	datad => \categoria_vehiculo[0]$latch~combout\,
	combout => \categoria_vehiculo[0]$latch~combout\);

-- Location: IOIBUF_X1_Y0_N15
\identificacion[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_identificacion(1),
	o => \identificacion[1]~input_o\);

-- Location: LCCOMB_X1_Y20_N2
\categoria_vehiculo~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \categoria_vehiculo~1_combout\ = (\identificacion[1]~input_o\ & (!\identificacion[4]~input_o\ & (!\identificacion[3]~input_o\ & !\identificacion[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \identificacion[1]~input_o\,
	datab => \identificacion[4]~input_o\,
	datac => \identificacion[3]~input_o\,
	datad => \identificacion[2]~input_o\,
	combout => \categoria_vehiculo~1_combout\);

-- Location: LCCOMB_X1_Y20_N6
\categoria_vehiculo[1]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \categoria_vehiculo[1]$latch~combout\ = (GLOBAL(\estado_siguiente.esperando_identificacion~0clkctrl_outclk\) & (\categoria_vehiculo~1_combout\)) # (!GLOBAL(\estado_siguiente.esperando_identificacion~0clkctrl_outclk\) & 
-- ((\categoria_vehiculo[1]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \categoria_vehiculo~1_combout\,
	datac => \estado_siguiente.esperando_identificacion~0clkctrl_outclk\,
	datad => \categoria_vehiculo[1]$latch~combout\,
	combout => \categoria_vehiculo[1]$latch~combout\);

ww_identificacion_valida <= \identificacion_valida~output_o\;

ww_categoria_vehiculo(0) <= \categoria_vehiculo[0]~output_o\;

ww_categoria_vehiculo(1) <= \categoria_vehiculo[1]~output_o\;
END structure;


