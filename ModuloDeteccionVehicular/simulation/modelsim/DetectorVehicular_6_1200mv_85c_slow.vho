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

-- DATE "05/12/2024 16:13:45"

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

ENTITY 	DetectorVehicular IS
    PORT (
	sensor_delantero : IN std_logic;
	sensor_trasero : IN std_logic;
	vehiculo_detectado : OUT std_logic
	);
END DetectorVehicular;

-- Design Ports Information
-- vehiculo_detectado	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sensor_delantero	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sensor_trasero	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF DetectorVehicular IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_sensor_delantero : std_logic;
SIGNAL ww_sensor_trasero : std_logic;
SIGNAL ww_vehiculo_detectado : std_logic;
SIGNAL \distancia_actual[1]~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \vehiculo_detectado~output_o\ : std_logic;
SIGNAL \sensor_delantero~input_o\ : std_logic;
SIGNAL \sensor_trasero~input_o\ : std_logic;
SIGNAL \Add0~64_combout\ : std_logic;
SIGNAL \Add0~159_combout\ : std_logic;
SIGNAL \distancia_actual[1]~0_combout\ : std_logic;
SIGNAL \distancia_actual[1]~0clkctrl_outclk\ : std_logic;
SIGNAL \Add0~65\ : std_logic;
SIGNAL \Add0~66_combout\ : std_logic;
SIGNAL \Add0~137_combout\ : std_logic;
SIGNAL \Add0~67\ : std_logic;
SIGNAL \Add0~68_combout\ : std_logic;
SIGNAL \Add0~138_combout\ : std_logic;
SIGNAL \Add0~69\ : std_logic;
SIGNAL \Add0~70_combout\ : std_logic;
SIGNAL \Add0~139_combout\ : std_logic;
SIGNAL \Add0~71\ : std_logic;
SIGNAL \Add0~72_combout\ : std_logic;
SIGNAL \Add0~140_combout\ : std_logic;
SIGNAL \Add0~73\ : std_logic;
SIGNAL \Add0~74_combout\ : std_logic;
SIGNAL \Add0~141_combout\ : std_logic;
SIGNAL \Add0~75\ : std_logic;
SIGNAL \Add0~76_combout\ : std_logic;
SIGNAL \Add0~142_combout\ : std_logic;
SIGNAL \Add0~77\ : std_logic;
SIGNAL \Add0~78_combout\ : std_logic;
SIGNAL \Add0~143_combout\ : std_logic;
SIGNAL \Add0~79\ : std_logic;
SIGNAL \Add0~80_combout\ : std_logic;
SIGNAL \Add0~144_combout\ : std_logic;
SIGNAL \Add0~81\ : std_logic;
SIGNAL \Add0~82_combout\ : std_logic;
SIGNAL \Add0~145_combout\ : std_logic;
SIGNAL \Add0~83\ : std_logic;
SIGNAL \Add0~84_combout\ : std_logic;
SIGNAL \Add0~146_combout\ : std_logic;
SIGNAL \Add0~85\ : std_logic;
SIGNAL \Add0~86_combout\ : std_logic;
SIGNAL \Add0~147_combout\ : std_logic;
SIGNAL \Add0~87\ : std_logic;
SIGNAL \Add0~88_combout\ : std_logic;
SIGNAL \Add0~148_combout\ : std_logic;
SIGNAL \Add0~89\ : std_logic;
SIGNAL \Add0~90_combout\ : std_logic;
SIGNAL \Add0~149_combout\ : std_logic;
SIGNAL \Add0~91\ : std_logic;
SIGNAL \Add0~92_combout\ : std_logic;
SIGNAL \Add0~150_combout\ : std_logic;
SIGNAL \Add0~93\ : std_logic;
SIGNAL \Add0~94_combout\ : std_logic;
SIGNAL \Add0~151_combout\ : std_logic;
SIGNAL \Add0~95\ : std_logic;
SIGNAL \Add0~96_combout\ : std_logic;
SIGNAL \Add0~152_combout\ : std_logic;
SIGNAL \Add0~97\ : std_logic;
SIGNAL \Add0~98_combout\ : std_logic;
SIGNAL \Add0~129_combout\ : std_logic;
SIGNAL \Add0~99\ : std_logic;
SIGNAL \Add0~100_combout\ : std_logic;
SIGNAL \Add0~130_combout\ : std_logic;
SIGNAL \Add0~101\ : std_logic;
SIGNAL \Add0~102_combout\ : std_logic;
SIGNAL \Add0~131_combout\ : std_logic;
SIGNAL \Add0~103\ : std_logic;
SIGNAL \Add0~104_combout\ : std_logic;
SIGNAL \Add0~132_combout\ : std_logic;
SIGNAL \Add0~105\ : std_logic;
SIGNAL \Add0~106_combout\ : std_logic;
SIGNAL \Add0~133_combout\ : std_logic;
SIGNAL \Add0~107\ : std_logic;
SIGNAL \Add0~108_combout\ : std_logic;
SIGNAL \Add0~134_combout\ : std_logic;
SIGNAL \Add0~109\ : std_logic;
SIGNAL \Add0~110_combout\ : std_logic;
SIGNAL \Add0~135_combout\ : std_logic;
SIGNAL \Add0~111\ : std_logic;
SIGNAL \Add0~112_combout\ : std_logic;
SIGNAL \Add0~136_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \Add0~113\ : std_logic;
SIGNAL \Add0~114_combout\ : std_logic;
SIGNAL \Add0~153_combout\ : std_logic;
SIGNAL \Add0~115\ : std_logic;
SIGNAL \Add0~116_combout\ : std_logic;
SIGNAL \Add0~154_combout\ : std_logic;
SIGNAL \Add0~117\ : std_logic;
SIGNAL \Add0~118_combout\ : std_logic;
SIGNAL \Add0~155_combout\ : std_logic;
SIGNAL \Add0~119\ : std_logic;
SIGNAL \Add0~120_combout\ : std_logic;
SIGNAL \Add0~156_combout\ : std_logic;
SIGNAL \Add0~121\ : std_logic;
SIGNAL \Add0~122_combout\ : std_logic;
SIGNAL \Add0~157_combout\ : std_logic;
SIGNAL \Add0~123\ : std_logic;
SIGNAL \Add0~124_combout\ : std_logic;
SIGNAL \Add0~158_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \estado_siguiente~0_combout\ : std_logic;
SIGNAL \estado_siguiente~1_combout\ : std_logic;
SIGNAL \estado_siguiente~2_combout\ : std_logic;
SIGNAL \Add0~125\ : std_logic;
SIGNAL \Add0~126_combout\ : std_logic;
SIGNAL \Add0~128_combout\ : std_logic;
SIGNAL \estado_siguiente~3_combout\ : std_logic;
SIGNAL distancia_actual : std_logic_vector(31 DOWNTO 0);

BEGIN

ww_sensor_delantero <= sensor_delantero;
ww_sensor_trasero <= sensor_trasero;
vehiculo_detectado <= ww_vehiculo_detectado;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\distancia_actual[1]~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \distancia_actual[1]~0_combout\);

-- Location: IOOBUF_X0_Y11_N9
\vehiculo_detectado~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \estado_siguiente~3_combout\,
	devoe => ww_devoe,
	o => \vehiculo_detectado~output_o\);

-- Location: IOIBUF_X0_Y11_N1
\sensor_delantero~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sensor_delantero,
	o => \sensor_delantero~input_o\);

-- Location: IOIBUF_X0_Y12_N8
\sensor_trasero~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sensor_trasero,
	o => \sensor_trasero~input_o\);

-- Location: LCCOMB_X7_Y12_N0
\Add0~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~64_combout\ = distancia_actual(0) $ (VCC)
-- \Add0~65\ = CARRY(distancia_actual(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => distancia_actual(0),
	datad => VCC,
	combout => \Add0~64_combout\,
	cout => \Add0~65\);

-- Location: LCCOMB_X8_Y12_N10
\Add0~159\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~159_combout\ = (\Add0~64_combout\ & (\estado_siguiente~3_combout\ & ((\sensor_delantero~input_o\) # (\sensor_trasero~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~64_combout\,
	datab => \sensor_delantero~input_o\,
	datac => \estado_siguiente~3_combout\,
	datad => \sensor_trasero~input_o\,
	combout => \Add0~159_combout\);

-- Location: LCCOMB_X1_Y11_N0
\distancia_actual[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \distancia_actual[1]~0_combout\ = (\sensor_trasero~input_o\) # ((\sensor_delantero~input_o\) # (\estado_siguiente~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensor_trasero~input_o\,
	datac => \sensor_delantero~input_o\,
	datad => \estado_siguiente~3_combout\,
	combout => \distancia_actual[1]~0_combout\);

-- Location: CLKCTRL_G2
\distancia_actual[1]~0clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \distancia_actual[1]~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \distancia_actual[1]~0clkctrl_outclk\);

-- Location: LCCOMB_X8_Y12_N20
\distancia_actual[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- distancia_actual(0) = (GLOBAL(\distancia_actual[1]~0clkctrl_outclk\) & ((\Add0~159_combout\))) # (!GLOBAL(\distancia_actual[1]~0clkctrl_outclk\) & (distancia_actual(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => distancia_actual(0),
	datac => \Add0~159_combout\,
	datad => \distancia_actual[1]~0clkctrl_outclk\,
	combout => distancia_actual(0));

-- Location: LCCOMB_X7_Y12_N2
\Add0~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~66_combout\ = (distancia_actual(1) & (!\Add0~65\)) # (!distancia_actual(1) & ((\Add0~65\) # (GND)))
-- \Add0~67\ = CARRY((!\Add0~65\) # (!distancia_actual(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => distancia_actual(1),
	datad => VCC,
	cin => \Add0~65\,
	combout => \Add0~66_combout\,
	cout => \Add0~67\);

-- Location: LCCOMB_X8_Y12_N22
\Add0~137\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~137_combout\ = (\estado_siguiente~3_combout\ & (\Add0~66_combout\ & ((\sensor_trasero~input_o\) # (\sensor_delantero~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensor_trasero~input_o\,
	datab => \sensor_delantero~input_o\,
	datac => \estado_siguiente~3_combout\,
	datad => \Add0~66_combout\,
	combout => \Add0~137_combout\);

-- Location: LCCOMB_X8_Y12_N24
\distancia_actual[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- distancia_actual(1) = (GLOBAL(\distancia_actual[1]~0clkctrl_outclk\) & (\Add0~137_combout\)) # (!GLOBAL(\distancia_actual[1]~0clkctrl_outclk\) & ((distancia_actual(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~137_combout\,
	datac => distancia_actual(1),
	datad => \distancia_actual[1]~0clkctrl_outclk\,
	combout => distancia_actual(1));

-- Location: LCCOMB_X7_Y12_N4
\Add0~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~68_combout\ = (distancia_actual(2) & (\Add0~67\ $ (GND))) # (!distancia_actual(2) & (!\Add0~67\ & VCC))
-- \Add0~69\ = CARRY((distancia_actual(2) & !\Add0~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => distancia_actual(2),
	datad => VCC,
	cin => \Add0~67\,
	combout => \Add0~68_combout\,
	cout => \Add0~69\);

-- Location: LCCOMB_X8_Y12_N28
\Add0~138\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~138_combout\ = (\Add0~68_combout\ & (\estado_siguiente~3_combout\ & ((\sensor_trasero~input_o\) # (\sensor_delantero~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensor_trasero~input_o\,
	datab => \sensor_delantero~input_o\,
	datac => \Add0~68_combout\,
	datad => \estado_siguiente~3_combout\,
	combout => \Add0~138_combout\);

-- Location: LCCOMB_X8_Y12_N6
\distancia_actual[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- distancia_actual(2) = (GLOBAL(\distancia_actual[1]~0clkctrl_outclk\) & ((\Add0~138_combout\))) # (!GLOBAL(\distancia_actual[1]~0clkctrl_outclk\) & (distancia_actual(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => distancia_actual(2),
	datab => \Add0~138_combout\,
	datad => \distancia_actual[1]~0clkctrl_outclk\,
	combout => distancia_actual(2));

-- Location: LCCOMB_X7_Y12_N6
\Add0~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~70_combout\ = (distancia_actual(3) & (!\Add0~69\)) # (!distancia_actual(3) & ((\Add0~69\) # (GND)))
-- \Add0~71\ = CARRY((!\Add0~69\) # (!distancia_actual(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => distancia_actual(3),
	datad => VCC,
	cin => \Add0~69\,
	combout => \Add0~70_combout\,
	cout => \Add0~71\);

-- Location: LCCOMB_X8_Y12_N26
\Add0~139\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~139_combout\ = (\Add0~70_combout\ & (\estado_siguiente~3_combout\ & ((\sensor_trasero~input_o\) # (\sensor_delantero~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensor_trasero~input_o\,
	datab => \sensor_delantero~input_o\,
	datac => \Add0~70_combout\,
	datad => \estado_siguiente~3_combout\,
	combout => \Add0~139_combout\);

-- Location: LCCOMB_X8_Y12_N4
\distancia_actual[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- distancia_actual(3) = (GLOBAL(\distancia_actual[1]~0clkctrl_outclk\) & (\Add0~139_combout\)) # (!GLOBAL(\distancia_actual[1]~0clkctrl_outclk\) & ((distancia_actual(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~139_combout\,
	datac => distancia_actual(3),
	datad => \distancia_actual[1]~0clkctrl_outclk\,
	combout => distancia_actual(3));

-- Location: LCCOMB_X7_Y12_N8
\Add0~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~72_combout\ = (distancia_actual(4) & (\Add0~71\ $ (GND))) # (!distancia_actual(4) & (!\Add0~71\ & VCC))
-- \Add0~73\ = CARRY((distancia_actual(4) & !\Add0~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => distancia_actual(4),
	datad => VCC,
	cin => \Add0~71\,
	combout => \Add0~72_combout\,
	cout => \Add0~73\);

-- Location: LCCOMB_X8_Y12_N12
\Add0~140\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~140_combout\ = (\estado_siguiente~3_combout\ & (\Add0~72_combout\ & ((\sensor_trasero~input_o\) # (\sensor_delantero~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensor_trasero~input_o\,
	datab => \sensor_delantero~input_o\,
	datac => \estado_siguiente~3_combout\,
	datad => \Add0~72_combout\,
	combout => \Add0~140_combout\);

-- Location: LCCOMB_X8_Y12_N18
\distancia_actual[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- distancia_actual(4) = (GLOBAL(\distancia_actual[1]~0clkctrl_outclk\) & (\Add0~140_combout\)) # (!GLOBAL(\distancia_actual[1]~0clkctrl_outclk\) & ((distancia_actual(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~140_combout\,
	datac => distancia_actual(4),
	datad => \distancia_actual[1]~0clkctrl_outclk\,
	combout => distancia_actual(4));

-- Location: LCCOMB_X7_Y12_N10
\Add0~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~74_combout\ = (distancia_actual(5) & (!\Add0~73\)) # (!distancia_actual(5) & ((\Add0~73\) # (GND)))
-- \Add0~75\ = CARRY((!\Add0~73\) # (!distancia_actual(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => distancia_actual(5),
	datad => VCC,
	cin => \Add0~73\,
	combout => \Add0~74_combout\,
	cout => \Add0~75\);

-- Location: LCCOMB_X6_Y12_N22
\Add0~141\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~141_combout\ = (\Add0~74_combout\ & (\estado_siguiente~3_combout\ & ((\sensor_delantero~input_o\) # (\sensor_trasero~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensor_delantero~input_o\,
	datab => \sensor_trasero~input_o\,
	datac => \Add0~74_combout\,
	datad => \estado_siguiente~3_combout\,
	combout => \Add0~141_combout\);

-- Location: LCCOMB_X6_Y12_N0
\distancia_actual[5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- distancia_actual(5) = (GLOBAL(\distancia_actual[1]~0clkctrl_outclk\) & (\Add0~141_combout\)) # (!GLOBAL(\distancia_actual[1]~0clkctrl_outclk\) & ((distancia_actual(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~141_combout\,
	datac => distancia_actual(5),
	datad => \distancia_actual[1]~0clkctrl_outclk\,
	combout => distancia_actual(5));

-- Location: LCCOMB_X7_Y12_N12
\Add0~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~76_combout\ = (distancia_actual(6) & (\Add0~75\ $ (GND))) # (!distancia_actual(6) & (!\Add0~75\ & VCC))
-- \Add0~77\ = CARRY((distancia_actual(6) & !\Add0~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => distancia_actual(6),
	datad => VCC,
	cin => \Add0~75\,
	combout => \Add0~76_combout\,
	cout => \Add0~77\);

-- Location: LCCOMB_X6_Y12_N4
\Add0~142\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~142_combout\ = (\Add0~76_combout\ & (\estado_siguiente~3_combout\ & ((\sensor_delantero~input_o\) # (\sensor_trasero~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensor_delantero~input_o\,
	datab => \sensor_trasero~input_o\,
	datac => \Add0~76_combout\,
	datad => \estado_siguiente~3_combout\,
	combout => \Add0~142_combout\);

-- Location: LCCOMB_X6_Y12_N14
\distancia_actual[6]\ : cycloneiii_lcell_comb
-- Equation(s):
-- distancia_actual(6) = (GLOBAL(\distancia_actual[1]~0clkctrl_outclk\) & (\Add0~142_combout\)) # (!GLOBAL(\distancia_actual[1]~0clkctrl_outclk\) & ((distancia_actual(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~142_combout\,
	datac => distancia_actual(6),
	datad => \distancia_actual[1]~0clkctrl_outclk\,
	combout => distancia_actual(6));

-- Location: LCCOMB_X7_Y12_N14
\Add0~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~78_combout\ = (distancia_actual(7) & (!\Add0~77\)) # (!distancia_actual(7) & ((\Add0~77\) # (GND)))
-- \Add0~79\ = CARRY((!\Add0~77\) # (!distancia_actual(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => distancia_actual(7),
	datad => VCC,
	cin => \Add0~77\,
	combout => \Add0~78_combout\,
	cout => \Add0~79\);

-- Location: LCCOMB_X6_Y12_N6
\Add0~143\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~143_combout\ = (\Add0~78_combout\ & (\estado_siguiente~3_combout\ & ((\sensor_delantero~input_o\) # (\sensor_trasero~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensor_delantero~input_o\,
	datab => \sensor_trasero~input_o\,
	datac => \Add0~78_combout\,
	datad => \estado_siguiente~3_combout\,
	combout => \Add0~143_combout\);

-- Location: LCCOMB_X6_Y12_N16
\distancia_actual[7]\ : cycloneiii_lcell_comb
-- Equation(s):
-- distancia_actual(7) = (GLOBAL(\distancia_actual[1]~0clkctrl_outclk\) & ((\Add0~143_combout\))) # (!GLOBAL(\distancia_actual[1]~0clkctrl_outclk\) & (distancia_actual(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => distancia_actual(7),
	datac => \Add0~143_combout\,
	datad => \distancia_actual[1]~0clkctrl_outclk\,
	combout => distancia_actual(7));

-- Location: LCCOMB_X7_Y12_N16
\Add0~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~80_combout\ = (distancia_actual(8) & (\Add0~79\ $ (GND))) # (!distancia_actual(8) & (!\Add0~79\ & VCC))
-- \Add0~81\ = CARRY((distancia_actual(8) & !\Add0~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => distancia_actual(8),
	datad => VCC,
	cin => \Add0~79\,
	combout => \Add0~80_combout\,
	cout => \Add0~81\);

-- Location: LCCOMB_X6_Y12_N28
\Add0~144\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~144_combout\ = (\Add0~80_combout\ & (\estado_siguiente~3_combout\ & ((\sensor_delantero~input_o\) # (\sensor_trasero~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensor_delantero~input_o\,
	datab => \Add0~80_combout\,
	datac => \sensor_trasero~input_o\,
	datad => \estado_siguiente~3_combout\,
	combout => \Add0~144_combout\);

-- Location: LCCOMB_X6_Y12_N30
\distancia_actual[8]\ : cycloneiii_lcell_comb
-- Equation(s):
-- distancia_actual(8) = (GLOBAL(\distancia_actual[1]~0clkctrl_outclk\) & (\Add0~144_combout\)) # (!GLOBAL(\distancia_actual[1]~0clkctrl_outclk\) & ((distancia_actual(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~144_combout\,
	datac => distancia_actual(8),
	datad => \distancia_actual[1]~0clkctrl_outclk\,
	combout => distancia_actual(8));

-- Location: LCCOMB_X7_Y12_N18
\Add0~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~82_combout\ = (distancia_actual(9) & (!\Add0~81\)) # (!distancia_actual(9) & ((\Add0~81\) # (GND)))
-- \Add0~83\ = CARRY((!\Add0~81\) # (!distancia_actual(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => distancia_actual(9),
	datad => VCC,
	cin => \Add0~81\,
	combout => \Add0~82_combout\,
	cout => \Add0~83\);

-- Location: LCCOMB_X5_Y11_N6
\Add0~145\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~145_combout\ = (\estado_siguiente~3_combout\ & (\Add0~82_combout\ & ((\sensor_trasero~input_o\) # (\sensor_delantero~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_siguiente~3_combout\,
	datab => \sensor_trasero~input_o\,
	datac => \sensor_delantero~input_o\,
	datad => \Add0~82_combout\,
	combout => \Add0~145_combout\);

-- Location: LCCOMB_X5_Y11_N0
\distancia_actual[9]\ : cycloneiii_lcell_comb
-- Equation(s):
-- distancia_actual(9) = (GLOBAL(\distancia_actual[1]~0clkctrl_outclk\) & (\Add0~145_combout\)) # (!GLOBAL(\distancia_actual[1]~0clkctrl_outclk\) & ((distancia_actual(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~145_combout\,
	datac => distancia_actual(9),
	datad => \distancia_actual[1]~0clkctrl_outclk\,
	combout => distancia_actual(9));

-- Location: LCCOMB_X7_Y12_N20
\Add0~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~84_combout\ = (distancia_actual(10) & (\Add0~83\ $ (GND))) # (!distancia_actual(10) & (!\Add0~83\ & VCC))
-- \Add0~85\ = CARRY((distancia_actual(10) & !\Add0~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => distancia_actual(10),
	datad => VCC,
	cin => \Add0~83\,
	combout => \Add0~84_combout\,
	cout => \Add0~85\);

-- Location: LCCOMB_X5_Y11_N18
\Add0~146\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~146_combout\ = (\estado_siguiente~3_combout\ & (\Add0~84_combout\ & ((\sensor_trasero~input_o\) # (\sensor_delantero~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_siguiente~3_combout\,
	datab => \sensor_trasero~input_o\,
	datac => \sensor_delantero~input_o\,
	datad => \Add0~84_combout\,
	combout => \Add0~146_combout\);

-- Location: LCCOMB_X5_Y11_N30
\distancia_actual[10]\ : cycloneiii_lcell_comb
-- Equation(s):
-- distancia_actual(10) = (GLOBAL(\distancia_actual[1]~0clkctrl_outclk\) & (\Add0~146_combout\)) # (!GLOBAL(\distancia_actual[1]~0clkctrl_outclk\) & ((distancia_actual(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~146_combout\,
	datac => distancia_actual(10),
	datad => \distancia_actual[1]~0clkctrl_outclk\,
	combout => distancia_actual(10));

-- Location: LCCOMB_X7_Y12_N22
\Add0~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~86_combout\ = (distancia_actual(11) & (!\Add0~85\)) # (!distancia_actual(11) & ((\Add0~85\) # (GND)))
-- \Add0~87\ = CARRY((!\Add0~85\) # (!distancia_actual(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => distancia_actual(11),
	datad => VCC,
	cin => \Add0~85\,
	combout => \Add0~86_combout\,
	cout => \Add0~87\);

-- Location: LCCOMB_X5_Y11_N16
\Add0~147\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~147_combout\ = (\estado_siguiente~3_combout\ & (\Add0~86_combout\ & ((\sensor_trasero~input_o\) # (\sensor_delantero~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_siguiente~3_combout\,
	datab => \sensor_trasero~input_o\,
	datac => \sensor_delantero~input_o\,
	datad => \Add0~86_combout\,
	combout => \Add0~147_combout\);

-- Location: LCCOMB_X5_Y11_N8
\distancia_actual[11]\ : cycloneiii_lcell_comb
-- Equation(s):
-- distancia_actual(11) = (GLOBAL(\distancia_actual[1]~0clkctrl_outclk\) & (\Add0~147_combout\)) # (!GLOBAL(\distancia_actual[1]~0clkctrl_outclk\) & ((distancia_actual(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~147_combout\,
	datac => distancia_actual(11),
	datad => \distancia_actual[1]~0clkctrl_outclk\,
	combout => distancia_actual(11));

-- Location: LCCOMB_X7_Y12_N24
\Add0~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~88_combout\ = (distancia_actual(12) & (\Add0~87\ $ (GND))) # (!distancia_actual(12) & (!\Add0~87\ & VCC))
-- \Add0~89\ = CARRY((distancia_actual(12) & !\Add0~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => distancia_actual(12),
	datad => VCC,
	cin => \Add0~87\,
	combout => \Add0~88_combout\,
	cout => \Add0~89\);

-- Location: LCCOMB_X5_Y11_N12
\Add0~148\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~148_combout\ = (\estado_siguiente~3_combout\ & (\Add0~88_combout\ & ((\sensor_trasero~input_o\) # (\sensor_delantero~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_siguiente~3_combout\,
	datab => \sensor_trasero~input_o\,
	datac => \sensor_delantero~input_o\,
	datad => \Add0~88_combout\,
	combout => \Add0~148_combout\);

-- Location: LCCOMB_X5_Y11_N26
\distancia_actual[12]\ : cycloneiii_lcell_comb
-- Equation(s):
-- distancia_actual(12) = (GLOBAL(\distancia_actual[1]~0clkctrl_outclk\) & (\Add0~148_combout\)) # (!GLOBAL(\distancia_actual[1]~0clkctrl_outclk\) & ((distancia_actual(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~148_combout\,
	datac => distancia_actual(12),
	datad => \distancia_actual[1]~0clkctrl_outclk\,
	combout => distancia_actual(12));

-- Location: LCCOMB_X7_Y12_N26
\Add0~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~90_combout\ = (distancia_actual(13) & (!\Add0~89\)) # (!distancia_actual(13) & ((\Add0~89\) # (GND)))
-- \Add0~91\ = CARRY((!\Add0~89\) # (!distancia_actual(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => distancia_actual(13),
	datad => VCC,
	cin => \Add0~89\,
	combout => \Add0~90_combout\,
	cout => \Add0~91\);

-- Location: LCCOMB_X6_Y11_N10
\Add0~149\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~149_combout\ = (\estado_siguiente~3_combout\ & (\Add0~90_combout\ & ((\sensor_delantero~input_o\) # (\sensor_trasero~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensor_delantero~input_o\,
	datab => \sensor_trasero~input_o\,
	datac => \estado_siguiente~3_combout\,
	datad => \Add0~90_combout\,
	combout => \Add0~149_combout\);

-- Location: LCCOMB_X6_Y11_N0
\distancia_actual[13]\ : cycloneiii_lcell_comb
-- Equation(s):
-- distancia_actual(13) = (GLOBAL(\distancia_actual[1]~0clkctrl_outclk\) & (\Add0~149_combout\)) # (!GLOBAL(\distancia_actual[1]~0clkctrl_outclk\) & ((distancia_actual(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~149_combout\,
	datac => distancia_actual(13),
	datad => \distancia_actual[1]~0clkctrl_outclk\,
	combout => distancia_actual(13));

-- Location: LCCOMB_X7_Y12_N28
\Add0~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~92_combout\ = (distancia_actual(14) & (\Add0~91\ $ (GND))) # (!distancia_actual(14) & (!\Add0~91\ & VCC))
-- \Add0~93\ = CARRY((distancia_actual(14) & !\Add0~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => distancia_actual(14),
	datad => VCC,
	cin => \Add0~91\,
	combout => \Add0~92_combout\,
	cout => \Add0~93\);

-- Location: LCCOMB_X6_Y11_N20
\Add0~150\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~150_combout\ = (\estado_siguiente~3_combout\ & (\Add0~92_combout\ & ((\sensor_delantero~input_o\) # (\sensor_trasero~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensor_delantero~input_o\,
	datab => \sensor_trasero~input_o\,
	datac => \estado_siguiente~3_combout\,
	datad => \Add0~92_combout\,
	combout => \Add0~150_combout\);

-- Location: LCCOMB_X6_Y11_N18
\distancia_actual[14]\ : cycloneiii_lcell_comb
-- Equation(s):
-- distancia_actual(14) = (GLOBAL(\distancia_actual[1]~0clkctrl_outclk\) & (\Add0~150_combout\)) # (!GLOBAL(\distancia_actual[1]~0clkctrl_outclk\) & ((distancia_actual(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~150_combout\,
	datac => distancia_actual(14),
	datad => \distancia_actual[1]~0clkctrl_outclk\,
	combout => distancia_actual(14));

-- Location: LCCOMB_X7_Y12_N30
\Add0~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~94_combout\ = (distancia_actual(15) & (!\Add0~93\)) # (!distancia_actual(15) & ((\Add0~93\) # (GND)))
-- \Add0~95\ = CARRY((!\Add0~93\) # (!distancia_actual(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => distancia_actual(15),
	datad => VCC,
	cin => \Add0~93\,
	combout => \Add0~94_combout\,
	cout => \Add0~95\);

-- Location: LCCOMB_X6_Y11_N2
\Add0~151\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~151_combout\ = (\estado_siguiente~3_combout\ & (\Add0~94_combout\ & ((\sensor_delantero~input_o\) # (\sensor_trasero~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensor_delantero~input_o\,
	datab => \sensor_trasero~input_o\,
	datac => \estado_siguiente~3_combout\,
	datad => \Add0~94_combout\,
	combout => \Add0~151_combout\);

-- Location: LCCOMB_X6_Y11_N4
\distancia_actual[15]\ : cycloneiii_lcell_comb
-- Equation(s):
-- distancia_actual(15) = (GLOBAL(\distancia_actual[1]~0clkctrl_outclk\) & (\Add0~151_combout\)) # (!GLOBAL(\distancia_actual[1]~0clkctrl_outclk\) & ((distancia_actual(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~151_combout\,
	datac => distancia_actual(15),
	datad => \distancia_actual[1]~0clkctrl_outclk\,
	combout => distancia_actual(15));

-- Location: LCCOMB_X7_Y11_N0
\Add0~96\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~96_combout\ = (distancia_actual(16) & (\Add0~95\ $ (GND))) # (!distancia_actual(16) & (!\Add0~95\ & VCC))
-- \Add0~97\ = CARRY((distancia_actual(16) & !\Add0~95\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => distancia_actual(16),
	datad => VCC,
	cin => \Add0~95\,
	combout => \Add0~96_combout\,
	cout => \Add0~97\);

-- Location: LCCOMB_X6_Y11_N16
\Add0~152\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~152_combout\ = (\estado_siguiente~3_combout\ & (\Add0~96_combout\ & ((\sensor_trasero~input_o\) # (\sensor_delantero~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_siguiente~3_combout\,
	datab => \sensor_trasero~input_o\,
	datac => \Add0~96_combout\,
	datad => \sensor_delantero~input_o\,
	combout => \Add0~152_combout\);

-- Location: LCCOMB_X6_Y11_N30
\distancia_actual[16]\ : cycloneiii_lcell_comb
-- Equation(s):
-- distancia_actual(16) = (GLOBAL(\distancia_actual[1]~0clkctrl_outclk\) & (\Add0~152_combout\)) # (!GLOBAL(\distancia_actual[1]~0clkctrl_outclk\) & ((distancia_actual(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~152_combout\,
	datac => distancia_actual(16),
	datad => \distancia_actual[1]~0clkctrl_outclk\,
	combout => distancia_actual(16));

-- Location: LCCOMB_X7_Y11_N2
\Add0~98\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~98_combout\ = (distancia_actual(17) & (!\Add0~97\)) # (!distancia_actual(17) & ((\Add0~97\) # (GND)))
-- \Add0~99\ = CARRY((!\Add0~97\) # (!distancia_actual(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => distancia_actual(17),
	datad => VCC,
	cin => \Add0~97\,
	combout => \Add0~98_combout\,
	cout => \Add0~99\);

-- Location: LCCOMB_X6_Y12_N12
\Add0~129\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~129_combout\ = (\estado_siguiente~3_combout\ & (\Add0~98_combout\ & ((\sensor_trasero~input_o\) # (\sensor_delantero~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_siguiente~3_combout\,
	datab => \sensor_trasero~input_o\,
	datac => \sensor_delantero~input_o\,
	datad => \Add0~98_combout\,
	combout => \Add0~129_combout\);

-- Location: LCCOMB_X6_Y12_N18
\distancia_actual[17]\ : cycloneiii_lcell_comb
-- Equation(s):
-- distancia_actual(17) = (GLOBAL(\distancia_actual[1]~0clkctrl_outclk\) & (\Add0~129_combout\)) # (!GLOBAL(\distancia_actual[1]~0clkctrl_outclk\) & ((distancia_actual(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~129_combout\,
	datac => distancia_actual(17),
	datad => \distancia_actual[1]~0clkctrl_outclk\,
	combout => distancia_actual(17));

-- Location: LCCOMB_X7_Y11_N4
\Add0~100\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~100_combout\ = (distancia_actual(18) & (\Add0~99\ $ (GND))) # (!distancia_actual(18) & (!\Add0~99\ & VCC))
-- \Add0~101\ = CARRY((distancia_actual(18) & !\Add0~99\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => distancia_actual(18),
	datad => VCC,
	cin => \Add0~99\,
	combout => \Add0~100_combout\,
	cout => \Add0~101\);

-- Location: LCCOMB_X6_Y12_N26
\Add0~130\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~130_combout\ = (\estado_siguiente~3_combout\ & (\Add0~100_combout\ & ((\sensor_trasero~input_o\) # (\sensor_delantero~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_siguiente~3_combout\,
	datab => \sensor_trasero~input_o\,
	datac => \sensor_delantero~input_o\,
	datad => \Add0~100_combout\,
	combout => \Add0~130_combout\);

-- Location: LCCOMB_X6_Y12_N24
\distancia_actual[18]\ : cycloneiii_lcell_comb
-- Equation(s):
-- distancia_actual(18) = (GLOBAL(\distancia_actual[1]~0clkctrl_outclk\) & (\Add0~130_combout\)) # (!GLOBAL(\distancia_actual[1]~0clkctrl_outclk\) & ((distancia_actual(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~130_combout\,
	datac => distancia_actual(18),
	datad => \distancia_actual[1]~0clkctrl_outclk\,
	combout => distancia_actual(18));

-- Location: LCCOMB_X7_Y11_N6
\Add0~102\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~102_combout\ = (distancia_actual(19) & (!\Add0~101\)) # (!distancia_actual(19) & ((\Add0~101\) # (GND)))
-- \Add0~103\ = CARRY((!\Add0~101\) # (!distancia_actual(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => distancia_actual(19),
	datad => VCC,
	cin => \Add0~101\,
	combout => \Add0~102_combout\,
	cout => \Add0~103\);

-- Location: LCCOMB_X6_Y12_N8
\Add0~131\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~131_combout\ = (\Add0~102_combout\ & (\estado_siguiente~3_combout\ & ((\sensor_delantero~input_o\) # (\sensor_trasero~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensor_delantero~input_o\,
	datab => \sensor_trasero~input_o\,
	datac => \Add0~102_combout\,
	datad => \estado_siguiente~3_combout\,
	combout => \Add0~131_combout\);

-- Location: LCCOMB_X6_Y12_N2
\distancia_actual[19]\ : cycloneiii_lcell_comb
-- Equation(s):
-- distancia_actual(19) = (GLOBAL(\distancia_actual[1]~0clkctrl_outclk\) & ((\Add0~131_combout\))) # (!GLOBAL(\distancia_actual[1]~0clkctrl_outclk\) & (distancia_actual(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => distancia_actual(19),
	datac => \Add0~131_combout\,
	datad => \distancia_actual[1]~0clkctrl_outclk\,
	combout => distancia_actual(19));

-- Location: LCCOMB_X7_Y11_N8
\Add0~104\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~104_combout\ = (distancia_actual(20) & (\Add0~103\ $ (GND))) # (!distancia_actual(20) & (!\Add0~103\ & VCC))
-- \Add0~105\ = CARRY((distancia_actual(20) & !\Add0~103\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => distancia_actual(20),
	datad => VCC,
	cin => \Add0~103\,
	combout => \Add0~104_combout\,
	cout => \Add0~105\);

-- Location: LCCOMB_X5_Y11_N10
\Add0~132\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~132_combout\ = (\estado_siguiente~3_combout\ & (\Add0~104_combout\ & ((\sensor_trasero~input_o\) # (\sensor_delantero~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_siguiente~3_combout\,
	datab => \sensor_trasero~input_o\,
	datac => \sensor_delantero~input_o\,
	datad => \Add0~104_combout\,
	combout => \Add0~132_combout\);

-- Location: LCCOMB_X5_Y11_N4
\distancia_actual[20]\ : cycloneiii_lcell_comb
-- Equation(s):
-- distancia_actual(20) = (GLOBAL(\distancia_actual[1]~0clkctrl_outclk\) & (\Add0~132_combout\)) # (!GLOBAL(\distancia_actual[1]~0clkctrl_outclk\) & ((distancia_actual(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~132_combout\,
	datac => distancia_actual(20),
	datad => \distancia_actual[1]~0clkctrl_outclk\,
	combout => distancia_actual(20));

-- Location: LCCOMB_X7_Y11_N10
\Add0~106\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~106_combout\ = (distancia_actual(21) & (!\Add0~105\)) # (!distancia_actual(21) & ((\Add0~105\) # (GND)))
-- \Add0~107\ = CARRY((!\Add0~105\) # (!distancia_actual(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => distancia_actual(21),
	datad => VCC,
	cin => \Add0~105\,
	combout => \Add0~106_combout\,
	cout => \Add0~107\);

-- Location: LCCOMB_X6_Y11_N12
\Add0~133\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~133_combout\ = (\estado_siguiente~3_combout\ & (\Add0~106_combout\ & ((\sensor_trasero~input_o\) # (\sensor_delantero~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_siguiente~3_combout\,
	datab => \sensor_trasero~input_o\,
	datac => \Add0~106_combout\,
	datad => \sensor_delantero~input_o\,
	combout => \Add0~133_combout\);

-- Location: LCCOMB_X6_Y11_N14
\distancia_actual[21]\ : cycloneiii_lcell_comb
-- Equation(s):
-- distancia_actual(21) = (GLOBAL(\distancia_actual[1]~0clkctrl_outclk\) & (\Add0~133_combout\)) # (!GLOBAL(\distancia_actual[1]~0clkctrl_outclk\) & ((distancia_actual(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~133_combout\,
	datac => distancia_actual(21),
	datad => \distancia_actual[1]~0clkctrl_outclk\,
	combout => distancia_actual(21));

-- Location: LCCOMB_X7_Y11_N12
\Add0~108\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~108_combout\ = (distancia_actual(22) & (\Add0~107\ $ (GND))) # (!distancia_actual(22) & (!\Add0~107\ & VCC))
-- \Add0~109\ = CARRY((distancia_actual(22) & !\Add0~107\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => distancia_actual(22),
	datad => VCC,
	cin => \Add0~107\,
	combout => \Add0~108_combout\,
	cout => \Add0~109\);

-- Location: LCCOMB_X8_Y11_N28
\Add0~134\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~134_combout\ = (\estado_siguiente~3_combout\ & (\Add0~108_combout\ & ((\sensor_trasero~input_o\) # (\sensor_delantero~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_siguiente~3_combout\,
	datab => \sensor_trasero~input_o\,
	datac => \sensor_delantero~input_o\,
	datad => \Add0~108_combout\,
	combout => \Add0~134_combout\);

-- Location: LCCOMB_X8_Y11_N18
\distancia_actual[22]\ : cycloneiii_lcell_comb
-- Equation(s):
-- distancia_actual(22) = (GLOBAL(\distancia_actual[1]~0clkctrl_outclk\) & (\Add0~134_combout\)) # (!GLOBAL(\distancia_actual[1]~0clkctrl_outclk\) & ((distancia_actual(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~134_combout\,
	datac => distancia_actual(22),
	datad => \distancia_actual[1]~0clkctrl_outclk\,
	combout => distancia_actual(22));

-- Location: LCCOMB_X7_Y11_N14
\Add0~110\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~110_combout\ = (distancia_actual(23) & (!\Add0~109\)) # (!distancia_actual(23) & ((\Add0~109\) # (GND)))
-- \Add0~111\ = CARRY((!\Add0~109\) # (!distancia_actual(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => distancia_actual(23),
	datad => VCC,
	cin => \Add0~109\,
	combout => \Add0~110_combout\,
	cout => \Add0~111\);

-- Location: LCCOMB_X8_Y11_N14
\Add0~135\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~135_combout\ = (\estado_siguiente~3_combout\ & (\Add0~110_combout\ & ((\sensor_trasero~input_o\) # (\sensor_delantero~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_siguiente~3_combout\,
	datab => \sensor_trasero~input_o\,
	datac => \sensor_delantero~input_o\,
	datad => \Add0~110_combout\,
	combout => \Add0~135_combout\);

-- Location: LCCOMB_X8_Y11_N0
\distancia_actual[23]\ : cycloneiii_lcell_comb
-- Equation(s):
-- distancia_actual(23) = (GLOBAL(\distancia_actual[1]~0clkctrl_outclk\) & ((\Add0~135_combout\))) # (!GLOBAL(\distancia_actual[1]~0clkctrl_outclk\) & (distancia_actual(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => distancia_actual(23),
	datac => \Add0~135_combout\,
	datad => \distancia_actual[1]~0clkctrl_outclk\,
	combout => distancia_actual(23));

-- Location: LCCOMB_X7_Y11_N16
\Add0~112\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~112_combout\ = (distancia_actual(24) & (\Add0~111\ $ (GND))) # (!distancia_actual(24) & (!\Add0~111\ & VCC))
-- \Add0~113\ = CARRY((distancia_actual(24) & !\Add0~111\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => distancia_actual(24),
	datad => VCC,
	cin => \Add0~111\,
	combout => \Add0~112_combout\,
	cout => \Add0~113\);

-- Location: LCCOMB_X8_Y11_N8
\Add0~136\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~136_combout\ = (\estado_siguiente~3_combout\ & (\Add0~112_combout\ & ((\sensor_delantero~input_o\) # (\sensor_trasero~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_siguiente~3_combout\,
	datab => \sensor_delantero~input_o\,
	datac => \Add0~112_combout\,
	datad => \sensor_trasero~input_o\,
	combout => \Add0~136_combout\);

-- Location: LCCOMB_X8_Y11_N30
\distancia_actual[24]\ : cycloneiii_lcell_comb
-- Equation(s):
-- distancia_actual(24) = (GLOBAL(\distancia_actual[1]~0clkctrl_outclk\) & (\Add0~136_combout\)) # (!GLOBAL(\distancia_actual[1]~0clkctrl_outclk\) & ((distancia_actual(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~136_combout\,
	datac => distancia_actual(24),
	datad => \distancia_actual[1]~0clkctrl_outclk\,
	combout => distancia_actual(24));

-- Location: LCCOMB_X8_Y11_N16
\LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (!distancia_actual(24) & (!distancia_actual(22) & (!distancia_actual(21) & !distancia_actual(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => distancia_actual(24),
	datab => distancia_actual(22),
	datac => distancia_actual(21),
	datad => distancia_actual(23),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X6_Y12_N20
\LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!distancia_actual(18) & (!distancia_actual(19) & (!distancia_actual(17) & !distancia_actual(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => distancia_actual(18),
	datab => distancia_actual(19),
	datac => distancia_actual(17),
	datad => distancia_actual(20),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X6_Y12_N10
\LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (!distancia_actual(8) & (!distancia_actual(7) & (!distancia_actual(6) & !distancia_actual(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => distancia_actual(8),
	datab => distancia_actual(7),
	datac => distancia_actual(6),
	datad => distancia_actual(5),
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X5_Y11_N20
\LessThan0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (!distancia_actual(12) & (!distancia_actual(11) & (!distancia_actual(10) & !distancia_actual(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => distancia_actual(12),
	datab => distancia_actual(11),
	datac => distancia_actual(10),
	datad => distancia_actual(9),
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X8_Y12_N8
\LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (!distancia_actual(4) & (((!distancia_actual(2) & !distancia_actual(1))) # (!distancia_actual(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => distancia_actual(2),
	datab => distancia_actual(1),
	datac => distancia_actual(3),
	datad => distancia_actual(4),
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X7_Y11_N18
\Add0~114\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~114_combout\ = (distancia_actual(25) & (!\Add0~113\)) # (!distancia_actual(25) & ((\Add0~113\) # (GND)))
-- \Add0~115\ = CARRY((!\Add0~113\) # (!distancia_actual(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => distancia_actual(25),
	datad => VCC,
	cin => \Add0~113\,
	combout => \Add0~114_combout\,
	cout => \Add0~115\);

-- Location: LCCOMB_X8_Y11_N26
\Add0~153\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~153_combout\ = (\estado_siguiente~3_combout\ & (\Add0~114_combout\ & ((\sensor_trasero~input_o\) # (\sensor_delantero~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_siguiente~3_combout\,
	datab => \sensor_trasero~input_o\,
	datac => \sensor_delantero~input_o\,
	datad => \Add0~114_combout\,
	combout => \Add0~153_combout\);

-- Location: LCCOMB_X8_Y11_N20
\distancia_actual[25]\ : cycloneiii_lcell_comb
-- Equation(s):
-- distancia_actual(25) = (GLOBAL(\distancia_actual[1]~0clkctrl_outclk\) & (\Add0~153_combout\)) # (!GLOBAL(\distancia_actual[1]~0clkctrl_outclk\) & ((distancia_actual(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~153_combout\,
	datac => distancia_actual(25),
	datad => \distancia_actual[1]~0clkctrl_outclk\,
	combout => distancia_actual(25));

-- Location: LCCOMB_X7_Y11_N20
\Add0~116\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~116_combout\ = (distancia_actual(26) & (\Add0~115\ $ (GND))) # (!distancia_actual(26) & (!\Add0~115\ & VCC))
-- \Add0~117\ = CARRY((distancia_actual(26) & !\Add0~115\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => distancia_actual(26),
	datad => VCC,
	cin => \Add0~115\,
	combout => \Add0~116_combout\,
	cout => \Add0~117\);

-- Location: LCCOMB_X8_Y11_N24
\Add0~154\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~154_combout\ = (\estado_siguiente~3_combout\ & (\Add0~116_combout\ & ((\sensor_trasero~input_o\) # (\sensor_delantero~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_siguiente~3_combout\,
	datab => \sensor_trasero~input_o\,
	datac => \sensor_delantero~input_o\,
	datad => \Add0~116_combout\,
	combout => \Add0~154_combout\);

-- Location: LCCOMB_X8_Y11_N6
\distancia_actual[26]\ : cycloneiii_lcell_comb
-- Equation(s):
-- distancia_actual(26) = (GLOBAL(\distancia_actual[1]~0clkctrl_outclk\) & ((\Add0~154_combout\))) # (!GLOBAL(\distancia_actual[1]~0clkctrl_outclk\) & (distancia_actual(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => distancia_actual(26),
	datac => \Add0~154_combout\,
	datad => \distancia_actual[1]~0clkctrl_outclk\,
	combout => distancia_actual(26));

-- Location: LCCOMB_X7_Y11_N22
\Add0~118\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~118_combout\ = (distancia_actual(27) & (!\Add0~117\)) # (!distancia_actual(27) & ((\Add0~117\) # (GND)))
-- \Add0~119\ = CARRY((!\Add0~117\) # (!distancia_actual(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => distancia_actual(27),
	datad => VCC,
	cin => \Add0~117\,
	combout => \Add0~118_combout\,
	cout => \Add0~119\);

-- Location: LCCOMB_X8_Y11_N2
\Add0~155\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~155_combout\ = (\estado_siguiente~3_combout\ & (\Add0~118_combout\ & ((\sensor_trasero~input_o\) # (\sensor_delantero~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_siguiente~3_combout\,
	datab => \sensor_trasero~input_o\,
	datac => \sensor_delantero~input_o\,
	datad => \Add0~118_combout\,
	combout => \Add0~155_combout\);

-- Location: LCCOMB_X8_Y11_N4
\distancia_actual[27]\ : cycloneiii_lcell_comb
-- Equation(s):
-- distancia_actual(27) = (GLOBAL(\distancia_actual[1]~0clkctrl_outclk\) & (\Add0~155_combout\)) # (!GLOBAL(\distancia_actual[1]~0clkctrl_outclk\) & ((distancia_actual(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~155_combout\,
	datac => distancia_actual(27),
	datad => \distancia_actual[1]~0clkctrl_outclk\,
	combout => distancia_actual(27));

-- Location: LCCOMB_X7_Y11_N24
\Add0~120\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~120_combout\ = (distancia_actual(28) & (\Add0~119\ $ (GND))) # (!distancia_actual(28) & (!\Add0~119\ & VCC))
-- \Add0~121\ = CARRY((distancia_actual(28) & !\Add0~119\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => distancia_actual(28),
	datad => VCC,
	cin => \Add0~119\,
	combout => \Add0~120_combout\,
	cout => \Add0~121\);

-- Location: LCCOMB_X8_Y11_N12
\Add0~156\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~156_combout\ = (\estado_siguiente~3_combout\ & (\Add0~120_combout\ & ((\sensor_trasero~input_o\) # (\sensor_delantero~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensor_trasero~input_o\,
	datab => \sensor_delantero~input_o\,
	datac => \estado_siguiente~3_combout\,
	datad => \Add0~120_combout\,
	combout => \Add0~156_combout\);

-- Location: LCCOMB_X8_Y11_N22
\distancia_actual[28]\ : cycloneiii_lcell_comb
-- Equation(s):
-- distancia_actual(28) = (GLOBAL(\distancia_actual[1]~0clkctrl_outclk\) & ((\Add0~156_combout\))) # (!GLOBAL(\distancia_actual[1]~0clkctrl_outclk\) & (distancia_actual(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => distancia_actual(28),
	datac => \distancia_actual[1]~0clkctrl_outclk\,
	datad => \Add0~156_combout\,
	combout => distancia_actual(28));

-- Location: LCCOMB_X7_Y11_N26
\Add0~122\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~122_combout\ = (distancia_actual(29) & (!\Add0~121\)) # (!distancia_actual(29) & ((\Add0~121\) # (GND)))
-- \Add0~123\ = CARRY((!\Add0~121\) # (!distancia_actual(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => distancia_actual(29),
	datad => VCC,
	cin => \Add0~121\,
	combout => \Add0~122_combout\,
	cout => \Add0~123\);

-- Location: LCCOMB_X6_Y11_N6
\Add0~157\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~157_combout\ = (\estado_siguiente~3_combout\ & (\Add0~122_combout\ & ((\sensor_delantero~input_o\) # (\sensor_trasero~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensor_delantero~input_o\,
	datab => \sensor_trasero~input_o\,
	datac => \estado_siguiente~3_combout\,
	datad => \Add0~122_combout\,
	combout => \Add0~157_combout\);

-- Location: LCCOMB_X6_Y11_N24
\distancia_actual[29]\ : cycloneiii_lcell_comb
-- Equation(s):
-- distancia_actual(29) = (GLOBAL(\distancia_actual[1]~0clkctrl_outclk\) & (\Add0~157_combout\)) # (!GLOBAL(\distancia_actual[1]~0clkctrl_outclk\) & ((distancia_actual(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~157_combout\,
	datab => distancia_actual(29),
	datad => \distancia_actual[1]~0clkctrl_outclk\,
	combout => distancia_actual(29));

-- Location: LCCOMB_X7_Y11_N28
\Add0~124\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~124_combout\ = (distancia_actual(30) & (\Add0~123\ $ (GND))) # (!distancia_actual(30) & (!\Add0~123\ & VCC))
-- \Add0~125\ = CARRY((distancia_actual(30) & !\Add0~123\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => distancia_actual(30),
	datad => VCC,
	cin => \Add0~123\,
	combout => \Add0~124_combout\,
	cout => \Add0~125\);

-- Location: LCCOMB_X6_Y11_N28
\Add0~158\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~158_combout\ = (\estado_siguiente~3_combout\ & (\Add0~124_combout\ & ((\sensor_delantero~input_o\) # (\sensor_trasero~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensor_delantero~input_o\,
	datab => \sensor_trasero~input_o\,
	datac => \estado_siguiente~3_combout\,
	datad => \Add0~124_combout\,
	combout => \Add0~158_combout\);

-- Location: LCCOMB_X6_Y11_N26
\distancia_actual[30]\ : cycloneiii_lcell_comb
-- Equation(s):
-- distancia_actual(30) = (GLOBAL(\distancia_actual[1]~0clkctrl_outclk\) & (\Add0~158_combout\)) # (!GLOBAL(\distancia_actual[1]~0clkctrl_outclk\) & ((distancia_actual(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~158_combout\,
	datac => distancia_actual(30),
	datad => \distancia_actual[1]~0clkctrl_outclk\,
	combout => distancia_actual(30));

-- Location: LCCOMB_X6_Y11_N8
\LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (!distancia_actual(16) & (!distancia_actual(14) & (!distancia_actual(15) & !distancia_actual(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => distancia_actual(16),
	datab => distancia_actual(14),
	datac => distancia_actual(15),
	datad => distancia_actual(13),
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X8_Y11_N10
\LessThan0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = (!distancia_actual(28) & (!distancia_actual(25) & (!distancia_actual(27) & !distancia_actual(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => distancia_actual(28),
	datab => distancia_actual(25),
	datac => distancia_actual(27),
	datad => distancia_actual(26),
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X6_Y11_N22
\estado_siguiente~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \estado_siguiente~0_combout\ = (!distancia_actual(30) & (!distancia_actual(29) & (\LessThan0~5_combout\ & \LessThan0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => distancia_actual(30),
	datab => distancia_actual(29),
	datac => \LessThan0~5_combout\,
	datad => \LessThan0~6_combout\,
	combout => \estado_siguiente~0_combout\);

-- Location: LCCOMB_X5_Y11_N2
\estado_siguiente~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \estado_siguiente~1_combout\ = (\LessThan0~3_combout\ & (\LessThan0~4_combout\ & (\LessThan0~2_combout\ & \estado_siguiente~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~3_combout\,
	datab => \LessThan0~4_combout\,
	datac => \LessThan0~2_combout\,
	datad => \estado_siguiente~0_combout\,
	combout => \estado_siguiente~1_combout\);

-- Location: LCCOMB_X5_Y11_N22
\estado_siguiente~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \estado_siguiente~2_combout\ = ((\LessThan0~1_combout\ & (\LessThan0~0_combout\ & \estado_siguiente~1_combout\))) # (!\estado_siguiente~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~1_combout\,
	datab => \estado_siguiente~3_combout\,
	datac => \LessThan0~0_combout\,
	datad => \estado_siguiente~1_combout\,
	combout => \estado_siguiente~2_combout\);

-- Location: LCCOMB_X7_Y11_N30
\Add0~126\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~126_combout\ = \Add0~125\ $ (distancia_actual(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => distancia_actual(31),
	cin => \Add0~125\,
	combout => \Add0~126_combout\);

-- Location: LCCOMB_X5_Y11_N28
\Add0~128\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~128_combout\ = (\estado_siguiente~3_combout\ & (\Add0~126_combout\ & ((\sensor_trasero~input_o\) # (\sensor_delantero~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensor_trasero~input_o\,
	datab => \sensor_delantero~input_o\,
	datac => \estado_siguiente~3_combout\,
	datad => \Add0~126_combout\,
	combout => \Add0~128_combout\);

-- Location: LCCOMB_X5_Y11_N14
\distancia_actual[31]\ : cycloneiii_lcell_comb
-- Equation(s):
-- distancia_actual(31) = (GLOBAL(\distancia_actual[1]~0clkctrl_outclk\) & ((\Add0~128_combout\))) # (!GLOBAL(\distancia_actual[1]~0clkctrl_outclk\) & (distancia_actual(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => distancia_actual(31),
	datac => \distancia_actual[1]~0clkctrl_outclk\,
	datad => \Add0~128_combout\,
	combout => distancia_actual(31));

-- Location: LCCOMB_X5_Y11_N24
\estado_siguiente~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \estado_siguiente~3_combout\ = (\estado_siguiente~2_combout\ & ((\sensor_trasero~input_o\) # ((\sensor_delantero~input_o\)))) # (!\estado_siguiente~2_combout\ & (distancia_actual(31) & ((\sensor_trasero~input_o\) # (\sensor_delantero~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_siguiente~2_combout\,
	datab => \sensor_trasero~input_o\,
	datac => distancia_actual(31),
	datad => \sensor_delantero~input_o\,
	combout => \estado_siguiente~3_combout\);

ww_vehiculo_detectado <= \vehiculo_detectado~output_o\;
END structure;


