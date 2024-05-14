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

-- DATE "05/13/2024 16:39:28"

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

ENTITY 	ControlTalanquera IS
    PORT (
	clk : IN std_logic;
	vehiculo_det : IN std_logic;
	identificacion_valida : IN std_logic;
	vehiculo_ingresado : IN std_logic;
	tiempo_pasado : IN std_logic;
	talanquera_entrada : BUFFER std_logic;
	talanquera_salida : BUFFER std_logic;
	semaforo_entrada_verde : BUFFER std_logic;
	semaforo_entrada_rojo : BUFFER std_logic;
	semaforo_salida_verde : BUFFER std_logic;
	semaforo_salida_rojo : BUFFER std_logic;
	led_entrada_verde : BUFFER std_logic;
	led_entrada_rojo : BUFFER std_logic;
	led_salida_verde : BUFFER std_logic;
	led_salida_rojo : BUFFER std_logic
	);
END ControlTalanquera;

-- Design Ports Information
-- talanquera_entrada	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- talanquera_salida	=>  Location: PIN_U19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- semaforo_entrada_verde	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- semaforo_entrada_rojo	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- semaforo_salida_verde	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- semaforo_salida_rojo	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_entrada_verde	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_entrada_rojo	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_salida_verde	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_salida_rojo	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- identificacion_valida	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vehiculo_ingresado	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tiempo_pasado	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vehiculo_det	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ControlTalanquera IS
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
SIGNAL ww_vehiculo_det : std_logic;
SIGNAL ww_identificacion_valida : std_logic;
SIGNAL ww_vehiculo_ingresado : std_logic;
SIGNAL ww_tiempo_pasado : std_logic;
SIGNAL ww_talanquera_entrada : std_logic;
SIGNAL ww_talanquera_salida : std_logic;
SIGNAL ww_semaforo_entrada_verde : std_logic;
SIGNAL ww_semaforo_entrada_rojo : std_logic;
SIGNAL ww_semaforo_salida_verde : std_logic;
SIGNAL ww_semaforo_salida_rojo : std_logic;
SIGNAL ww_led_entrada_verde : std_logic;
SIGNAL ww_led_entrada_rojo : std_logic;
SIGNAL ww_led_salida_verde : std_logic;
SIGNAL ww_led_salida_rojo : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \talanquera_entrada~output_o\ : std_logic;
SIGNAL \talanquera_salida~output_o\ : std_logic;
SIGNAL \semaforo_entrada_verde~output_o\ : std_logic;
SIGNAL \semaforo_entrada_rojo~output_o\ : std_logic;
SIGNAL \semaforo_salida_verde~output_o\ : std_logic;
SIGNAL \semaforo_salida_rojo~output_o\ : std_logic;
SIGNAL \led_entrada_verde~output_o\ : std_logic;
SIGNAL \led_entrada_rojo~output_o\ : std_logic;
SIGNAL \led_salida_verde~output_o\ : std_logic;
SIGNAL \led_salida_rojo~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \identificacion_valida~input_o\ : std_logic;
SIGNAL \vehiculo_ingresado~input_o\ : std_logic;
SIGNAL \vehiculo_det~input_o\ : std_logic;
SIGNAL \tiempo_pasado~input_o\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \estado_siguiente.esperando_paso~q\ : std_logic;
SIGNAL \estado_actual.esperando_paso~feeder_combout\ : std_logic;
SIGNAL \estado_actual.esperando_paso~q\ : std_logic;
SIGNAL \estado_siguiente~9_combout\ : std_logic;
SIGNAL \estado_siguiente.cerrando_barrera_entrada~q\ : std_logic;
SIGNAL \estado_actual.cerrando_barrera_entrada~feeder_combout\ : std_logic;
SIGNAL \estado_actual.cerrando_barrera_entrada~q\ : std_logic;
SIGNAL \estado_siguiente.abriendo_barrera_salida~feeder_combout\ : std_logic;
SIGNAL \estado_siguiente.abriendo_barrera_salida~q\ : std_logic;
SIGNAL \estado_actual.abriendo_barrera_salida~feeder_combout\ : std_logic;
SIGNAL \estado_actual.abriendo_barrera_salida~q\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \estado_siguiente.esperando_salida~q\ : std_logic;
SIGNAL \estado_actual.esperando_salida~feeder_combout\ : std_logic;
SIGNAL \estado_actual.esperando_salida~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \estado_siguiente.esperando_vehiculo~q\ : std_logic;
SIGNAL \estado_actual.esperando_vehiculo~feeder_combout\ : std_logic;
SIGNAL \estado_actual.esperando_vehiculo~q\ : std_logic;
SIGNAL \estado_siguiente~10_combout\ : std_logic;
SIGNAL \estado_siguiente.validando_identificacion~q\ : std_logic;
SIGNAL \estado_actual.validando_identificacion~feeder_combout\ : std_logic;
SIGNAL \estado_actual.validando_identificacion~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \estado_siguiente.abriendo_barrera_entrada~q\ : std_logic;
SIGNAL \estado_actual.abriendo_barrera_entrada~feeder_combout\ : std_logic;
SIGNAL \estado_actual.abriendo_barrera_entrada~q\ : std_logic;
SIGNAL \WideNor0~combout\ : std_logic;
SIGNAL \talanquera_entrada~reg0_q\ : std_logic;
SIGNAL \semaforo_entrada_verde~reg0_q\ : std_logic;
SIGNAL \semaforo_entrada_rojo~0_combout\ : std_logic;
SIGNAL \semaforo_entrada_rojo~reg0_q\ : std_logic;
SIGNAL \semaforo_salida_verde~reg0feeder_combout\ : std_logic;
SIGNAL \semaforo_salida_verde~reg0_q\ : std_logic;
SIGNAL \semaforo_salida_rojo~0_combout\ : std_logic;
SIGNAL \semaforo_salida_rojo~reg0_q\ : std_logic;
SIGNAL \led_entrada_verde~reg0feeder_combout\ : std_logic;
SIGNAL \led_entrada_verde~reg0_q\ : std_logic;
SIGNAL \led_entrada_rojo~0_combout\ : std_logic;
SIGNAL \led_entrada_rojo~reg0_q\ : std_logic;
SIGNAL \led_salida_verde~reg0feeder_combout\ : std_logic;
SIGNAL \led_salida_verde~reg0_q\ : std_logic;
SIGNAL \led_salida_rojo~0_combout\ : std_logic;
SIGNAL \led_salida_rojo~reg0_q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_vehiculo_det <= vehiculo_det;
ww_identificacion_valida <= identificacion_valida;
ww_vehiculo_ingresado <= vehiculo_ingresado;
ww_tiempo_pasado <= tiempo_pasado;
talanquera_entrada <= ww_talanquera_entrada;
talanquera_salida <= ww_talanquera_salida;
semaforo_entrada_verde <= ww_semaforo_entrada_verde;
semaforo_entrada_rojo <= ww_semaforo_entrada_rojo;
semaforo_salida_verde <= ww_semaforo_salida_verde;
semaforo_salida_rojo <= ww_semaforo_salida_rojo;
led_entrada_verde <= ww_led_entrada_verde;
led_entrada_rojo <= ww_led_entrada_rojo;
led_salida_verde <= ww_led_salida_verde;
led_salida_rojo <= ww_led_salida_rojo;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: IOOBUF_X41_Y24_N23
\talanquera_entrada~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \talanquera_entrada~reg0_q\,
	devoe => ww_devoe,
	o => \talanquera_entrada~output_o\);

-- Location: IOOBUF_X41_Y5_N23
\talanquera_salida~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \talanquera_salida~output_o\);

-- Location: IOOBUF_X41_Y26_N16
\semaforo_entrada_verde~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \semaforo_entrada_verde~reg0_q\,
	devoe => ww_devoe,
	o => \semaforo_entrada_verde~output_o\);

-- Location: IOOBUF_X41_Y25_N2
\semaforo_entrada_rojo~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \semaforo_entrada_rojo~reg0_q\,
	devoe => ww_devoe,
	o => \semaforo_entrada_rojo~output_o\);

-- Location: IOOBUF_X39_Y29_N30
\semaforo_salida_verde~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \semaforo_salida_verde~reg0_q\,
	devoe => ww_devoe,
	o => \semaforo_salida_verde~output_o\);

-- Location: IOOBUF_X39_Y29_N16
\semaforo_salida_rojo~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \semaforo_salida_rojo~reg0_q\,
	devoe => ww_devoe,
	o => \semaforo_salida_rojo~output_o\);

-- Location: IOOBUF_X41_Y25_N16
\led_entrada_verde~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led_entrada_verde~reg0_q\,
	devoe => ww_devoe,
	o => \led_entrada_verde~output_o\);

-- Location: IOOBUF_X41_Y26_N23
\led_entrada_rojo~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led_entrada_rojo~reg0_q\,
	devoe => ww_devoe,
	o => \led_entrada_rojo~output_o\);

-- Location: IOOBUF_X39_Y29_N23
\led_salida_verde~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led_salida_verde~reg0_q\,
	devoe => ww_devoe,
	o => \led_salida_verde~output_o\);

-- Location: IOOBUF_X37_Y29_N16
\led_salida_rojo~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led_salida_rojo~reg0_q\,
	devoe => ww_devoe,
	o => \led_salida_rojo~output_o\);

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

-- Location: IOIBUF_X41_Y25_N22
\identificacion_valida~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_identificacion_valida,
	o => \identificacion_valida~input_o\);

-- Location: IOIBUF_X41_Y24_N1
\vehiculo_ingresado~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vehiculo_ingresado,
	o => \vehiculo_ingresado~input_o\);

-- Location: IOIBUF_X41_Y25_N8
\vehiculo_det~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vehiculo_det,
	o => \vehiculo_det~input_o\);

-- Location: IOIBUF_X41_Y24_N8
\tiempo_pasado~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tiempo_pasado,
	o => \tiempo_pasado~input_o\);

-- Location: LCCOMB_X40_Y25_N12
\Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\tiempo_pasado~input_o\ & (\vehiculo_ingresado~input_o\ & (\estado_actual.abriendo_barrera_entrada~q\))) # (!\tiempo_pasado~input_o\ & ((\estado_actual.esperando_paso~q\) # ((\vehiculo_ingresado~input_o\ & 
-- \estado_actual.abriendo_barrera_entrada~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tiempo_pasado~input_o\,
	datab => \vehiculo_ingresado~input_o\,
	datac => \estado_actual.abriendo_barrera_entrada~q\,
	datad => \estado_actual.esperando_paso~q\,
	combout => \Selector2~0_combout\);

-- Location: FF_X40_Y25_N13
\estado_siguiente.esperando_paso\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_siguiente.esperando_paso~q\);

-- Location: LCCOMB_X40_Y25_N0
\estado_actual.esperando_paso~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \estado_actual.esperando_paso~feeder_combout\ = \estado_siguiente.esperando_paso~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \estado_siguiente.esperando_paso~q\,
	combout => \estado_actual.esperando_paso~feeder_combout\);

-- Location: FF_X40_Y25_N1
\estado_actual.esperando_paso\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estado_actual.esperando_paso~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_actual.esperando_paso~q\);

-- Location: LCCOMB_X40_Y25_N24
\estado_siguiente~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \estado_siguiente~9_combout\ = (\tiempo_pasado~input_o\ & \estado_actual.esperando_paso~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tiempo_pasado~input_o\,
	datad => \estado_actual.esperando_paso~q\,
	combout => \estado_siguiente~9_combout\);

-- Location: FF_X40_Y25_N25
\estado_siguiente.cerrando_barrera_entrada\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estado_siguiente~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_siguiente.cerrando_barrera_entrada~q\);

-- Location: LCCOMB_X40_Y25_N28
\estado_actual.cerrando_barrera_entrada~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \estado_actual.cerrando_barrera_entrada~feeder_combout\ = \estado_siguiente.cerrando_barrera_entrada~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \estado_siguiente.cerrando_barrera_entrada~q\,
	combout => \estado_actual.cerrando_barrera_entrada~feeder_combout\);

-- Location: FF_X40_Y25_N29
\estado_actual.cerrando_barrera_entrada\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estado_actual.cerrando_barrera_entrada~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_actual.cerrando_barrera_entrada~q\);

-- Location: LCCOMB_X39_Y25_N10
\estado_siguiente.abriendo_barrera_salida~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \estado_siguiente.abriendo_barrera_salida~feeder_combout\ = \estado_actual.cerrando_barrera_entrada~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \estado_actual.cerrando_barrera_entrada~q\,
	combout => \estado_siguiente.abriendo_barrera_salida~feeder_combout\);

-- Location: FF_X39_Y25_N11
\estado_siguiente.abriendo_barrera_salida\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estado_siguiente.abriendo_barrera_salida~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_siguiente.abriendo_barrera_salida~q\);

-- Location: LCCOMB_X39_Y25_N20
\estado_actual.abriendo_barrera_salida~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \estado_actual.abriendo_barrera_salida~feeder_combout\ = \estado_siguiente.abriendo_barrera_salida~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \estado_siguiente.abriendo_barrera_salida~q\,
	combout => \estado_actual.abriendo_barrera_salida~feeder_combout\);

-- Location: FF_X39_Y25_N21
\estado_actual.abriendo_barrera_salida\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estado_actual.abriendo_barrera_salida~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_actual.abriendo_barrera_salida~q\);

-- Location: LCCOMB_X39_Y25_N18
\Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\estado_actual.abriendo_barrera_salida~q\) # ((\estado_actual.esperando_salida~q\ & \vehiculo_det~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado_actual.esperando_salida~q\,
	datac => \vehiculo_det~input_o\,
	datad => \estado_actual.abriendo_barrera_salida~q\,
	combout => \Selector3~0_combout\);

-- Location: FF_X39_Y25_N19
\estado_siguiente.esperando_salida\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_siguiente.esperando_salida~q\);

-- Location: LCCOMB_X39_Y25_N4
\estado_actual.esperando_salida~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \estado_actual.esperando_salida~feeder_combout\ = \estado_siguiente.esperando_salida~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \estado_siguiente.esperando_salida~q\,
	combout => \estado_actual.esperando_salida~feeder_combout\);

-- Location: FF_X39_Y25_N5
\estado_actual.esperando_salida\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estado_actual.esperando_salida~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_actual.esperando_salida~q\);

-- Location: LCCOMB_X40_Y25_N6
\Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (!\identificacion_valida~input_o\ & \estado_actual.validando_identificacion~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \identificacion_valida~input_o\,
	datad => \estado_actual.validando_identificacion~q\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X40_Y25_N20
\Selector0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (!\Selector0~0_combout\ & ((\vehiculo_det~input_o\) # ((\estado_actual.esperando_vehiculo~q\ & !\estado_actual.esperando_salida~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_actual.esperando_vehiculo~q\,
	datab => \vehiculo_det~input_o\,
	datac => \estado_actual.esperando_salida~q\,
	datad => \Selector0~0_combout\,
	combout => \Selector0~1_combout\);

-- Location: FF_X40_Y25_N21
\estado_siguiente.esperando_vehiculo\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_siguiente.esperando_vehiculo~q\);

-- Location: LCCOMB_X40_Y25_N30
\estado_actual.esperando_vehiculo~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \estado_actual.esperando_vehiculo~feeder_combout\ = \estado_siguiente.esperando_vehiculo~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \estado_siguiente.esperando_vehiculo~q\,
	combout => \estado_actual.esperando_vehiculo~feeder_combout\);

-- Location: FF_X40_Y25_N31
\estado_actual.esperando_vehiculo\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estado_actual.esperando_vehiculo~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_actual.esperando_vehiculo~q\);

-- Location: LCCOMB_X40_Y25_N2
\estado_siguiente~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \estado_siguiente~10_combout\ = (!\estado_actual.esperando_vehiculo~q\ & \vehiculo_det~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estado_actual.esperando_vehiculo~q\,
	datad => \vehiculo_det~input_o\,
	combout => \estado_siguiente~10_combout\);

-- Location: FF_X40_Y25_N3
\estado_siguiente.validando_identificacion\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estado_siguiente~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_siguiente.validando_identificacion~q\);

-- Location: LCCOMB_X40_Y25_N18
\estado_actual.validando_identificacion~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \estado_actual.validando_identificacion~feeder_combout\ = \estado_siguiente.validando_identificacion~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \estado_siguiente.validando_identificacion~q\,
	combout => \estado_actual.validando_identificacion~feeder_combout\);

-- Location: FF_X40_Y25_N19
\estado_actual.validando_identificacion\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estado_actual.validando_identificacion~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_actual.validando_identificacion~q\);

-- Location: LCCOMB_X40_Y25_N10
\Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\identificacion_valida~input_o\ & ((\estado_actual.validando_identificacion~q\) # ((!\vehiculo_ingresado~input_o\ & \estado_actual.abriendo_barrera_entrada~q\)))) # (!\identificacion_valida~input_o\ & 
-- (!\vehiculo_ingresado~input_o\ & (\estado_actual.abriendo_barrera_entrada~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \identificacion_valida~input_o\,
	datab => \vehiculo_ingresado~input_o\,
	datac => \estado_actual.abriendo_barrera_entrada~q\,
	datad => \estado_actual.validando_identificacion~q\,
	combout => \Selector1~0_combout\);

-- Location: FF_X40_Y25_N11
\estado_siguiente.abriendo_barrera_entrada\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_siguiente.abriendo_barrera_entrada~q\);

-- Location: LCCOMB_X40_Y25_N22
\estado_actual.abriendo_barrera_entrada~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \estado_actual.abriendo_barrera_entrada~feeder_combout\ = \estado_siguiente.abriendo_barrera_entrada~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \estado_siguiente.abriendo_barrera_entrada~q\,
	combout => \estado_actual.abriendo_barrera_entrada~feeder_combout\);

-- Location: FF_X40_Y25_N23
\estado_actual.abriendo_barrera_entrada\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estado_actual.abriendo_barrera_entrada~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_actual.abriendo_barrera_entrada~q\);

-- Location: LCCOMB_X40_Y25_N8
WideNor0 : cycloneiii_lcell_comb
-- Equation(s):
-- \WideNor0~combout\ = (\estado_actual.abriendo_barrera_entrada~q\) # (\estado_actual.cerrando_barrera_entrada~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estado_actual.abriendo_barrera_entrada~q\,
	datad => \estado_actual.cerrando_barrera_entrada~q\,
	combout => \WideNor0~combout\);

-- Location: FF_X40_Y25_N9
\talanquera_entrada~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WideNor0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \talanquera_entrada~reg0_q\);

-- Location: FF_X40_Y25_N7
\semaforo_entrada_verde~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \estado_actual.abriendo_barrera_entrada~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \semaforo_entrada_verde~reg0_q\);

-- Location: LCCOMB_X40_Y25_N16
\semaforo_entrada_rojo~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \semaforo_entrada_rojo~0_combout\ = !\estado_actual.abriendo_barrera_entrada~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estado_actual.abriendo_barrera_entrada~q\,
	combout => \semaforo_entrada_rojo~0_combout\);

-- Location: FF_X40_Y25_N17
\semaforo_entrada_rojo~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \semaforo_entrada_rojo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \semaforo_entrada_rojo~reg0_q\);

-- Location: LCCOMB_X39_Y25_N12
\semaforo_salida_verde~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \semaforo_salida_verde~reg0feeder_combout\ = \estado_actual.esperando_salida~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estado_actual.esperando_salida~q\,
	combout => \semaforo_salida_verde~reg0feeder_combout\);

-- Location: FF_X39_Y25_N13
\semaforo_salida_verde~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \semaforo_salida_verde~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \semaforo_salida_verde~reg0_q\);

-- Location: LCCOMB_X39_Y25_N22
\semaforo_salida_rojo~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \semaforo_salida_rojo~0_combout\ = !\estado_actual.esperando_salida~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estado_actual.esperando_salida~q\,
	combout => \semaforo_salida_rojo~0_combout\);

-- Location: FF_X39_Y25_N23
\semaforo_salida_rojo~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \semaforo_salida_rojo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \semaforo_salida_rojo~reg0_q\);

-- Location: LCCOMB_X40_Y25_N26
\led_entrada_verde~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_entrada_verde~reg0feeder_combout\ = \estado_actual.abriendo_barrera_entrada~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estado_actual.abriendo_barrera_entrada~q\,
	combout => \led_entrada_verde~reg0feeder_combout\);

-- Location: FF_X40_Y25_N27
\led_entrada_verde~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_entrada_verde~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_entrada_verde~reg0_q\);

-- Location: LCCOMB_X40_Y25_N4
\led_entrada_rojo~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_entrada_rojo~0_combout\ = !\estado_actual.abriendo_barrera_entrada~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estado_actual.abriendo_barrera_entrada~q\,
	combout => \led_entrada_rojo~0_combout\);

-- Location: FF_X40_Y25_N5
\led_entrada_rojo~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_entrada_rojo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_entrada_rojo~reg0_q\);

-- Location: LCCOMB_X39_Y25_N24
\led_salida_verde~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_salida_verde~reg0feeder_combout\ = \estado_actual.esperando_salida~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estado_actual.esperando_salida~q\,
	combout => \led_salida_verde~reg0feeder_combout\);

-- Location: FF_X39_Y25_N25
\led_salida_verde~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_salida_verde~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_salida_verde~reg0_q\);

-- Location: LCCOMB_X39_Y25_N2
\led_salida_rojo~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_salida_rojo~0_combout\ = !\estado_actual.esperando_salida~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estado_actual.esperando_salida~q\,
	combout => \led_salida_rojo~0_combout\);

-- Location: FF_X39_Y25_N3
\led_salida_rojo~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_salida_rojo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_salida_rojo~reg0_q\);

ww_talanquera_entrada <= \talanquera_entrada~output_o\;

ww_talanquera_salida <= \talanquera_salida~output_o\;

ww_semaforo_entrada_verde <= \semaforo_entrada_verde~output_o\;

ww_semaforo_entrada_rojo <= \semaforo_entrada_rojo~output_o\;

ww_semaforo_salida_verde <= \semaforo_salida_verde~output_o\;

ww_semaforo_salida_rojo <= \semaforo_salida_rojo~output_o\;

ww_led_entrada_verde <= \led_entrada_verde~output_o\;

ww_led_entrada_rojo <= \led_entrada_rojo~output_o\;

ww_led_salida_verde <= \led_salida_verde~output_o\;

ww_led_salida_rojo <= \led_salida_rojo~output_o\;
END structure;


