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

-- DATE "05/15/2024 16:50:10"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
LIBRARY STD;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE STD.STANDARD.ALL;

ENTITY 	Maq_estados IS
    PORT (
	clk : IN std_logic;
	front_sensor : IN std_logic;
	back_sensor : IN std_logic;
	cobrar : IN std_logic;
	reset : IN std_logic;
	si : IN std_logic;
	cat : IN std_logic_vector(1 DOWNTO 0);
	id : IN std_logic_vector(2 DOWNTO 0);
	tala_ini : OUT std_logic;
	tala_fin : OUT std_logic;
	alar_son : OUT std_logic;
	led : OUT std_logic;
	sema_verde1 : OUT std_logic;
	sema_rojo1 : OUT std_logic;
	sema_verde2 : OUT std_logic;
	sema_rojo2 : OUT std_logic;
	cont_vehiculo : OUT std_logic;
	contador : OUT STD.STANDARD.integer range 0 TO 1
	);
END Maq_estados;

-- Design Ports Information
-- id[0]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- id[1]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- id[2]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tala_ini	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tala_fin	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alar_son	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sema_verde1	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sema_rojo1	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sema_verde2	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sema_rojo2	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cont_vehiculo	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- contador	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- front_sensor	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- back_sensor	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cobrar	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- si	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cat[0]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cat[1]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Maq_estados IS
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
SIGNAL ww_front_sensor : std_logic;
SIGNAL ww_back_sensor : std_logic;
SIGNAL ww_cobrar : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_si : std_logic;
SIGNAL ww_cat : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_id : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_tala_ini : std_logic;
SIGNAL ww_tala_fin : std_logic;
SIGNAL ww_alar_son : std_logic;
SIGNAL ww_led : std_logic;
SIGNAL ww_sema_verde1 : std_logic;
SIGNAL ww_sema_rojo1 : std_logic;
SIGNAL ww_sema_verde2 : std_logic;
SIGNAL ww_sema_rojo2 : std_logic;
SIGNAL ww_cont_vehiculo : std_logic;
SIGNAL ww_contador : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \id[0]~input_o\ : std_logic;
SIGNAL \id[1]~input_o\ : std_logic;
SIGNAL \id[2]~input_o\ : std_logic;
SIGNAL \tala_ini~output_o\ : std_logic;
SIGNAL \tala_fin~output_o\ : std_logic;
SIGNAL \alar_son~output_o\ : std_logic;
SIGNAL \led~output_o\ : std_logic;
SIGNAL \sema_verde1~output_o\ : std_logic;
SIGNAL \sema_rojo1~output_o\ : std_logic;
SIGNAL \sema_verde2~output_o\ : std_logic;
SIGNAL \sema_rojo2~output_o\ : std_logic;
SIGNAL \cont_vehiculo~output_o\ : std_logic;
SIGNAL \contador~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \back_sensor~input_o\ : std_logic;
SIGNAL \si~input_o\ : std_logic;
SIGNAL \cat[1]~input_o\ : std_logic;
SIGNAL \cat[0]~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \cobrar~input_o\ : std_logic;
SIGNAL \front_sensor~input_o\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \current_state.identificador~q\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \current_state.incorrecto~q\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \current_state.intento1~q\ : std_logic;
SIGNAL \Selector2~3_combout\ : std_logic;
SIGNAL \Selector2~2_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \current_state.intento2~q\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \Selector2~4_combout\ : std_logic;
SIGNAL \current_state.cobro~q\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Selector3~1_combout\ : std_logic;
SIGNAL \current_state.salida~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \current_state.inicio~q\ : std_logic;
SIGNAL \WideOr2~combout\ : std_logic;
SIGNAL \WideOr1~0_combout\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_current_state.salida~q\ : std_logic;
SIGNAL \ALT_INV_current_state.inicio~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_front_sensor <= front_sensor;
ww_back_sensor <= back_sensor;
ww_cobrar <= cobrar;
ww_reset <= reset;
ww_si <= si;
ww_cat <= cat;
ww_id <= id;
tala_ini <= ww_tala_ini;
tala_fin <= ww_tala_fin;
alar_son <= ww_alar_son;
led <= ww_led;
sema_verde1 <= ww_sema_verde1;
sema_rojo1 <= ww_sema_rojo1;
sema_verde2 <= ww_sema_verde2;
sema_rojo2 <= ww_sema_rojo2;
cont_vehiculo <= ww_cont_vehiculo;
contador <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(UNSIGNED(ww_contador));
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_current_state.salida~q\ <= NOT \current_state.salida~q\;
\ALT_INV_current_state.inicio~q\ <= NOT \current_state.inicio~q\;

-- Location: IOOBUF_X28_Y0_N23
\tala_ini~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_current_state.inicio~q\,
	devoe => ww_devoe,
	o => \tala_ini~output_o\);

-- Location: IOOBUF_X28_Y0_N16
\tala_fin~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \current_state.salida~q\,
	devoe => ww_devoe,
	o => \tala_fin~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\alar_son~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr2~combout\,
	devoe => ww_devoe,
	o => \alar_son~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\led~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr1~0_combout\,
	devoe => ww_devoe,
	o => \led~output_o\);

-- Location: IOOBUF_X26_Y0_N16
\sema_verde1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_current_state.inicio~q\,
	devoe => ww_devoe,
	o => \sema_verde1~output_o\);

-- Location: IOOBUF_X26_Y0_N9
\sema_rojo1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \current_state.inicio~q\,
	devoe => ww_devoe,
	o => \sema_rojo1~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\sema_verde2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \current_state.salida~q\,
	devoe => ww_devoe,
	o => \sema_verde2~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\sema_rojo2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_current_state.salida~q\,
	devoe => ww_devoe,
	o => \sema_rojo2~output_o\);

-- Location: IOOBUF_X0_Y26_N23
\cont_vehiculo~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \current_state.salida~q\,
	devoe => ww_devoe,
	o => \cont_vehiculo~output_o\);

-- Location: IOOBUF_X0_Y7_N16
\contador~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \contador~output_o\);

-- Location: IOIBUF_X41_Y15_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G9
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

-- Location: IOIBUF_X23_Y0_N22
\back_sensor~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_back_sensor,
	o => \back_sensor~input_o\);

-- Location: IOIBUF_X0_Y23_N1
\si~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_si,
	o => \si~input_o\);

-- Location: IOIBUF_X0_Y23_N8
\cat[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cat(1),
	o => \cat[1]~input_o\);

-- Location: IOIBUF_X0_Y25_N22
\cat[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cat(0),
	o => \cat[0]~input_o\);

-- Location: LCCOMB_X1_Y23_N16
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\cat[1]~input_o\ & \cat[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cat[1]~input_o\,
	datac => \cat[0]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: IOIBUF_X0_Y27_N22
\cobrar~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cobrar,
	o => \cobrar~input_o\);

-- Location: IOIBUF_X23_Y0_N29
\front_sensor~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_front_sensor,
	o => \front_sensor~input_o\);

-- Location: LCCOMB_X1_Y23_N6
\Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (!\front_sensor~input_o\ & !\current_state.inicio~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \front_sensor~input_o\,
	datad => \current_state.inicio~q\,
	combout => \Selector1~0_combout\);

-- Location: LCCOMB_X1_Y23_N20
\Selector1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = (\Selector1~0_combout\) # ((\si~input_o\ & (!\Equal0~0_combout\ & \current_state.identificador~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \si~input_o\,
	datab => \Equal0~0_combout\,
	datac => \current_state.identificador~q\,
	datad => \Selector1~0_combout\,
	combout => \Selector1~1_combout\);

-- Location: IOIBUF_X0_Y24_N1
\reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X1_Y23_N21
\current_state.identificador\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector1~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.identificador~q\);

-- Location: LCCOMB_X1_Y23_N26
\Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\si~input_o\ & (\Equal0~0_combout\ & ((\current_state.identificador~q\)))) # (!\si~input_o\ & ((\current_state.incorrecto~q\) # ((\Equal0~0_combout\ & \current_state.identificador~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \si~input_o\,
	datab => \Equal0~0_combout\,
	datac => \current_state.incorrecto~q\,
	datad => \current_state.identificador~q\,
	combout => \Selector4~0_combout\);

-- Location: FF_X1_Y23_N27
\current_state.incorrecto\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector4~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.incorrecto~q\);

-- Location: LCCOMB_X1_Y23_N4
\Selector5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\si~input_o\ & (\Equal0~0_combout\ & ((\current_state.incorrecto~q\) # (\current_state.intento1~q\)))) # (!\si~input_o\ & (((\current_state.intento1~q\ & !\Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.incorrecto~q\,
	datab => \si~input_o\,
	datac => \current_state.intento1~q\,
	datad => \Equal0~0_combout\,
	combout => \Selector5~0_combout\);

-- Location: FF_X1_Y23_N5
\current_state.intento1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector5~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.intento1~q\);

-- Location: LCCOMB_X1_Y23_N30
\Selector2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~3_combout\ = ((\current_state.intento1~q\ & ((\si~input_o\) # (!\Equal0~0_combout\)))) # (!\cobrar~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cobrar~input_o\,
	datab => \si~input_o\,
	datac => \current_state.intento1~q\,
	datad => \Equal0~0_combout\,
	combout => \Selector2~3_combout\);

-- Location: LCCOMB_X1_Y23_N0
\Selector2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~2_combout\ = (!\Equal0~0_combout\ & ((\si~input_o\ & (\current_state.intento1~q\)) # (!\si~input_o\ & ((\current_state.identificador~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \si~input_o\,
	datab => \Equal0~0_combout\,
	datac => \current_state.intento1~q\,
	datad => \current_state.identificador~q\,
	combout => \Selector2~2_combout\);

-- Location: LCCOMB_X1_Y23_N28
\Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (!\si~input_o\ & ((\current_state.intento2~q\) # ((\current_state.intento1~q\ & \Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \si~input_o\,
	datab => \current_state.intento1~q\,
	datac => \current_state.intento2~q\,
	datad => \Equal0~0_combout\,
	combout => \Selector6~0_combout\);

-- Location: FF_X1_Y23_N29
\current_state.intento2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector6~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.intento2~q\);

-- Location: LCCOMB_X1_Y23_N12
\Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\si~input_o\ & (((!\cat[0]~input_o\)) # (!\cat[1]~input_o\))) # (!\si~input_o\ & (((\current_state.cobro~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cat[1]~input_o\,
	datab => \cat[0]~input_o\,
	datac => \si~input_o\,
	datad => \current_state.cobro~q\,
	combout => \Selector2~0_combout\);

-- Location: LCCOMB_X1_Y23_N2
\Selector2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = (\Selector2~0_combout\ & ((\current_state.intento2~q\) # (\current_state.incorrecto~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.intento2~q\,
	datac => \current_state.incorrecto~q\,
	datad => \Selector2~0_combout\,
	combout => \Selector2~1_combout\);

-- Location: LCCOMB_X1_Y23_N10
\Selector2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~4_combout\ = (\Selector2~2_combout\) # ((\Selector2~1_combout\) # ((\Selector2~3_combout\ & \current_state.cobro~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~3_combout\,
	datab => \Selector2~2_combout\,
	datac => \current_state.cobro~q\,
	datad => \Selector2~1_combout\,
	combout => \Selector2~4_combout\);

-- Location: FF_X1_Y23_N11
\current_state.cobro\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector2~4_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.cobro~q\);

-- Location: LCCOMB_X1_Y23_N22
\Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\back_sensor~input_o\ & ((\current_state.salida~q\) # ((\cobrar~input_o\ & \current_state.cobro~q\)))) # (!\back_sensor~input_o\ & (\cobrar~input_o\ & ((\current_state.cobro~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \back_sensor~input_o\,
	datab => \cobrar~input_o\,
	datac => \current_state.salida~q\,
	datad => \current_state.cobro~q\,
	combout => \Selector3~0_combout\);

-- Location: LCCOMB_X1_Y23_N14
\Selector3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector3~1_combout\ = (\Selector3~0_combout\) # ((\si~input_o\ & (\Equal0~0_combout\ & \current_state.intento2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \si~input_o\,
	datab => \Equal0~0_combout\,
	datac => \Selector3~0_combout\,
	datad => \current_state.intento2~q\,
	combout => \Selector3~1_combout\);

-- Location: FF_X1_Y23_N15
\current_state.salida\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector3~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.salida~q\);

-- Location: LCCOMB_X1_Y23_N24
\Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\back_sensor~input_o\ & (((\current_state.inicio~q\) # (!\front_sensor~input_o\)))) # (!\back_sensor~input_o\ & (!\current_state.salida~q\ & ((\current_state.inicio~q\) # (!\front_sensor~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \back_sensor~input_o\,
	datab => \current_state.salida~q\,
	datac => \current_state.inicio~q\,
	datad => \front_sensor~input_o\,
	combout => \Selector0~0_combout\);

-- Location: FF_X1_Y23_N25
\current_state.inicio\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector0~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.inicio~q\);

-- Location: LCCOMB_X1_Y23_N18
WideOr2 : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr2~combout\ = (\current_state.incorrecto~q\) # ((\current_state.intento2~q\) # (\current_state.intento1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.incorrecto~q\,
	datab => \current_state.intento2~q\,
	datac => \current_state.intento1~q\,
	combout => \WideOr2~combout\);

-- Location: LCCOMB_X1_Y23_N8
\WideOr1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr1~0_combout\ = (\current_state.cobro~q\) # ((\current_state.incorrecto~q\) # (\current_state.identificador~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.cobro~q\,
	datac => \current_state.incorrecto~q\,
	datad => \current_state.identificador~q\,
	combout => \WideOr1~0_combout\);

-- Location: IOIBUF_X0_Y25_N15
\id[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_id(0),
	o => \id[0]~input_o\);

-- Location: IOIBUF_X0_Y26_N8
\id[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_id(1),
	o => \id[1]~input_o\);

-- Location: IOIBUF_X0_Y26_N1
\id[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_id(2),
	o => \id[2]~input_o\);

ww_tala_ini <= \tala_ini~output_o\;

ww_tala_fin <= \tala_fin~output_o\;

ww_alar_son <= \alar_son~output_o\;

ww_led <= \led~output_o\;

ww_sema_verde1 <= \sema_verde1~output_o\;

ww_sema_rojo1 <= \sema_rojo1~output_o\;

ww_sema_verde2 <= \sema_verde2~output_o\;

ww_sema_rojo2 <= \sema_rojo2~output_o\;

ww_cont_vehiculo <= \cont_vehiculo~output_o\;

ww_contador <= \contador~output_o\;
END structure;


