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

-- DATE "05/06/2024 18:32:00"

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
USE IEEE.NUMERIC_STD.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	RegistroyContador IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	vehiculo_pasado : IN std_logic;
	total_vehiculos : OUT IEEE.NUMERIC_STD.unsigned(13 DOWNTO 0);
	tiempo_paso_ultimo_vehiculo : OUT IEEE.NUMERIC_STD.unsigned(13 DOWNTO 0)
	);
END RegistroyContador;

-- Design Ports Information
-- total_vehiculos[0]	=>  Location: PIN_U9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- total_vehiculos[1]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- total_vehiculos[2]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- total_vehiculos[3]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- total_vehiculos[4]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- total_vehiculos[5]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- total_vehiculos[6]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- total_vehiculos[7]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- total_vehiculos[8]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- total_vehiculos[9]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- total_vehiculos[10]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- total_vehiculos[11]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- total_vehiculos[12]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- total_vehiculos[13]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tiempo_paso_ultimo_vehiculo[0]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tiempo_paso_ultimo_vehiculo[1]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tiempo_paso_ultimo_vehiculo[2]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tiempo_paso_ultimo_vehiculo[3]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tiempo_paso_ultimo_vehiculo[4]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tiempo_paso_ultimo_vehiculo[5]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tiempo_paso_ultimo_vehiculo[6]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tiempo_paso_ultimo_vehiculo[7]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tiempo_paso_ultimo_vehiculo[8]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tiempo_paso_ultimo_vehiculo[9]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tiempo_paso_ultimo_vehiculo[10]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tiempo_paso_ultimo_vehiculo[11]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tiempo_paso_ultimo_vehiculo[12]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tiempo_paso_ultimo_vehiculo[13]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vehiculo_pasado	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF RegistroyContador IS
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
SIGNAL ww_vehiculo_pasado : std_logic;
SIGNAL ww_total_vehiculos : std_logic_vector(13 DOWNTO 0);
SIGNAL ww_tiempo_paso_ultimo_vehiculo : std_logic_vector(13 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \total_vehiculos[0]~output_o\ : std_logic;
SIGNAL \total_vehiculos[1]~output_o\ : std_logic;
SIGNAL \total_vehiculos[2]~output_o\ : std_logic;
SIGNAL \total_vehiculos[3]~output_o\ : std_logic;
SIGNAL \total_vehiculos[4]~output_o\ : std_logic;
SIGNAL \total_vehiculos[5]~output_o\ : std_logic;
SIGNAL \total_vehiculos[6]~output_o\ : std_logic;
SIGNAL \total_vehiculos[7]~output_o\ : std_logic;
SIGNAL \total_vehiculos[8]~output_o\ : std_logic;
SIGNAL \total_vehiculos[9]~output_o\ : std_logic;
SIGNAL \total_vehiculos[10]~output_o\ : std_logic;
SIGNAL \total_vehiculos[11]~output_o\ : std_logic;
SIGNAL \total_vehiculos[12]~output_o\ : std_logic;
SIGNAL \total_vehiculos[13]~output_o\ : std_logic;
SIGNAL \tiempo_paso_ultimo_vehiculo[0]~output_o\ : std_logic;
SIGNAL \tiempo_paso_ultimo_vehiculo[1]~output_o\ : std_logic;
SIGNAL \tiempo_paso_ultimo_vehiculo[2]~output_o\ : std_logic;
SIGNAL \tiempo_paso_ultimo_vehiculo[3]~output_o\ : std_logic;
SIGNAL \tiempo_paso_ultimo_vehiculo[4]~output_o\ : std_logic;
SIGNAL \tiempo_paso_ultimo_vehiculo[5]~output_o\ : std_logic;
SIGNAL \tiempo_paso_ultimo_vehiculo[6]~output_o\ : std_logic;
SIGNAL \tiempo_paso_ultimo_vehiculo[7]~output_o\ : std_logic;
SIGNAL \tiempo_paso_ultimo_vehiculo[8]~output_o\ : std_logic;
SIGNAL \tiempo_paso_ultimo_vehiculo[9]~output_o\ : std_logic;
SIGNAL \tiempo_paso_ultimo_vehiculo[10]~output_o\ : std_logic;
SIGNAL \tiempo_paso_ultimo_vehiculo[11]~output_o\ : std_logic;
SIGNAL \tiempo_paso_ultimo_vehiculo[12]~output_o\ : std_logic;
SIGNAL \tiempo_paso_ultimo_vehiculo[13]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \vehiculo_pasado~input_o\ : std_logic;
SIGNAL \estado_siguiente~0_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \estado_siguiente~q\ : std_logic;
SIGNAL \estado_actual~feeder_combout\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \estado_actual~q\ : std_logic;
SIGNAL \contador_tiempo_paso_ultimo_vehiculo[0]~13_combout\ : std_logic;
SIGNAL \contador_tiempo_paso_ultimo_vehiculo[1]~14_combout\ : std_logic;
SIGNAL \contador_tiempo_paso_ultimo_vehiculo[1]~15\ : std_logic;
SIGNAL \contador_tiempo_paso_ultimo_vehiculo[2]~16_combout\ : std_logic;
SIGNAL \contador_tiempo_paso_ultimo_vehiculo[2]~17\ : std_logic;
SIGNAL \contador_tiempo_paso_ultimo_vehiculo[3]~18_combout\ : std_logic;
SIGNAL \contador_tiempo_paso_ultimo_vehiculo[3]~19\ : std_logic;
SIGNAL \contador_tiempo_paso_ultimo_vehiculo[4]~20_combout\ : std_logic;
SIGNAL \contador_tiempo_paso_ultimo_vehiculo[4]~21\ : std_logic;
SIGNAL \contador_tiempo_paso_ultimo_vehiculo[5]~22_combout\ : std_logic;
SIGNAL \contador_tiempo_paso_ultimo_vehiculo[5]~23\ : std_logic;
SIGNAL \contador_tiempo_paso_ultimo_vehiculo[6]~24_combout\ : std_logic;
SIGNAL \contador_tiempo_paso_ultimo_vehiculo[6]~25\ : std_logic;
SIGNAL \contador_tiempo_paso_ultimo_vehiculo[7]~26_combout\ : std_logic;
SIGNAL \contador_tiempo_paso_ultimo_vehiculo[7]~27\ : std_logic;
SIGNAL \contador_tiempo_paso_ultimo_vehiculo[8]~28_combout\ : std_logic;
SIGNAL \contador_tiempo_paso_ultimo_vehiculo[8]~29\ : std_logic;
SIGNAL \contador_tiempo_paso_ultimo_vehiculo[9]~30_combout\ : std_logic;
SIGNAL \contador_tiempo_paso_ultimo_vehiculo[9]~31\ : std_logic;
SIGNAL \contador_tiempo_paso_ultimo_vehiculo[10]~32_combout\ : std_logic;
SIGNAL \contador_tiempo_paso_ultimo_vehiculo[10]~33\ : std_logic;
SIGNAL \contador_tiempo_paso_ultimo_vehiculo[11]~34_combout\ : std_logic;
SIGNAL \contador_tiempo_paso_ultimo_vehiculo[11]~35\ : std_logic;
SIGNAL \contador_tiempo_paso_ultimo_vehiculo[12]~36_combout\ : std_logic;
SIGNAL \contador_tiempo_paso_ultimo_vehiculo[12]~37\ : std_logic;
SIGNAL \contador_tiempo_paso_ultimo_vehiculo[13]~38_combout\ : std_logic;
SIGNAL contador_tiempo_paso_ultimo_vehiculo : std_logic_vector(13 DOWNTO 0);
SIGNAL \ALT_INV_rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_rst~input_o\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_vehiculo_pasado <= vehiculo_pasado;
total_vehiculos <= IEEE.NUMERIC_STD.UNSIGNED(ww_total_vehiculos);
tiempo_paso_ultimo_vehiculo <= IEEE.NUMERIC_STD.UNSIGNED(ww_tiempo_paso_ultimo_vehiculo);
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);
\ALT_INV_rst~inputclkctrl_outclk\ <= NOT \rst~inputclkctrl_outclk\;
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;

-- Location: IOOBUF_X9_Y0_N2
\total_vehiculos[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => contador_tiempo_paso_ultimo_vehiculo(0),
	devoe => ww_devoe,
	o => \total_vehiculos[0]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\total_vehiculos[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => contador_tiempo_paso_ultimo_vehiculo(1),
	devoe => ww_devoe,
	o => \total_vehiculos[1]~output_o\);

-- Location: IOOBUF_X7_Y0_N23
\total_vehiculos[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => contador_tiempo_paso_ultimo_vehiculo(2),
	devoe => ww_devoe,
	o => \total_vehiculos[2]~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\total_vehiculos[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => contador_tiempo_paso_ultimo_vehiculo(3),
	devoe => ww_devoe,
	o => \total_vehiculos[3]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\total_vehiculos[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => contador_tiempo_paso_ultimo_vehiculo(4),
	devoe => ww_devoe,
	o => \total_vehiculos[4]~output_o\);

-- Location: IOOBUF_X7_Y0_N16
\total_vehiculos[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => contador_tiempo_paso_ultimo_vehiculo(5),
	devoe => ww_devoe,
	o => \total_vehiculos[5]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\total_vehiculos[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => contador_tiempo_paso_ultimo_vehiculo(6),
	devoe => ww_devoe,
	o => \total_vehiculos[6]~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\total_vehiculos[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => contador_tiempo_paso_ultimo_vehiculo(7),
	devoe => ww_devoe,
	o => \total_vehiculos[7]~output_o\);

-- Location: IOOBUF_X9_Y0_N30
\total_vehiculos[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => contador_tiempo_paso_ultimo_vehiculo(8),
	devoe => ww_devoe,
	o => \total_vehiculos[8]~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\total_vehiculos[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => contador_tiempo_paso_ultimo_vehiculo(9),
	devoe => ww_devoe,
	o => \total_vehiculos[9]~output_o\);

-- Location: IOOBUF_X5_Y0_N2
\total_vehiculos[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => contador_tiempo_paso_ultimo_vehiculo(10),
	devoe => ww_devoe,
	o => \total_vehiculos[10]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\total_vehiculos[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => contador_tiempo_paso_ultimo_vehiculo(11),
	devoe => ww_devoe,
	o => \total_vehiculos[11]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\total_vehiculos[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => contador_tiempo_paso_ultimo_vehiculo(12),
	devoe => ww_devoe,
	o => \total_vehiculos[12]~output_o\);

-- Location: IOOBUF_X19_Y0_N16
\total_vehiculos[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => contador_tiempo_paso_ultimo_vehiculo(13),
	devoe => ww_devoe,
	o => \total_vehiculos[13]~output_o\);

-- Location: IOOBUF_X9_Y0_N9
\tiempo_paso_ultimo_vehiculo[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => contador_tiempo_paso_ultimo_vehiculo(0),
	devoe => ww_devoe,
	o => \tiempo_paso_ultimo_vehiculo[0]~output_o\);

-- Location: IOOBUF_X11_Y0_N30
\tiempo_paso_ultimo_vehiculo[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => contador_tiempo_paso_ultimo_vehiculo(1),
	devoe => ww_devoe,
	o => \tiempo_paso_ultimo_vehiculo[1]~output_o\);

-- Location: IOOBUF_X7_Y0_N30
\tiempo_paso_ultimo_vehiculo[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => contador_tiempo_paso_ultimo_vehiculo(2),
	devoe => ww_devoe,
	o => \tiempo_paso_ultimo_vehiculo[2]~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\tiempo_paso_ultimo_vehiculo[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => contador_tiempo_paso_ultimo_vehiculo(3),
	devoe => ww_devoe,
	o => \tiempo_paso_ultimo_vehiculo[3]~output_o\);

-- Location: IOOBUF_X16_Y0_N30
\tiempo_paso_ultimo_vehiculo[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => contador_tiempo_paso_ultimo_vehiculo(4),
	devoe => ww_devoe,
	o => \tiempo_paso_ultimo_vehiculo[4]~output_o\);

-- Location: IOOBUF_X9_Y0_N16
\tiempo_paso_ultimo_vehiculo[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => contador_tiempo_paso_ultimo_vehiculo(5),
	devoe => ww_devoe,
	o => \tiempo_paso_ultimo_vehiculo[5]~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\tiempo_paso_ultimo_vehiculo[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => contador_tiempo_paso_ultimo_vehiculo(6),
	devoe => ww_devoe,
	o => \tiempo_paso_ultimo_vehiculo[6]~output_o\);

-- Location: IOOBUF_X14_Y0_N23
\tiempo_paso_ultimo_vehiculo[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => contador_tiempo_paso_ultimo_vehiculo(7),
	devoe => ww_devoe,
	o => \tiempo_paso_ultimo_vehiculo[7]~output_o\);

-- Location: IOOBUF_X9_Y0_N23
\tiempo_paso_ultimo_vehiculo[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => contador_tiempo_paso_ultimo_vehiculo(8),
	devoe => ww_devoe,
	o => \tiempo_paso_ultimo_vehiculo[8]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\tiempo_paso_ultimo_vehiculo[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => contador_tiempo_paso_ultimo_vehiculo(9),
	devoe => ww_devoe,
	o => \tiempo_paso_ultimo_vehiculo[9]~output_o\);

-- Location: IOOBUF_X5_Y0_N9
\tiempo_paso_ultimo_vehiculo[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => contador_tiempo_paso_ultimo_vehiculo(10),
	devoe => ww_devoe,
	o => \tiempo_paso_ultimo_vehiculo[10]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\tiempo_paso_ultimo_vehiculo[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => contador_tiempo_paso_ultimo_vehiculo(11),
	devoe => ww_devoe,
	o => \tiempo_paso_ultimo_vehiculo[11]~output_o\);

-- Location: IOOBUF_X14_Y0_N16
\tiempo_paso_ultimo_vehiculo[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => contador_tiempo_paso_ultimo_vehiculo(12),
	devoe => ww_devoe,
	o => \tiempo_paso_ultimo_vehiculo[12]~output_o\);

-- Location: IOOBUF_X19_Y0_N23
\tiempo_paso_ultimo_vehiculo[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => contador_tiempo_paso_ultimo_vehiculo(13),
	devoe => ww_devoe,
	o => \tiempo_paso_ultimo_vehiculo[13]~output_o\);

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

-- Location: IOIBUF_X21_Y0_N8
\vehiculo_pasado~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vehiculo_pasado,
	o => \vehiculo_pasado~input_o\);

-- Location: LCCOMB_X12_Y1_N4
\estado_siguiente~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \estado_siguiente~0_combout\ = (!\estado_actual~q\ & ((\vehiculo_pasado~input_o\) # (\estado_siguiente~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vehiculo_pasado~input_o\,
	datac => \estado_siguiente~q\,
	datad => \estado_actual~q\,
	combout => \estado_siguiente~0_combout\);

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

-- Location: FF_X12_Y1_N5
estado_siguiente : dffeas
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
	q => \estado_siguiente~q\);

-- Location: LCCOMB_X11_Y1_N2
\estado_actual~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \estado_actual~feeder_combout\ = \estado_siguiente~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \estado_siguiente~q\,
	combout => \estado_actual~feeder_combout\);

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

-- Location: FF_X11_Y1_N3
estado_actual : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estado_actual~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_actual~q\);

-- Location: LCCOMB_X11_Y1_N0
\contador_tiempo_paso_ultimo_vehiculo[0]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_tiempo_paso_ultimo_vehiculo[0]~13_combout\ = contador_tiempo_paso_ultimo_vehiculo(0) $ (\estado_actual~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => contador_tiempo_paso_ultimo_vehiculo(0),
	datad => \estado_actual~q\,
	combout => \contador_tiempo_paso_ultimo_vehiculo[0]~13_combout\);

-- Location: FF_X11_Y1_N1
\contador_tiempo_paso_ultimo_vehiculo[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_tiempo_paso_ultimo_vehiculo[0]~13_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_tiempo_paso_ultimo_vehiculo(0));

-- Location: LCCOMB_X11_Y1_N4
\contador_tiempo_paso_ultimo_vehiculo[1]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_tiempo_paso_ultimo_vehiculo[1]~14_combout\ = (contador_tiempo_paso_ultimo_vehiculo(0) & (contador_tiempo_paso_ultimo_vehiculo(1) $ (VCC))) # (!contador_tiempo_paso_ultimo_vehiculo(0) & (contador_tiempo_paso_ultimo_vehiculo(1) & VCC))
-- \contador_tiempo_paso_ultimo_vehiculo[1]~15\ = CARRY((contador_tiempo_paso_ultimo_vehiculo(0) & contador_tiempo_paso_ultimo_vehiculo(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador_tiempo_paso_ultimo_vehiculo(0),
	datab => contador_tiempo_paso_ultimo_vehiculo(1),
	datad => VCC,
	combout => \contador_tiempo_paso_ultimo_vehiculo[1]~14_combout\,
	cout => \contador_tiempo_paso_ultimo_vehiculo[1]~15\);

-- Location: FF_X11_Y1_N5
\contador_tiempo_paso_ultimo_vehiculo[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_tiempo_paso_ultimo_vehiculo[1]~14_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \estado_actual~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_tiempo_paso_ultimo_vehiculo(1));

-- Location: LCCOMB_X11_Y1_N6
\contador_tiempo_paso_ultimo_vehiculo[2]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_tiempo_paso_ultimo_vehiculo[2]~16_combout\ = (contador_tiempo_paso_ultimo_vehiculo(2) & (!\contador_tiempo_paso_ultimo_vehiculo[1]~15\)) # (!contador_tiempo_paso_ultimo_vehiculo(2) & ((\contador_tiempo_paso_ultimo_vehiculo[1]~15\) # (GND)))
-- \contador_tiempo_paso_ultimo_vehiculo[2]~17\ = CARRY((!\contador_tiempo_paso_ultimo_vehiculo[1]~15\) # (!contador_tiempo_paso_ultimo_vehiculo(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador_tiempo_paso_ultimo_vehiculo(2),
	datad => VCC,
	cin => \contador_tiempo_paso_ultimo_vehiculo[1]~15\,
	combout => \contador_tiempo_paso_ultimo_vehiculo[2]~16_combout\,
	cout => \contador_tiempo_paso_ultimo_vehiculo[2]~17\);

-- Location: FF_X11_Y1_N7
\contador_tiempo_paso_ultimo_vehiculo[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_tiempo_paso_ultimo_vehiculo[2]~16_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \estado_actual~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_tiempo_paso_ultimo_vehiculo(2));

-- Location: LCCOMB_X11_Y1_N8
\contador_tiempo_paso_ultimo_vehiculo[3]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_tiempo_paso_ultimo_vehiculo[3]~18_combout\ = (contador_tiempo_paso_ultimo_vehiculo(3) & (\contador_tiempo_paso_ultimo_vehiculo[2]~17\ $ (GND))) # (!contador_tiempo_paso_ultimo_vehiculo(3) & (!\contador_tiempo_paso_ultimo_vehiculo[2]~17\ & VCC))
-- \contador_tiempo_paso_ultimo_vehiculo[3]~19\ = CARRY((contador_tiempo_paso_ultimo_vehiculo(3) & !\contador_tiempo_paso_ultimo_vehiculo[2]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_tiempo_paso_ultimo_vehiculo(3),
	datad => VCC,
	cin => \contador_tiempo_paso_ultimo_vehiculo[2]~17\,
	combout => \contador_tiempo_paso_ultimo_vehiculo[3]~18_combout\,
	cout => \contador_tiempo_paso_ultimo_vehiculo[3]~19\);

-- Location: FF_X11_Y1_N9
\contador_tiempo_paso_ultimo_vehiculo[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_tiempo_paso_ultimo_vehiculo[3]~18_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \estado_actual~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_tiempo_paso_ultimo_vehiculo(3));

-- Location: LCCOMB_X11_Y1_N10
\contador_tiempo_paso_ultimo_vehiculo[4]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_tiempo_paso_ultimo_vehiculo[4]~20_combout\ = (contador_tiempo_paso_ultimo_vehiculo(4) & (!\contador_tiempo_paso_ultimo_vehiculo[3]~19\)) # (!contador_tiempo_paso_ultimo_vehiculo(4) & ((\contador_tiempo_paso_ultimo_vehiculo[3]~19\) # (GND)))
-- \contador_tiempo_paso_ultimo_vehiculo[4]~21\ = CARRY((!\contador_tiempo_paso_ultimo_vehiculo[3]~19\) # (!contador_tiempo_paso_ultimo_vehiculo(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador_tiempo_paso_ultimo_vehiculo(4),
	datad => VCC,
	cin => \contador_tiempo_paso_ultimo_vehiculo[3]~19\,
	combout => \contador_tiempo_paso_ultimo_vehiculo[4]~20_combout\,
	cout => \contador_tiempo_paso_ultimo_vehiculo[4]~21\);

-- Location: FF_X11_Y1_N11
\contador_tiempo_paso_ultimo_vehiculo[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_tiempo_paso_ultimo_vehiculo[4]~20_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \estado_actual~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_tiempo_paso_ultimo_vehiculo(4));

-- Location: LCCOMB_X11_Y1_N12
\contador_tiempo_paso_ultimo_vehiculo[5]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_tiempo_paso_ultimo_vehiculo[5]~22_combout\ = (contador_tiempo_paso_ultimo_vehiculo(5) & (\contador_tiempo_paso_ultimo_vehiculo[4]~21\ $ (GND))) # (!contador_tiempo_paso_ultimo_vehiculo(5) & (!\contador_tiempo_paso_ultimo_vehiculo[4]~21\ & VCC))
-- \contador_tiempo_paso_ultimo_vehiculo[5]~23\ = CARRY((contador_tiempo_paso_ultimo_vehiculo(5) & !\contador_tiempo_paso_ultimo_vehiculo[4]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador_tiempo_paso_ultimo_vehiculo(5),
	datad => VCC,
	cin => \contador_tiempo_paso_ultimo_vehiculo[4]~21\,
	combout => \contador_tiempo_paso_ultimo_vehiculo[5]~22_combout\,
	cout => \contador_tiempo_paso_ultimo_vehiculo[5]~23\);

-- Location: FF_X11_Y1_N13
\contador_tiempo_paso_ultimo_vehiculo[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_tiempo_paso_ultimo_vehiculo[5]~22_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \estado_actual~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_tiempo_paso_ultimo_vehiculo(5));

-- Location: LCCOMB_X11_Y1_N14
\contador_tiempo_paso_ultimo_vehiculo[6]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_tiempo_paso_ultimo_vehiculo[6]~24_combout\ = (contador_tiempo_paso_ultimo_vehiculo(6) & (!\contador_tiempo_paso_ultimo_vehiculo[5]~23\)) # (!contador_tiempo_paso_ultimo_vehiculo(6) & ((\contador_tiempo_paso_ultimo_vehiculo[5]~23\) # (GND)))
-- \contador_tiempo_paso_ultimo_vehiculo[6]~25\ = CARRY((!\contador_tiempo_paso_ultimo_vehiculo[5]~23\) # (!contador_tiempo_paso_ultimo_vehiculo(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_tiempo_paso_ultimo_vehiculo(6),
	datad => VCC,
	cin => \contador_tiempo_paso_ultimo_vehiculo[5]~23\,
	combout => \contador_tiempo_paso_ultimo_vehiculo[6]~24_combout\,
	cout => \contador_tiempo_paso_ultimo_vehiculo[6]~25\);

-- Location: FF_X11_Y1_N15
\contador_tiempo_paso_ultimo_vehiculo[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_tiempo_paso_ultimo_vehiculo[6]~24_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \estado_actual~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_tiempo_paso_ultimo_vehiculo(6));

-- Location: LCCOMB_X11_Y1_N16
\contador_tiempo_paso_ultimo_vehiculo[7]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_tiempo_paso_ultimo_vehiculo[7]~26_combout\ = (contador_tiempo_paso_ultimo_vehiculo(7) & (\contador_tiempo_paso_ultimo_vehiculo[6]~25\ $ (GND))) # (!contador_tiempo_paso_ultimo_vehiculo(7) & (!\contador_tiempo_paso_ultimo_vehiculo[6]~25\ & VCC))
-- \contador_tiempo_paso_ultimo_vehiculo[7]~27\ = CARRY((contador_tiempo_paso_ultimo_vehiculo(7) & !\contador_tiempo_paso_ultimo_vehiculo[6]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_tiempo_paso_ultimo_vehiculo(7),
	datad => VCC,
	cin => \contador_tiempo_paso_ultimo_vehiculo[6]~25\,
	combout => \contador_tiempo_paso_ultimo_vehiculo[7]~26_combout\,
	cout => \contador_tiempo_paso_ultimo_vehiculo[7]~27\);

-- Location: FF_X11_Y1_N17
\contador_tiempo_paso_ultimo_vehiculo[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_tiempo_paso_ultimo_vehiculo[7]~26_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \estado_actual~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_tiempo_paso_ultimo_vehiculo(7));

-- Location: LCCOMB_X11_Y1_N18
\contador_tiempo_paso_ultimo_vehiculo[8]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_tiempo_paso_ultimo_vehiculo[8]~28_combout\ = (contador_tiempo_paso_ultimo_vehiculo(8) & (!\contador_tiempo_paso_ultimo_vehiculo[7]~27\)) # (!contador_tiempo_paso_ultimo_vehiculo(8) & ((\contador_tiempo_paso_ultimo_vehiculo[7]~27\) # (GND)))
-- \contador_tiempo_paso_ultimo_vehiculo[8]~29\ = CARRY((!\contador_tiempo_paso_ultimo_vehiculo[7]~27\) # (!contador_tiempo_paso_ultimo_vehiculo(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_tiempo_paso_ultimo_vehiculo(8),
	datad => VCC,
	cin => \contador_tiempo_paso_ultimo_vehiculo[7]~27\,
	combout => \contador_tiempo_paso_ultimo_vehiculo[8]~28_combout\,
	cout => \contador_tiempo_paso_ultimo_vehiculo[8]~29\);

-- Location: FF_X11_Y1_N19
\contador_tiempo_paso_ultimo_vehiculo[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_tiempo_paso_ultimo_vehiculo[8]~28_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \estado_actual~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_tiempo_paso_ultimo_vehiculo(8));

-- Location: LCCOMB_X11_Y1_N20
\contador_tiempo_paso_ultimo_vehiculo[9]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_tiempo_paso_ultimo_vehiculo[9]~30_combout\ = (contador_tiempo_paso_ultimo_vehiculo(9) & (\contador_tiempo_paso_ultimo_vehiculo[8]~29\ $ (GND))) # (!contador_tiempo_paso_ultimo_vehiculo(9) & (!\contador_tiempo_paso_ultimo_vehiculo[8]~29\ & VCC))
-- \contador_tiempo_paso_ultimo_vehiculo[9]~31\ = CARRY((contador_tiempo_paso_ultimo_vehiculo(9) & !\contador_tiempo_paso_ultimo_vehiculo[8]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_tiempo_paso_ultimo_vehiculo(9),
	datad => VCC,
	cin => \contador_tiempo_paso_ultimo_vehiculo[8]~29\,
	combout => \contador_tiempo_paso_ultimo_vehiculo[9]~30_combout\,
	cout => \contador_tiempo_paso_ultimo_vehiculo[9]~31\);

-- Location: FF_X11_Y1_N21
\contador_tiempo_paso_ultimo_vehiculo[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_tiempo_paso_ultimo_vehiculo[9]~30_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \estado_actual~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_tiempo_paso_ultimo_vehiculo(9));

-- Location: LCCOMB_X11_Y1_N22
\contador_tiempo_paso_ultimo_vehiculo[10]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_tiempo_paso_ultimo_vehiculo[10]~32_combout\ = (contador_tiempo_paso_ultimo_vehiculo(10) & (!\contador_tiempo_paso_ultimo_vehiculo[9]~31\)) # (!contador_tiempo_paso_ultimo_vehiculo(10) & ((\contador_tiempo_paso_ultimo_vehiculo[9]~31\) # (GND)))
-- \contador_tiempo_paso_ultimo_vehiculo[10]~33\ = CARRY((!\contador_tiempo_paso_ultimo_vehiculo[9]~31\) # (!contador_tiempo_paso_ultimo_vehiculo(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador_tiempo_paso_ultimo_vehiculo(10),
	datad => VCC,
	cin => \contador_tiempo_paso_ultimo_vehiculo[9]~31\,
	combout => \contador_tiempo_paso_ultimo_vehiculo[10]~32_combout\,
	cout => \contador_tiempo_paso_ultimo_vehiculo[10]~33\);

-- Location: FF_X11_Y1_N23
\contador_tiempo_paso_ultimo_vehiculo[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_tiempo_paso_ultimo_vehiculo[10]~32_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \estado_actual~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_tiempo_paso_ultimo_vehiculo(10));

-- Location: LCCOMB_X11_Y1_N24
\contador_tiempo_paso_ultimo_vehiculo[11]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_tiempo_paso_ultimo_vehiculo[11]~34_combout\ = (contador_tiempo_paso_ultimo_vehiculo(11) & (\contador_tiempo_paso_ultimo_vehiculo[10]~33\ $ (GND))) # (!contador_tiempo_paso_ultimo_vehiculo(11) & (!\contador_tiempo_paso_ultimo_vehiculo[10]~33\ & 
-- VCC))
-- \contador_tiempo_paso_ultimo_vehiculo[11]~35\ = CARRY((contador_tiempo_paso_ultimo_vehiculo(11) & !\contador_tiempo_paso_ultimo_vehiculo[10]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_tiempo_paso_ultimo_vehiculo(11),
	datad => VCC,
	cin => \contador_tiempo_paso_ultimo_vehiculo[10]~33\,
	combout => \contador_tiempo_paso_ultimo_vehiculo[11]~34_combout\,
	cout => \contador_tiempo_paso_ultimo_vehiculo[11]~35\);

-- Location: FF_X11_Y1_N25
\contador_tiempo_paso_ultimo_vehiculo[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_tiempo_paso_ultimo_vehiculo[11]~34_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \estado_actual~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_tiempo_paso_ultimo_vehiculo(11));

-- Location: LCCOMB_X11_Y1_N26
\contador_tiempo_paso_ultimo_vehiculo[12]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_tiempo_paso_ultimo_vehiculo[12]~36_combout\ = (contador_tiempo_paso_ultimo_vehiculo(12) & (!\contador_tiempo_paso_ultimo_vehiculo[11]~35\)) # (!contador_tiempo_paso_ultimo_vehiculo(12) & ((\contador_tiempo_paso_ultimo_vehiculo[11]~35\) # (GND)))
-- \contador_tiempo_paso_ultimo_vehiculo[12]~37\ = CARRY((!\contador_tiempo_paso_ultimo_vehiculo[11]~35\) # (!contador_tiempo_paso_ultimo_vehiculo(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador_tiempo_paso_ultimo_vehiculo(12),
	datad => VCC,
	cin => \contador_tiempo_paso_ultimo_vehiculo[11]~35\,
	combout => \contador_tiempo_paso_ultimo_vehiculo[12]~36_combout\,
	cout => \contador_tiempo_paso_ultimo_vehiculo[12]~37\);

-- Location: FF_X11_Y1_N27
\contador_tiempo_paso_ultimo_vehiculo[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_tiempo_paso_ultimo_vehiculo[12]~36_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \estado_actual~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_tiempo_paso_ultimo_vehiculo(12));

-- Location: LCCOMB_X11_Y1_N28
\contador_tiempo_paso_ultimo_vehiculo[13]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_tiempo_paso_ultimo_vehiculo[13]~38_combout\ = \contador_tiempo_paso_ultimo_vehiculo[12]~37\ $ (!contador_tiempo_paso_ultimo_vehiculo(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => contador_tiempo_paso_ultimo_vehiculo(13),
	cin => \contador_tiempo_paso_ultimo_vehiculo[12]~37\,
	combout => \contador_tiempo_paso_ultimo_vehiculo[13]~38_combout\);

-- Location: FF_X11_Y1_N29
\contador_tiempo_paso_ultimo_vehiculo[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_tiempo_paso_ultimo_vehiculo[13]~38_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \estado_actual~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_tiempo_paso_ultimo_vehiculo(13));

ww_total_vehiculos(0) <= \total_vehiculos[0]~output_o\;

ww_total_vehiculos(1) <= \total_vehiculos[1]~output_o\;

ww_total_vehiculos(2) <= \total_vehiculos[2]~output_o\;

ww_total_vehiculos(3) <= \total_vehiculos[3]~output_o\;

ww_total_vehiculos(4) <= \total_vehiculos[4]~output_o\;

ww_total_vehiculos(5) <= \total_vehiculos[5]~output_o\;

ww_total_vehiculos(6) <= \total_vehiculos[6]~output_o\;

ww_total_vehiculos(7) <= \total_vehiculos[7]~output_o\;

ww_total_vehiculos(8) <= \total_vehiculos[8]~output_o\;

ww_total_vehiculos(9) <= \total_vehiculos[9]~output_o\;

ww_total_vehiculos(10) <= \total_vehiculos[10]~output_o\;

ww_total_vehiculos(11) <= \total_vehiculos[11]~output_o\;

ww_total_vehiculos(12) <= \total_vehiculos[12]~output_o\;

ww_total_vehiculos(13) <= \total_vehiculos[13]~output_o\;

ww_tiempo_paso_ultimo_vehiculo(0) <= \tiempo_paso_ultimo_vehiculo[0]~output_o\;

ww_tiempo_paso_ultimo_vehiculo(1) <= \tiempo_paso_ultimo_vehiculo[1]~output_o\;

ww_tiempo_paso_ultimo_vehiculo(2) <= \tiempo_paso_ultimo_vehiculo[2]~output_o\;

ww_tiempo_paso_ultimo_vehiculo(3) <= \tiempo_paso_ultimo_vehiculo[3]~output_o\;

ww_tiempo_paso_ultimo_vehiculo(4) <= \tiempo_paso_ultimo_vehiculo[4]~output_o\;

ww_tiempo_paso_ultimo_vehiculo(5) <= \tiempo_paso_ultimo_vehiculo[5]~output_o\;

ww_tiempo_paso_ultimo_vehiculo(6) <= \tiempo_paso_ultimo_vehiculo[6]~output_o\;

ww_tiempo_paso_ultimo_vehiculo(7) <= \tiempo_paso_ultimo_vehiculo[7]~output_o\;

ww_tiempo_paso_ultimo_vehiculo(8) <= \tiempo_paso_ultimo_vehiculo[8]~output_o\;

ww_tiempo_paso_ultimo_vehiculo(9) <= \tiempo_paso_ultimo_vehiculo[9]~output_o\;

ww_tiempo_paso_ultimo_vehiculo(10) <= \tiempo_paso_ultimo_vehiculo[10]~output_o\;

ww_tiempo_paso_ultimo_vehiculo(11) <= \tiempo_paso_ultimo_vehiculo[11]~output_o\;

ww_tiempo_paso_ultimo_vehiculo(12) <= \tiempo_paso_ultimo_vehiculo[12]~output_o\;

ww_tiempo_paso_ultimo_vehiculo(13) <= \tiempo_paso_ultimo_vehiculo[13]~output_o\;
END structure;


