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

-- DATE "05/12/2024 16:38:34"

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

ENTITY 	MaquinaEstados IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	vehiculo_detectado : IN std_logic;
	identificacion_valida : IN std_logic;
	vehiculo_ingresado : IN std_logic;
	tiempo_pasado : IN std_logic;
	peaje_pagado : IN std_logic;
	talanquera_abierta : OUT std_logic;
	semaforo_estado : OUT std_logic;
	activar_cobro_peaje : OUT std_logic
	);
END MaquinaEstados;

-- Design Ports Information
-- talanquera_abierta	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- semaforo_estado	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- activar_cobro_peaje	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- peaje_pagado	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tiempo_pasado	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vehiculo_ingresado	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- identificacion_valida	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vehiculo_detectado	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF MaquinaEstados IS
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
SIGNAL ww_reset : std_logic;
SIGNAL ww_vehiculo_detectado : std_logic;
SIGNAL ww_identificacion_valida : std_logic;
SIGNAL ww_vehiculo_ingresado : std_logic;
SIGNAL ww_tiempo_pasado : std_logic;
SIGNAL ww_peaje_pagado : std_logic;
SIGNAL ww_talanquera_abierta : std_logic;
SIGNAL ww_semaforo_estado : std_logic;
SIGNAL ww_activar_cobro_peaje : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \talanquera_abierta~output_o\ : std_logic;
SIGNAL \semaforo_estado~output_o\ : std_logic;
SIGNAL \activar_cobro_peaje~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \peaje_pagado~input_o\ : std_logic;
SIGNAL \vehiculo_ingresado~input_o\ : std_logic;
SIGNAL \tiempo_pasado~input_o\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \estado_siguiente.finalizacion~q\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \estado_actual.finalizacion~q\ : std_logic;
SIGNAL \identificacion_valida~input_o\ : std_logic;
SIGNAL \vehiculo_detectado~input_o\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Selector1~2_combout\ : std_logic;
SIGNAL \Selector0~3_combout\ : std_logic;
SIGNAL \estado_siguiente.inicio~q\ : std_logic;
SIGNAL \estado_actual.inicio~feeder_combout\ : std_logic;
SIGNAL \estado_actual.inicio~q\ : std_logic;
SIGNAL \Selector0~2_combout\ : std_logic;
SIGNAL \Selector1~3_combout\ : std_logic;
SIGNAL \estado_siguiente.deteccion_vehiculo~q\ : std_logic;
SIGNAL \estado_actual.deteccion_vehiculo~q\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Selector4~1_combout\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \estado_siguiente.validacion_identificacion~q\ : std_logic;
SIGNAL \estado_actual.validacion_identificacion~feeder_combout\ : std_logic;
SIGNAL \estado_actual.validacion_identificacion~q\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Selector3~1_combout\ : std_logic;
SIGNAL \estado_siguiente.cobro_peaje~q\ : std_logic;
SIGNAL \estado_actual.cobro_peaje~q\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Selector4~2_combout\ : std_logic;
SIGNAL \estado_siguiente.paso_vehiculo~q\ : std_logic;
SIGNAL \estado_actual.paso_vehiculo~q\ : std_logic;
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_vehiculo_detectado <= vehiculo_detectado;
ww_identificacion_valida <= identificacion_valida;
ww_vehiculo_ingresado <= vehiculo_ingresado;
ww_tiempo_pasado <= tiempo_pasado;
ww_peaje_pagado <= peaje_pagado;
talanquera_abierta <= ww_talanquera_abierta;
semaforo_estado <= ww_semaforo_estado;
activar_cobro_peaje <= ww_activar_cobro_peaje;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;

-- Location: IOOBUF_X0_Y2_N23
\talanquera_abierta~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \estado_actual.paso_vehiculo~q\,
	devoe => ww_devoe,
	o => \talanquera_abierta~output_o\);

-- Location: IOOBUF_X0_Y2_N2
\semaforo_estado~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \estado_actual.paso_vehiculo~q\,
	devoe => ww_devoe,
	o => \semaforo_estado~output_o\);

-- Location: IOOBUF_X0_Y2_N9
\activar_cobro_peaje~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \estado_actual.cobro_peaje~q\,
	devoe => ww_devoe,
	o => \activar_cobro_peaje~output_o\);

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

-- Location: IOIBUF_X3_Y0_N29
\peaje_pagado~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_peaje_pagado,
	o => \peaje_pagado~input_o\);

-- Location: IOIBUF_X3_Y0_N22
\vehiculo_ingresado~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vehiculo_ingresado,
	o => \vehiculo_ingresado~input_o\);

-- Location: IOIBUF_X3_Y0_N15
\tiempo_pasado~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tiempo_pasado,
	o => \tiempo_pasado~input_o\);

-- Location: LCCOMB_X3_Y2_N26
\Selector5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (!\estado_actual.finalizacion~q\ & (\tiempo_pasado~input_o\ & \estado_actual.paso_vehiculo~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado_actual.finalizacion~q\,
	datac => \tiempo_pasado~input_o\,
	datad => \estado_actual.paso_vehiculo~q\,
	combout => \Selector5~0_combout\);

-- Location: FF_X3_Y2_N27
\estado_siguiente.finalizacion\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_siguiente.finalizacion~q\);

-- Location: IOIBUF_X0_Y14_N8
\reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G2
\reset~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: FF_X3_Y2_N13
\estado_actual.finalizacion\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \estado_siguiente.finalizacion~q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_actual.finalizacion~q\);

-- Location: IOIBUF_X3_Y0_N1
\identificacion_valida~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_identificacion_valida,
	o => \identificacion_valida~input_o\);

-- Location: IOIBUF_X0_Y2_N15
\vehiculo_detectado~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vehiculo_detectado,
	o => \vehiculo_detectado~input_o\);

-- Location: LCCOMB_X3_Y2_N4
\Selector1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = (\identificacion_valida~input_o\ & (!\estado_actual.deteccion_vehiculo~q\ & ((!\estado_actual.validacion_identificacion~q\) # (!\vehiculo_ingresado~input_o\)))) # (!\identificacion_valida~input_o\ & 
-- (((!\estado_actual.validacion_identificacion~q\)) # (!\vehiculo_ingresado~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \identificacion_valida~input_o\,
	datab => \vehiculo_ingresado~input_o\,
	datac => \estado_actual.deteccion_vehiculo~q\,
	datad => \estado_actual.validacion_identificacion~q\,
	combout => \Selector1~1_combout\);

-- Location: LCCOMB_X3_Y2_N16
\Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\tiempo_pasado~input_o\ & (!\estado_actual.paso_vehiculo~q\ & ((!\estado_actual.cobro_peaje~q\) # (!\peaje_pagado~input_o\)))) # (!\tiempo_pasado~input_o\ & (((!\estado_actual.cobro_peaje~q\)) # (!\peaje_pagado~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tiempo_pasado~input_o\,
	datab => \peaje_pagado~input_o\,
	datac => \estado_actual.cobro_peaje~q\,
	datad => \estado_actual.paso_vehiculo~q\,
	combout => \Selector1~0_combout\);

-- Location: LCCOMB_X3_Y2_N20
\Selector1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector1~2_combout\ = (\Selector1~1_combout\ & \Selector1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selector1~1_combout\,
	datad => \Selector1~0_combout\,
	combout => \Selector1~2_combout\);

-- Location: LCCOMB_X3_Y2_N28
\Selector0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~3_combout\ = (!\estado_actual.finalizacion~q\ & ((\estado_actual.inicio~q\) # ((\vehiculo_detectado~input_o\) # (!\Selector1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_actual.finalizacion~q\,
	datab => \estado_actual.inicio~q\,
	datac => \vehiculo_detectado~input_o\,
	datad => \Selector1~2_combout\,
	combout => \Selector0~3_combout\);

-- Location: FF_X3_Y2_N29
\estado_siguiente.inicio\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_siguiente.inicio~q\);

-- Location: LCCOMB_X3_Y2_N24
\estado_actual.inicio~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \estado_actual.inicio~feeder_combout\ = \estado_siguiente.inicio~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \estado_siguiente.inicio~q\,
	combout => \estado_actual.inicio~feeder_combout\);

-- Location: FF_X3_Y2_N25
\estado_actual.inicio\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estado_actual.inicio~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_actual.inicio~q\);

-- Location: LCCOMB_X3_Y2_N6
\Selector0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~2_combout\ = (\vehiculo_detectado~input_o\ & !\estado_actual.inicio~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vehiculo_detectado~input_o\,
	datad => \estado_actual.inicio~q\,
	combout => \Selector0~2_combout\);

-- Location: LCCOMB_X3_Y2_N0
\Selector1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector1~3_combout\ = (!\estado_actual.finalizacion~q\ & (\Selector1~2_combout\ & ((\estado_actual.deteccion_vehiculo~q\) # (\Selector0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_actual.finalizacion~q\,
	datab => \estado_actual.deteccion_vehiculo~q\,
	datac => \Selector0~2_combout\,
	datad => \Selector1~2_combout\,
	combout => \Selector1~3_combout\);

-- Location: FF_X3_Y2_N1
\estado_siguiente.deteccion_vehiculo\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_siguiente.deteccion_vehiculo~q\);

-- Location: FF_X3_Y2_N9
\estado_actual.deteccion_vehiculo\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \estado_siguiente.deteccion_vehiculo~q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_actual.deteccion_vehiculo~q\);

-- Location: LCCOMB_X3_Y2_N8
\Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\identificacion_valida~input_o\ & (\estado_actual.deteccion_vehiculo~q\ & !\estado_actual.finalizacion~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \identificacion_valida~input_o\,
	datac => \estado_actual.deteccion_vehiculo~q\,
	datad => \estado_actual.finalizacion~q\,
	combout => \Selector2~0_combout\);

-- Location: LCCOMB_X3_Y2_N12
\Selector4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector4~1_combout\ = (!\Selector0~2_combout\ & (\Selector1~1_combout\ & (!\estado_actual.finalizacion~q\ & \Selector1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~2_combout\,
	datab => \Selector1~1_combout\,
	datac => \estado_actual.finalizacion~q\,
	datad => \Selector1~0_combout\,
	combout => \Selector4~1_combout\);

-- Location: LCCOMB_X3_Y2_N22
\Selector2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = (\Selector2~0_combout\) # ((\estado_actual.validacion_identificacion~q\ & \Selector4~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~0_combout\,
	datab => \estado_actual.validacion_identificacion~q\,
	datad => \Selector4~1_combout\,
	combout => \Selector2~1_combout\);

-- Location: FF_X3_Y2_N23
\estado_siguiente.validacion_identificacion\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_siguiente.validacion_identificacion~q\);

-- Location: LCCOMB_X3_Y2_N2
\estado_actual.validacion_identificacion~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \estado_actual.validacion_identificacion~feeder_combout\ = \estado_siguiente.validacion_identificacion~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estado_siguiente.validacion_identificacion~q\,
	combout => \estado_actual.validacion_identificacion~feeder_combout\);

-- Location: FF_X3_Y2_N3
\estado_actual.validacion_identificacion\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estado_actual.validacion_identificacion~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_actual.validacion_identificacion~q\);

-- Location: LCCOMB_X3_Y2_N10
\Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\vehiculo_ingresado~input_o\ & (!\estado_actual.finalizacion~q\ & \estado_actual.validacion_identificacion~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vehiculo_ingresado~input_o\,
	datab => \estado_actual.finalizacion~q\,
	datad => \estado_actual.validacion_identificacion~q\,
	combout => \Selector3~0_combout\);

-- Location: LCCOMB_X3_Y2_N30
\Selector3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector3~1_combout\ = (\Selector3~0_combout\) # ((\estado_actual.cobro_peaje~q\ & \Selector4~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_actual.cobro_peaje~q\,
	datac => \Selector3~0_combout\,
	datad => \Selector4~1_combout\,
	combout => \Selector3~1_combout\);

-- Location: FF_X3_Y2_N31
\estado_siguiente.cobro_peaje\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_siguiente.cobro_peaje~q\);

-- Location: FF_X3_Y2_N15
\estado_actual.cobro_peaje\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \estado_siguiente.cobro_peaje~q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_actual.cobro_peaje~q\);

-- Location: LCCOMB_X3_Y2_N14
\Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\peaje_pagado~input_o\ & (\estado_actual.cobro_peaje~q\ & !\estado_actual.finalizacion~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \peaje_pagado~input_o\,
	datac => \estado_actual.cobro_peaje~q\,
	datad => \estado_actual.finalizacion~q\,
	combout => \Selector4~0_combout\);

-- Location: LCCOMB_X3_Y2_N18
\Selector4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector4~2_combout\ = (\Selector4~0_combout\) # ((\estado_actual.paso_vehiculo~q\ & \Selector4~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector4~0_combout\,
	datac => \estado_actual.paso_vehiculo~q\,
	datad => \Selector4~1_combout\,
	combout => \Selector4~2_combout\);

-- Location: FF_X3_Y2_N19
\estado_siguiente.paso_vehiculo\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_siguiente.paso_vehiculo~q\);

-- Location: FF_X3_Y2_N11
\estado_actual.paso_vehiculo\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \estado_siguiente.paso_vehiculo~q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_actual.paso_vehiculo~q\);

ww_talanquera_abierta <= \talanquera_abierta~output_o\;

ww_semaforo_estado <= \semaforo_estado~output_o\;

ww_activar_cobro_peaje <= \activar_cobro_peaje~output_o\;
END structure;


