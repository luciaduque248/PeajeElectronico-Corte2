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

-- DATE "05/06/2024 17:57:25"

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

ENTITY 	MaquinaTiempoPaso IS
    PORT (
	clk : IN std_logic;
	vehiculo_det : IN std_logic;
	talanquera_abierta : OUT std_logic
	);
END MaquinaTiempoPaso;

-- Design Ports Information
-- talanquera_abierta	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vehiculo_det	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF MaquinaTiempoPaso IS
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
SIGNAL ww_talanquera_abierta : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \talanquera_abierta~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \estado_actual.esperando_paso~q\ : std_logic;
SIGNAL \contador_tiempo[0]~26_combout\ : std_logic;
SIGNAL \vehiculo_det~input_o\ : std_logic;
SIGNAL \contador_tiempo[24]~75\ : std_logic;
SIGNAL \contador_tiempo[25]~77_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \contador_tiempo[25]~76_combout\ : std_logic;
SIGNAL \contador_tiempo[0]~27\ : std_logic;
SIGNAL \contador_tiempo[1]~28_combout\ : std_logic;
SIGNAL \contador_tiempo[1]~29\ : std_logic;
SIGNAL \contador_tiempo[2]~30_combout\ : std_logic;
SIGNAL \contador_tiempo[2]~31\ : std_logic;
SIGNAL \contador_tiempo[3]~32_combout\ : std_logic;
SIGNAL \contador_tiempo[3]~33\ : std_logic;
SIGNAL \contador_tiempo[4]~34_combout\ : std_logic;
SIGNAL \contador_tiempo[4]~35\ : std_logic;
SIGNAL \contador_tiempo[5]~36_combout\ : std_logic;
SIGNAL \contador_tiempo[5]~37\ : std_logic;
SIGNAL \contador_tiempo[6]~38_combout\ : std_logic;
SIGNAL \contador_tiempo[6]~39\ : std_logic;
SIGNAL \contador_tiempo[7]~40_combout\ : std_logic;
SIGNAL \contador_tiempo[7]~41\ : std_logic;
SIGNAL \contador_tiempo[8]~42_combout\ : std_logic;
SIGNAL \contador_tiempo[8]~43\ : std_logic;
SIGNAL \contador_tiempo[9]~44_combout\ : std_logic;
SIGNAL \contador_tiempo[9]~45\ : std_logic;
SIGNAL \contador_tiempo[10]~46_combout\ : std_logic;
SIGNAL \contador_tiempo[10]~47\ : std_logic;
SIGNAL \contador_tiempo[11]~48_combout\ : std_logic;
SIGNAL \contador_tiempo[11]~49\ : std_logic;
SIGNAL \contador_tiempo[12]~50_combout\ : std_logic;
SIGNAL \contador_tiempo[12]~51\ : std_logic;
SIGNAL \contador_tiempo[13]~52_combout\ : std_logic;
SIGNAL \contador_tiempo[13]~feeder_combout\ : std_logic;
SIGNAL \contador_tiempo[13]~53\ : std_logic;
SIGNAL \contador_tiempo[14]~54_combout\ : std_logic;
SIGNAL \contador_tiempo[14]~feeder_combout\ : std_logic;
SIGNAL \contador_tiempo[14]~55\ : std_logic;
SIGNAL \contador_tiempo[15]~56_combout\ : std_logic;
SIGNAL \contador_tiempo[15]~feeder_combout\ : std_logic;
SIGNAL \contador_tiempo[15]~57\ : std_logic;
SIGNAL \contador_tiempo[16]~58_combout\ : std_logic;
SIGNAL \contador_tiempo[16]~59\ : std_logic;
SIGNAL \contador_tiempo[17]~60_combout\ : std_logic;
SIGNAL \contador_tiempo[17]~61\ : std_logic;
SIGNAL \contador_tiempo[18]~62_combout\ : std_logic;
SIGNAL \contador_tiempo[18]~63\ : std_logic;
SIGNAL \contador_tiempo[19]~64_combout\ : std_logic;
SIGNAL \contador_tiempo[19]~65\ : std_logic;
SIGNAL \contador_tiempo[20]~66_combout\ : std_logic;
SIGNAL \contador_tiempo[20]~67\ : std_logic;
SIGNAL \contador_tiempo[21]~68_combout\ : std_logic;
SIGNAL \contador_tiempo[21]~69\ : std_logic;
SIGNAL \contador_tiempo[22]~70_combout\ : std_logic;
SIGNAL \contador_tiempo[22]~71\ : std_logic;
SIGNAL \contador_tiempo[23]~72_combout\ : std_logic;
SIGNAL \contador_tiempo[23]~73\ : std_logic;
SIGNAL \contador_tiempo[24]~74_combout\ : std_logic;
SIGNAL \estado_siguiente~8_combout\ : std_logic;
SIGNAL \estado_siguiente.paso_exitoso~q\ : std_logic;
SIGNAL \estado_actual.paso_exitoso~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \estado_siguiente.esperando_vehiculo~q\ : std_logic;
SIGNAL \estado_actual.esperando_vehiculo~q\ : std_logic;
SIGNAL \contador_tiempo[25]~79_combout\ : std_logic;
SIGNAL \estado_siguiente.vehiculo_detectado~q\ : std_logic;
SIGNAL \estado_actual.vehiculo_detectado~feeder_combout\ : std_logic;
SIGNAL \estado_actual.vehiculo_detectado~q\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \estado_siguiente.esperando_paso~q\ : std_logic;
SIGNAL \talanquera_abierta~reg0_q\ : std_logic;
SIGNAL contador_tiempo : std_logic_vector(25 DOWNTO 0);
SIGNAL \ALT_INV_estado_actual.esperando_paso~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_vehiculo_det <= vehiculo_det;
talanquera_abierta <= ww_talanquera_abierta;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_estado_actual.esperando_paso~q\ <= NOT \estado_actual.esperando_paso~q\;

-- Location: IOOBUF_X19_Y0_N9
\talanquera_abierta~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \talanquera_abierta~reg0_q\,
	devoe => ww_devoe,
	o => \talanquera_abierta~output_o\);

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

-- Location: FF_X20_Y6_N7
\estado_actual.esperando_paso\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \estado_siguiente.esperando_paso~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_actual.esperando_paso~q\);

-- Location: LCCOMB_X19_Y6_N6
\contador_tiempo[0]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_tiempo[0]~26_combout\ = contador_tiempo(0) $ (VCC)
-- \contador_tiempo[0]~27\ = CARRY(contador_tiempo(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador_tiempo(0),
	datad => VCC,
	combout => \contador_tiempo[0]~26_combout\,
	cout => \contador_tiempo[0]~27\);

-- Location: IOIBUF_X19_Y0_N29
\vehiculo_det~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vehiculo_det,
	o => \vehiculo_det~input_o\);

-- Location: LCCOMB_X19_Y5_N22
\contador_tiempo[24]~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_tiempo[24]~74_combout\ = (contador_tiempo(24) & (\contador_tiempo[23]~73\ $ (GND))) # (!contador_tiempo(24) & (!\contador_tiempo[23]~73\ & VCC))
-- \contador_tiempo[24]~75\ = CARRY((contador_tiempo(24) & !\contador_tiempo[23]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador_tiempo(24),
	datad => VCC,
	cin => \contador_tiempo[23]~73\,
	combout => \contador_tiempo[24]~74_combout\,
	cout => \contador_tiempo[24]~75\);

-- Location: LCCOMB_X19_Y5_N24
\contador_tiempo[25]~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_tiempo[25]~77_combout\ = contador_tiempo(25) $ (\contador_tiempo[24]~75\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador_tiempo(25),
	cin => \contador_tiempo[24]~75\,
	combout => \contador_tiempo[25]~77_combout\);

-- Location: FF_X19_Y5_N25
\contador_tiempo[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_tiempo[25]~77_combout\,
	sclr => \ALT_INV_estado_actual.esperando_paso~q\,
	ena => \contador_tiempo[25]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_tiempo(25));

-- Location: LCCOMB_X19_Y5_N28
\LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (contador_tiempo(25) & (contador_tiempo(21) & (contador_tiempo(23) & contador_tiempo(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador_tiempo(25),
	datab => contador_tiempo(21),
	datac => contador_tiempo(23),
	datad => contador_tiempo(22),
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X20_Y6_N16
\LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (contador_tiempo(15) & (contador_tiempo(12) & contador_tiempo(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador_tiempo(15),
	datab => contador_tiempo(12),
	datad => contador_tiempo(14),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X20_Y6_N14
\LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (contador_tiempo(18)) # ((contador_tiempo(16)) # ((contador_tiempo(13) & \LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador_tiempo(18),
	datab => contador_tiempo(13),
	datac => contador_tiempo(16),
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X19_Y5_N30
\LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (contador_tiempo(19) & (contador_tiempo(20) & ((contador_tiempo(17)) # (contador_tiempo(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador_tiempo(19),
	datab => contador_tiempo(17),
	datac => contador_tiempo(20),
	datad => contador_tiempo(18),
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X20_Y6_N28
\LessThan0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (!contador_tiempo(7) & (!contador_tiempo(8) & (!contador_tiempo(16) & !contador_tiempo(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador_tiempo(7),
	datab => contador_tiempo(8),
	datac => contador_tiempo(16),
	datad => contador_tiempo(18),
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X20_Y6_N18
\LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (!contador_tiempo(10) & (!contador_tiempo(11) & (!contador_tiempo(9) & \LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador_tiempo(10),
	datab => contador_tiempo(11),
	datac => contador_tiempo(9),
	datad => \LessThan0~4_combout\,
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X20_Y6_N0
\LessThan0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = (\LessThan0~3_combout\ & (\LessThan0~1_combout\ & (\LessThan0~2_combout\ & !\LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~3_combout\,
	datab => \LessThan0~1_combout\,
	datac => \LessThan0~2_combout\,
	datad => \LessThan0~5_combout\,
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X20_Y6_N2
\Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\estado_actual.esperando_paso~q\ & (!\LessThan0~6_combout\ & ((!contador_tiempo(25)) # (!contador_tiempo(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_actual.esperando_paso~q\,
	datab => contador_tiempo(24),
	datac => contador_tiempo(25),
	datad => \LessThan0~6_combout\,
	combout => \Selector1~0_combout\);

-- Location: LCCOMB_X20_Y6_N30
\contador_tiempo[25]~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_tiempo[25]~76_combout\ = (\Selector1~0_combout\) # ((\vehiculo_det~input_o\ & !\estado_actual.esperando_vehiculo~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vehiculo_det~input_o\,
	datac => \estado_actual.esperando_vehiculo~q\,
	datad => \Selector1~0_combout\,
	combout => \contador_tiempo[25]~76_combout\);

-- Location: FF_X19_Y6_N7
\contador_tiempo[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_tiempo[0]~26_combout\,
	sclr => \ALT_INV_estado_actual.esperando_paso~q\,
	ena => \contador_tiempo[25]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_tiempo(0));

-- Location: LCCOMB_X19_Y6_N8
\contador_tiempo[1]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_tiempo[1]~28_combout\ = (contador_tiempo(1) & (!\contador_tiempo[0]~27\)) # (!contador_tiempo(1) & ((\contador_tiempo[0]~27\) # (GND)))
-- \contador_tiempo[1]~29\ = CARRY((!\contador_tiempo[0]~27\) # (!contador_tiempo(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_tiempo(1),
	datad => VCC,
	cin => \contador_tiempo[0]~27\,
	combout => \contador_tiempo[1]~28_combout\,
	cout => \contador_tiempo[1]~29\);

-- Location: FF_X19_Y6_N9
\contador_tiempo[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_tiempo[1]~28_combout\,
	sclr => \ALT_INV_estado_actual.esperando_paso~q\,
	ena => \contador_tiempo[25]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_tiempo(1));

-- Location: LCCOMB_X19_Y6_N10
\contador_tiempo[2]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_tiempo[2]~30_combout\ = (contador_tiempo(2) & (\contador_tiempo[1]~29\ $ (GND))) # (!contador_tiempo(2) & (!\contador_tiempo[1]~29\ & VCC))
-- \contador_tiempo[2]~31\ = CARRY((contador_tiempo(2) & !\contador_tiempo[1]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador_tiempo(2),
	datad => VCC,
	cin => \contador_tiempo[1]~29\,
	combout => \contador_tiempo[2]~30_combout\,
	cout => \contador_tiempo[2]~31\);

-- Location: FF_X19_Y6_N11
\contador_tiempo[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_tiempo[2]~30_combout\,
	sclr => \ALT_INV_estado_actual.esperando_paso~q\,
	ena => \contador_tiempo[25]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_tiempo(2));

-- Location: LCCOMB_X19_Y6_N12
\contador_tiempo[3]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_tiempo[3]~32_combout\ = (contador_tiempo(3) & (!\contador_tiempo[2]~31\)) # (!contador_tiempo(3) & ((\contador_tiempo[2]~31\) # (GND)))
-- \contador_tiempo[3]~33\ = CARRY((!\contador_tiempo[2]~31\) # (!contador_tiempo(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador_tiempo(3),
	datad => VCC,
	cin => \contador_tiempo[2]~31\,
	combout => \contador_tiempo[3]~32_combout\,
	cout => \contador_tiempo[3]~33\);

-- Location: FF_X19_Y6_N13
\contador_tiempo[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_tiempo[3]~32_combout\,
	sclr => \ALT_INV_estado_actual.esperando_paso~q\,
	ena => \contador_tiempo[25]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_tiempo(3));

-- Location: LCCOMB_X19_Y6_N14
\contador_tiempo[4]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_tiempo[4]~34_combout\ = (contador_tiempo(4) & (\contador_tiempo[3]~33\ $ (GND))) # (!contador_tiempo(4) & (!\contador_tiempo[3]~33\ & VCC))
-- \contador_tiempo[4]~35\ = CARRY((contador_tiempo(4) & !\contador_tiempo[3]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_tiempo(4),
	datad => VCC,
	cin => \contador_tiempo[3]~33\,
	combout => \contador_tiempo[4]~34_combout\,
	cout => \contador_tiempo[4]~35\);

-- Location: FF_X19_Y6_N15
\contador_tiempo[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_tiempo[4]~34_combout\,
	sclr => \ALT_INV_estado_actual.esperando_paso~q\,
	ena => \contador_tiempo[25]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_tiempo(4));

-- Location: LCCOMB_X19_Y6_N16
\contador_tiempo[5]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_tiempo[5]~36_combout\ = (contador_tiempo(5) & (!\contador_tiempo[4]~35\)) # (!contador_tiempo(5) & ((\contador_tiempo[4]~35\) # (GND)))
-- \contador_tiempo[5]~37\ = CARRY((!\contador_tiempo[4]~35\) # (!contador_tiempo(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_tiempo(5),
	datad => VCC,
	cin => \contador_tiempo[4]~35\,
	combout => \contador_tiempo[5]~36_combout\,
	cout => \contador_tiempo[5]~37\);

-- Location: FF_X19_Y6_N17
\contador_tiempo[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_tiempo[5]~36_combout\,
	sclr => \ALT_INV_estado_actual.esperando_paso~q\,
	ena => \contador_tiempo[25]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_tiempo(5));

-- Location: LCCOMB_X19_Y6_N18
\contador_tiempo[6]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_tiempo[6]~38_combout\ = (contador_tiempo(6) & (\contador_tiempo[5]~37\ $ (GND))) # (!contador_tiempo(6) & (!\contador_tiempo[5]~37\ & VCC))
-- \contador_tiempo[6]~39\ = CARRY((contador_tiempo(6) & !\contador_tiempo[5]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_tiempo(6),
	datad => VCC,
	cin => \contador_tiempo[5]~37\,
	combout => \contador_tiempo[6]~38_combout\,
	cout => \contador_tiempo[6]~39\);

-- Location: FF_X19_Y6_N19
\contador_tiempo[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_tiempo[6]~38_combout\,
	sclr => \ALT_INV_estado_actual.esperando_paso~q\,
	ena => \contador_tiempo[25]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_tiempo(6));

-- Location: LCCOMB_X19_Y6_N20
\contador_tiempo[7]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_tiempo[7]~40_combout\ = (contador_tiempo(7) & (!\contador_tiempo[6]~39\)) # (!contador_tiempo(7) & ((\contador_tiempo[6]~39\) # (GND)))
-- \contador_tiempo[7]~41\ = CARRY((!\contador_tiempo[6]~39\) # (!contador_tiempo(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_tiempo(7),
	datad => VCC,
	cin => \contador_tiempo[6]~39\,
	combout => \contador_tiempo[7]~40_combout\,
	cout => \contador_tiempo[7]~41\);

-- Location: FF_X19_Y6_N21
\contador_tiempo[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_tiempo[7]~40_combout\,
	sclr => \ALT_INV_estado_actual.esperando_paso~q\,
	ena => \contador_tiempo[25]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_tiempo(7));

-- Location: LCCOMB_X19_Y6_N22
\contador_tiempo[8]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_tiempo[8]~42_combout\ = (contador_tiempo(8) & (\contador_tiempo[7]~41\ $ (GND))) # (!contador_tiempo(8) & (!\contador_tiempo[7]~41\ & VCC))
-- \contador_tiempo[8]~43\ = CARRY((contador_tiempo(8) & !\contador_tiempo[7]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador_tiempo(8),
	datad => VCC,
	cin => \contador_tiempo[7]~41\,
	combout => \contador_tiempo[8]~42_combout\,
	cout => \contador_tiempo[8]~43\);

-- Location: FF_X19_Y6_N23
\contador_tiempo[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_tiempo[8]~42_combout\,
	sclr => \ALT_INV_estado_actual.esperando_paso~q\,
	ena => \contador_tiempo[25]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_tiempo(8));

-- Location: LCCOMB_X19_Y6_N24
\contador_tiempo[9]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_tiempo[9]~44_combout\ = (contador_tiempo(9) & (!\contador_tiempo[8]~43\)) # (!contador_tiempo(9) & ((\contador_tiempo[8]~43\) # (GND)))
-- \contador_tiempo[9]~45\ = CARRY((!\contador_tiempo[8]~43\) # (!contador_tiempo(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_tiempo(9),
	datad => VCC,
	cin => \contador_tiempo[8]~43\,
	combout => \contador_tiempo[9]~44_combout\,
	cout => \contador_tiempo[9]~45\);

-- Location: FF_X19_Y6_N25
\contador_tiempo[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_tiempo[9]~44_combout\,
	sclr => \ALT_INV_estado_actual.esperando_paso~q\,
	ena => \contador_tiempo[25]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_tiempo(9));

-- Location: LCCOMB_X19_Y6_N26
\contador_tiempo[10]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_tiempo[10]~46_combout\ = (contador_tiempo(10) & (\contador_tiempo[9]~45\ $ (GND))) # (!contador_tiempo(10) & (!\contador_tiempo[9]~45\ & VCC))
-- \contador_tiempo[10]~47\ = CARRY((contador_tiempo(10) & !\contador_tiempo[9]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador_tiempo(10),
	datad => VCC,
	cin => \contador_tiempo[9]~45\,
	combout => \contador_tiempo[10]~46_combout\,
	cout => \contador_tiempo[10]~47\);

-- Location: FF_X19_Y6_N27
\contador_tiempo[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_tiempo[10]~46_combout\,
	sclr => \ALT_INV_estado_actual.esperando_paso~q\,
	ena => \contador_tiempo[25]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_tiempo(10));

-- Location: LCCOMB_X19_Y6_N28
\contador_tiempo[11]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_tiempo[11]~48_combout\ = (contador_tiempo(11) & (!\contador_tiempo[10]~47\)) # (!contador_tiempo(11) & ((\contador_tiempo[10]~47\) # (GND)))
-- \contador_tiempo[11]~49\ = CARRY((!\contador_tiempo[10]~47\) # (!contador_tiempo(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_tiempo(11),
	datad => VCC,
	cin => \contador_tiempo[10]~47\,
	combout => \contador_tiempo[11]~48_combout\,
	cout => \contador_tiempo[11]~49\);

-- Location: FF_X19_Y6_N29
\contador_tiempo[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_tiempo[11]~48_combout\,
	sclr => \ALT_INV_estado_actual.esperando_paso~q\,
	ena => \contador_tiempo[25]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_tiempo(11));

-- Location: LCCOMB_X19_Y6_N30
\contador_tiempo[12]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_tiempo[12]~50_combout\ = (contador_tiempo(12) & (\contador_tiempo[11]~49\ $ (GND))) # (!contador_tiempo(12) & (!\contador_tiempo[11]~49\ & VCC))
-- \contador_tiempo[12]~51\ = CARRY((contador_tiempo(12) & !\contador_tiempo[11]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador_tiempo(12),
	datad => VCC,
	cin => \contador_tiempo[11]~49\,
	combout => \contador_tiempo[12]~50_combout\,
	cout => \contador_tiempo[12]~51\);

-- Location: FF_X19_Y6_N31
\contador_tiempo[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_tiempo[12]~50_combout\,
	sclr => \ALT_INV_estado_actual.esperando_paso~q\,
	ena => \contador_tiempo[25]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_tiempo(12));

-- Location: LCCOMB_X19_Y5_N0
\contador_tiempo[13]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_tiempo[13]~52_combout\ = (contador_tiempo(13) & (!\contador_tiempo[12]~51\)) # (!contador_tiempo(13) & ((\contador_tiempo[12]~51\) # (GND)))
-- \contador_tiempo[13]~53\ = CARRY((!\contador_tiempo[12]~51\) # (!contador_tiempo(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador_tiempo(13),
	datad => VCC,
	cin => \contador_tiempo[12]~51\,
	combout => \contador_tiempo[13]~52_combout\,
	cout => \contador_tiempo[13]~53\);

-- Location: LCCOMB_X19_Y6_N4
\contador_tiempo[13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_tiempo[13]~feeder_combout\ = \contador_tiempo[13]~52_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \contador_tiempo[13]~52_combout\,
	combout => \contador_tiempo[13]~feeder_combout\);

-- Location: FF_X19_Y6_N5
\contador_tiempo[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_tiempo[13]~feeder_combout\,
	sclr => \ALT_INV_estado_actual.esperando_paso~q\,
	ena => \contador_tiempo[25]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_tiempo(13));

-- Location: LCCOMB_X19_Y5_N2
\contador_tiempo[14]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_tiempo[14]~54_combout\ = (contador_tiempo(14) & (\contador_tiempo[13]~53\ $ (GND))) # (!contador_tiempo(14) & (!\contador_tiempo[13]~53\ & VCC))
-- \contador_tiempo[14]~55\ = CARRY((contador_tiempo(14) & !\contador_tiempo[13]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_tiempo(14),
	datad => VCC,
	cin => \contador_tiempo[13]~53\,
	combout => \contador_tiempo[14]~54_combout\,
	cout => \contador_tiempo[14]~55\);

-- Location: LCCOMB_X19_Y6_N2
\contador_tiempo[14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_tiempo[14]~feeder_combout\ = \contador_tiempo[14]~54_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \contador_tiempo[14]~54_combout\,
	combout => \contador_tiempo[14]~feeder_combout\);

-- Location: FF_X19_Y6_N3
\contador_tiempo[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_tiempo[14]~feeder_combout\,
	sclr => \ALT_INV_estado_actual.esperando_paso~q\,
	ena => \contador_tiempo[25]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_tiempo(14));

-- Location: LCCOMB_X19_Y5_N4
\contador_tiempo[15]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_tiempo[15]~56_combout\ = (contador_tiempo(15) & (!\contador_tiempo[14]~55\)) # (!contador_tiempo(15) & ((\contador_tiempo[14]~55\) # (GND)))
-- \contador_tiempo[15]~57\ = CARRY((!\contador_tiempo[14]~55\) # (!contador_tiempo(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador_tiempo(15),
	datad => VCC,
	cin => \contador_tiempo[14]~55\,
	combout => \contador_tiempo[15]~56_combout\,
	cout => \contador_tiempo[15]~57\);

-- Location: LCCOMB_X19_Y6_N0
\contador_tiempo[15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_tiempo[15]~feeder_combout\ = \contador_tiempo[15]~56_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \contador_tiempo[15]~56_combout\,
	combout => \contador_tiempo[15]~feeder_combout\);

-- Location: FF_X19_Y6_N1
\contador_tiempo[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_tiempo[15]~feeder_combout\,
	sclr => \ALT_INV_estado_actual.esperando_paso~q\,
	ena => \contador_tiempo[25]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_tiempo(15));

-- Location: LCCOMB_X19_Y5_N6
\contador_tiempo[16]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_tiempo[16]~58_combout\ = (contador_tiempo(16) & (\contador_tiempo[15]~57\ $ (GND))) # (!contador_tiempo(16) & (!\contador_tiempo[15]~57\ & VCC))
-- \contador_tiempo[16]~59\ = CARRY((contador_tiempo(16) & !\contador_tiempo[15]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador_tiempo(16),
	datad => VCC,
	cin => \contador_tiempo[15]~57\,
	combout => \contador_tiempo[16]~58_combout\,
	cout => \contador_tiempo[16]~59\);

-- Location: FF_X19_Y5_N7
\contador_tiempo[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_tiempo[16]~58_combout\,
	sclr => \ALT_INV_estado_actual.esperando_paso~q\,
	ena => \contador_tiempo[25]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_tiempo(16));

-- Location: LCCOMB_X19_Y5_N8
\contador_tiempo[17]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_tiempo[17]~60_combout\ = (contador_tiempo(17) & (!\contador_tiempo[16]~59\)) # (!contador_tiempo(17) & ((\contador_tiempo[16]~59\) # (GND)))
-- \contador_tiempo[17]~61\ = CARRY((!\contador_tiempo[16]~59\) # (!contador_tiempo(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador_tiempo(17),
	datad => VCC,
	cin => \contador_tiempo[16]~59\,
	combout => \contador_tiempo[17]~60_combout\,
	cout => \contador_tiempo[17]~61\);

-- Location: FF_X19_Y5_N9
\contador_tiempo[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_tiempo[17]~60_combout\,
	sclr => \ALT_INV_estado_actual.esperando_paso~q\,
	ena => \contador_tiempo[25]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_tiempo(17));

-- Location: LCCOMB_X19_Y5_N10
\contador_tiempo[18]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_tiempo[18]~62_combout\ = (contador_tiempo(18) & (\contador_tiempo[17]~61\ $ (GND))) # (!contador_tiempo(18) & (!\contador_tiempo[17]~61\ & VCC))
-- \contador_tiempo[18]~63\ = CARRY((contador_tiempo(18) & !\contador_tiempo[17]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador_tiempo(18),
	datad => VCC,
	cin => \contador_tiempo[17]~61\,
	combout => \contador_tiempo[18]~62_combout\,
	cout => \contador_tiempo[18]~63\);

-- Location: FF_X19_Y5_N11
\contador_tiempo[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_tiempo[18]~62_combout\,
	sclr => \ALT_INV_estado_actual.esperando_paso~q\,
	ena => \contador_tiempo[25]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_tiempo(18));

-- Location: LCCOMB_X19_Y5_N12
\contador_tiempo[19]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_tiempo[19]~64_combout\ = (contador_tiempo(19) & (!\contador_tiempo[18]~63\)) # (!contador_tiempo(19) & ((\contador_tiempo[18]~63\) # (GND)))
-- \contador_tiempo[19]~65\ = CARRY((!\contador_tiempo[18]~63\) # (!contador_tiempo(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador_tiempo(19),
	datad => VCC,
	cin => \contador_tiempo[18]~63\,
	combout => \contador_tiempo[19]~64_combout\,
	cout => \contador_tiempo[19]~65\);

-- Location: FF_X19_Y5_N13
\contador_tiempo[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_tiempo[19]~64_combout\,
	sclr => \ALT_INV_estado_actual.esperando_paso~q\,
	ena => \contador_tiempo[25]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_tiempo(19));

-- Location: LCCOMB_X19_Y5_N14
\contador_tiempo[20]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_tiempo[20]~66_combout\ = (contador_tiempo(20) & (\contador_tiempo[19]~65\ $ (GND))) # (!contador_tiempo(20) & (!\contador_tiempo[19]~65\ & VCC))
-- \contador_tiempo[20]~67\ = CARRY((contador_tiempo(20) & !\contador_tiempo[19]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_tiempo(20),
	datad => VCC,
	cin => \contador_tiempo[19]~65\,
	combout => \contador_tiempo[20]~66_combout\,
	cout => \contador_tiempo[20]~67\);

-- Location: FF_X19_Y5_N15
\contador_tiempo[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_tiempo[20]~66_combout\,
	sclr => \ALT_INV_estado_actual.esperando_paso~q\,
	ena => \contador_tiempo[25]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_tiempo(20));

-- Location: LCCOMB_X19_Y5_N16
\contador_tiempo[21]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_tiempo[21]~68_combout\ = (contador_tiempo(21) & (!\contador_tiempo[20]~67\)) # (!contador_tiempo(21) & ((\contador_tiempo[20]~67\) # (GND)))
-- \contador_tiempo[21]~69\ = CARRY((!\contador_tiempo[20]~67\) # (!contador_tiempo(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_tiempo(21),
	datad => VCC,
	cin => \contador_tiempo[20]~67\,
	combout => \contador_tiempo[21]~68_combout\,
	cout => \contador_tiempo[21]~69\);

-- Location: FF_X19_Y5_N17
\contador_tiempo[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_tiempo[21]~68_combout\,
	sclr => \ALT_INV_estado_actual.esperando_paso~q\,
	ena => \contador_tiempo[25]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_tiempo(21));

-- Location: LCCOMB_X19_Y5_N18
\contador_tiempo[22]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_tiempo[22]~70_combout\ = (contador_tiempo(22) & (\contador_tiempo[21]~69\ $ (GND))) # (!contador_tiempo(22) & (!\contador_tiempo[21]~69\ & VCC))
-- \contador_tiempo[22]~71\ = CARRY((contador_tiempo(22) & !\contador_tiempo[21]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_tiempo(22),
	datad => VCC,
	cin => \contador_tiempo[21]~69\,
	combout => \contador_tiempo[22]~70_combout\,
	cout => \contador_tiempo[22]~71\);

-- Location: FF_X19_Y5_N19
\contador_tiempo[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_tiempo[22]~70_combout\,
	sclr => \ALT_INV_estado_actual.esperando_paso~q\,
	ena => \contador_tiempo[25]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_tiempo(22));

-- Location: LCCOMB_X19_Y5_N20
\contador_tiempo[23]~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_tiempo[23]~72_combout\ = (contador_tiempo(23) & (!\contador_tiempo[22]~71\)) # (!contador_tiempo(23) & ((\contador_tiempo[22]~71\) # (GND)))
-- \contador_tiempo[23]~73\ = CARRY((!\contador_tiempo[22]~71\) # (!contador_tiempo(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_tiempo(23),
	datad => VCC,
	cin => \contador_tiempo[22]~71\,
	combout => \contador_tiempo[23]~72_combout\,
	cout => \contador_tiempo[23]~73\);

-- Location: FF_X19_Y5_N21
\contador_tiempo[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_tiempo[23]~72_combout\,
	sclr => \ALT_INV_estado_actual.esperando_paso~q\,
	ena => \contador_tiempo[25]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_tiempo(23));

-- Location: FF_X19_Y5_N23
\contador_tiempo[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_tiempo[24]~74_combout\,
	sclr => \ALT_INV_estado_actual.esperando_paso~q\,
	ena => \contador_tiempo[25]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_tiempo(24));

-- Location: LCCOMB_X20_Y6_N22
\estado_siguiente~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \estado_siguiente~8_combout\ = (\estado_actual.esperando_paso~q\ & ((\LessThan0~6_combout\) # ((contador_tiempo(24) & contador_tiempo(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_actual.esperando_paso~q\,
	datab => contador_tiempo(24),
	datac => contador_tiempo(25),
	datad => \LessThan0~6_combout\,
	combout => \estado_siguiente~8_combout\);

-- Location: FF_X20_Y6_N23
\estado_siguiente.paso_exitoso\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estado_siguiente~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_siguiente.paso_exitoso~q\);

-- Location: FF_X20_Y6_N17
\estado_actual.paso_exitoso\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \estado_siguiente.paso_exitoso~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_actual.paso_exitoso~q\);

-- Location: LCCOMB_X20_Y6_N4
\Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (!\estado_actual.paso_exitoso~q\ & ((\estado_actual.esperando_vehiculo~q\) # (\vehiculo_det~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_actual.esperando_vehiculo~q\,
	datab => \estado_actual.paso_exitoso~q\,
	datad => \vehiculo_det~input_o\,
	combout => \Selector0~0_combout\);

-- Location: FF_X20_Y6_N5
\estado_siguiente.esperando_vehiculo\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_siguiente.esperando_vehiculo~q\);

-- Location: FF_X20_Y6_N31
\estado_actual.esperando_vehiculo\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \estado_siguiente.esperando_vehiculo~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_actual.esperando_vehiculo~q\);

-- Location: LCCOMB_X20_Y6_N12
\contador_tiempo[25]~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_tiempo[25]~79_combout\ = (!\estado_actual.esperando_vehiculo~q\ & \vehiculo_det~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estado_actual.esperando_vehiculo~q\,
	datad => \vehiculo_det~input_o\,
	combout => \contador_tiempo[25]~79_combout\);

-- Location: FF_X20_Y6_N13
\estado_siguiente.vehiculo_detectado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_tiempo[25]~79_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_siguiente.vehiculo_detectado~q\);

-- Location: LCCOMB_X20_Y6_N8
\estado_actual.vehiculo_detectado~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \estado_actual.vehiculo_detectado~feeder_combout\ = \estado_siguiente.vehiculo_detectado~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \estado_siguiente.vehiculo_detectado~q\,
	combout => \estado_actual.vehiculo_detectado~feeder_combout\);

-- Location: FF_X20_Y6_N9
\estado_actual.vehiculo_detectado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estado_actual.vehiculo_detectado~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_actual.vehiculo_detectado~q\);

-- Location: LCCOMB_X20_Y6_N26
\Selector1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = (\estado_actual.vehiculo_detectado~q\) # (\Selector1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estado_actual.vehiculo_detectado~q\,
	datad => \Selector1~0_combout\,
	combout => \Selector1~1_combout\);

-- Location: FF_X20_Y6_N27
\estado_siguiente.esperando_paso\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_siguiente.esperando_paso~q\);

-- Location: FF_X20_Y6_N21
\talanquera_abierta~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \estado_siguiente.esperando_paso~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \talanquera_abierta~reg0_q\);

ww_talanquera_abierta <= \talanquera_abierta~output_o\;
END structure;


