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

-- DATE "05/14/2024 17:50:37"

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

ENTITY 	PeajeElectronico IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	sensor_delantero : IN std_logic;
	sensor_trasero : IN std_logic;
	tag_identificacion : IN std_logic;
	barrera_entrada : BUFFER std_logic;
	barrera_salida : BUFFER std_logic;
	semaforo_entrada_verde : BUFFER std_logic;
	semaforo_entrada_rojo : BUFFER std_logic;
	semaforo_salida_verde : BUFFER std_logic;
	semaforo_salida_rojo : BUFFER std_logic;
	total_vehiculos : BUFFER std_logic_vector(13 DOWNTO 0);
	tiempo_paso_ultimo_vehiculo : BUFFER std_logic_vector(13 DOWNTO 0);
	display_output : BUFFER std_logic_vector(6 DOWNTO 0);
	lcd_data : BUFFER std_logic_vector(7 DOWNTO 0);
	lcd_rs : BUFFER std_logic;
	lcd_rw : BUFFER std_logic;
	lcd_en : BUFFER std_logic;
	identificacion_valida : BUFFER std_logic;
	categoria_vehiculo : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END PeajeElectronico;

-- Design Ports Information
-- tag_identificacion	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barrera_entrada	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barrera_salida	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- semaforo_entrada_verde	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- semaforo_entrada_rojo	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- semaforo_salida_verde	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- semaforo_salida_rojo	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- total_vehiculos[0]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- total_vehiculos[1]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- total_vehiculos[2]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- total_vehiculos[3]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- total_vehiculos[4]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- total_vehiculos[5]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- total_vehiculos[6]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- total_vehiculos[7]	=>  Location: PIN_U9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- total_vehiculos[8]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- total_vehiculos[9]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- total_vehiculos[10]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- total_vehiculos[11]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- total_vehiculos[12]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- total_vehiculos[13]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tiempo_paso_ultimo_vehiculo[0]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tiempo_paso_ultimo_vehiculo[1]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tiempo_paso_ultimo_vehiculo[2]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tiempo_paso_ultimo_vehiculo[3]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tiempo_paso_ultimo_vehiculo[4]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tiempo_paso_ultimo_vehiculo[5]	=>  Location: PIN_T16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tiempo_paso_ultimo_vehiculo[6]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tiempo_paso_ultimo_vehiculo[7]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tiempo_paso_ultimo_vehiculo[8]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tiempo_paso_ultimo_vehiculo[9]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tiempo_paso_ultimo_vehiculo[10]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tiempo_paso_ultimo_vehiculo[11]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tiempo_paso_ultimo_vehiculo[12]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tiempo_paso_ultimo_vehiculo[13]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_output[0]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_output[1]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_output[2]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_output[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_output[4]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_output[5]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_output[6]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[0]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[1]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[2]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[3]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[4]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[5]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[6]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[7]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_rs	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_rw	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_en	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- categoria_vehiculo[0]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- categoria_vehiculo[1]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- categoria_vehiculo[2]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- categoria_vehiculo[3]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- identificacion_valida	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sensor_delantero	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sensor_trasero	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF PeajeElectronico IS
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
SIGNAL ww_sensor_delantero : std_logic;
SIGNAL ww_sensor_trasero : std_logic;
SIGNAL ww_tag_identificacion : std_logic;
SIGNAL ww_barrera_entrada : std_logic;
SIGNAL ww_barrera_salida : std_logic;
SIGNAL ww_semaforo_entrada_verde : std_logic;
SIGNAL ww_semaforo_entrada_rojo : std_logic;
SIGNAL ww_semaforo_salida_verde : std_logic;
SIGNAL ww_semaforo_salida_rojo : std_logic;
SIGNAL ww_total_vehiculos : std_logic_vector(13 DOWNTO 0);
SIGNAL ww_tiempo_paso_ultimo_vehiculo : std_logic_vector(13 DOWNTO 0);
SIGNAL ww_display_output : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_lcd_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_lcd_rs : std_logic;
SIGNAL ww_lcd_rw : std_logic;
SIGNAL ww_lcd_en : std_logic;
SIGNAL ww_identificacion_valida : std_logic;
SIGNAL ww_categoria_vehiculo : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst_DetectorVehicular|distancia_actual[1]~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \tag_identificacion~input_o\ : std_logic;
SIGNAL \identificacion_valida~input_o\ : std_logic;
SIGNAL \identificacion_valida~output_o\ : std_logic;
SIGNAL \barrera_entrada~output_o\ : std_logic;
SIGNAL \barrera_salida~output_o\ : std_logic;
SIGNAL \semaforo_entrada_verde~output_o\ : std_logic;
SIGNAL \semaforo_entrada_rojo~output_o\ : std_logic;
SIGNAL \semaforo_salida_verde~output_o\ : std_logic;
SIGNAL \semaforo_salida_rojo~output_o\ : std_logic;
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
SIGNAL \display_output[0]~output_o\ : std_logic;
SIGNAL \display_output[1]~output_o\ : std_logic;
SIGNAL \display_output[2]~output_o\ : std_logic;
SIGNAL \display_output[3]~output_o\ : std_logic;
SIGNAL \display_output[4]~output_o\ : std_logic;
SIGNAL \display_output[5]~output_o\ : std_logic;
SIGNAL \display_output[6]~output_o\ : std_logic;
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
SIGNAL \categoria_vehiculo[0]~output_o\ : std_logic;
SIGNAL \categoria_vehiculo[1]~output_o\ : std_logic;
SIGNAL \categoria_vehiculo[2]~output_o\ : std_logic;
SIGNAL \categoria_vehiculo[3]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \sensor_trasero~input_o\ : std_logic;
SIGNAL \sensor_delantero~input_o\ : std_logic;
SIGNAL \inst_DetectorVehicular|distancia_actual[1]~1_combout\ : std_logic;
SIGNAL \inst_DetectorVehicular|distancia_actual[1]~1clkctrl_outclk\ : std_logic;
SIGNAL \inst_DetectorVehicular|Add0~64_combout\ : std_logic;
SIGNAL \inst_DetectorVehicular|Add0~159_combout\ : std_logic;
SIGNAL \inst_DetectorVehicular|Add0~65\ : std_logic;
SIGNAL \inst_DetectorVehicular|Add0~66_combout\ : std_logic;
SIGNAL \inst_DetectorVehicular|Add0~136_combout\ : std_logic;
SIGNAL \inst_DetectorVehicular|Add0~67\ : std_logic;
SIGNAL \inst_DetectorVehicular|Add0~68_combout\ : std_logic;
SIGNAL \inst_DetectorVehicular|Add0~137_combout\ : std_logic;
SIGNAL \inst_DetectorVehicular|Add0~69\ : std_logic;
SIGNAL \inst_DetectorVehicular|Add0~70_combout\ : std_logic;
SIGNAL \inst_DetectorVehicular|Add0~138_combout\ : std_logic;
SIGNAL \inst_DetectorVehicular|Add0~71\ : std_logic;
SIGNAL \inst_DetectorVehicular|Add0~72_combout\ : std_logic;
SIGNAL \inst_DetectorVehicular|Add0~139_combout\ : std_logic;
SIGNAL \inst_DetectorVehicular|Add0~73\ : std_logic;
SIGNAL \inst_DetectorVehicular|Add0~74_combout\ : std_logic;
SIGNAL \inst_DetectorVehicular|Add0~150_combout\ : std_logic;
SIGNAL \inst_DetectorVehicular|Add0~75\ : std_logic;
SIGNAL \inst_DetectorVehicular|Add0~76_combout\ : std_logic;
SIGNAL \inst_DetectorVehicular|Add0~151_combout\ : std_logic;
SIGNAL \inst_DetectorVehicular|Add0~77\ : std_logic;
SIGNAL \inst_DetectorVehicular|Add0~78_combout\ : std_logic;
SIGNAL \inst_DetectorVehicular|Add0~152_combout\ : std_logic;
SIGNAL \inst_DetectorVehicular|Add0~79\ : std_logic;
SIGNAL \inst_DetectorVehicular|Add0~80_combout\ : std_logic;
SIGNAL \inst_DetectorVehicular|Add0~153_combout\ : std_logic;
SIGNAL \inst_DetectorVehicular|Add0~81\ : std_logic;
SIGNAL \inst_DetectorVehicular|Add0~82_combout\ : std_logic;
SIGNAL \inst_DetectorVehicular|Add0~133_combout\ : std_logic;
SIGNAL \inst_DetectorVehicular|Add0~83\ : std_logic;
SIGNAL \inst_DetectorVehicular|Add0~84_combout\ : std_logic;
SIGNAL \inst_DetectorVehicular|Add0~140_combout\ : std_logic;
SIGNAL \inst_DetectorVehicular|Add0~85\ : std_logic;
SIGNAL \inst_DetectorVehicular|Add0~86_combout\ : std_logic;
SIGNAL \inst_DetectorVehicular|Add0~134_combout\ : std_logic;
SIGNAL \inst_DetectorVehicular|Add0~87\ : std_logic;
SIGNAL \inst_DetectorVehicular|Add0~88_combout\ : std_logic;
SIGNAL \inst_DetectorVehicular|Add0~141_combout\ : std_logic;
SIGNAL \inst_DetectorVehicular|Add0~89\ : std_logic;
SIGNAL \inst_DetectorVehicular|Add0~90_combout\ : std_logic;
SIGNAL \inst_DetectorVehicular|Add0~128_combout\ : std_logic;
SIGNAL \inst_DetectorVehicular|Add0~91\ : std_logic;
SIGNAL \inst_DetectorVehicular|Add0~92_combout\ : std_logic;
SIGNAL \inst_DetectorVehicular|Add0~129_combout\ : std_logic;
SIGNAL \inst_DetectorVehicular|Add0~93\ : std_logic;
SIGNAL \inst_DetectorVehicular|Add0~94_combout\ : std_logic;
SIGNAL \inst_DetectorVehicular|Add0~130_combout\ : std_logic;
SIGNAL \inst_DetectorVehicular|Add0~95\ : std_logic;
SIGNAL \inst_DetectorVehicular|Add0~96_combout\ : std_logic;
SIGNAL \inst_DetectorVehicular|Add0~131_combout\ : std_logic;
SIGNAL \inst_DetectorVehicular|Add0~97\ : std_logic;
SIGNAL \inst_DetectorVehicular|Add0~98_combout\ : std_logic;
SIGNAL \inst_DetectorVehicular|Add0~146_combout\ : std_logic;
SIGNAL \inst_DetectorVehicular|Add0~99\ : std_logic;
SIGNAL \inst_DetectorVehicular|Add0~100_combout\ : std_logic;
SIGNAL \inst_DetectorVehicular|Add0~147_combout\ : std_logic;
SIGNAL \inst_DetectorVehicular|Add0~101\ : std_logic;
SIGNAL \inst_DetectorVehicular|Add0~102_combout\ : std_logic;
SIGNAL \inst_DetectorVehicular|Add0~148_combout\ : std_logic;
SIGNAL \inst_DetectorVehicular|Add0~103\ : std_logic;
SIGNAL \inst_DetectorVehicular|Add0~104_combout\ : std_logic;
SIGNAL \inst_DetectorVehicular|Add0~149_combout\ : std_logic;
SIGNAL \inst_DetectorVehicular|Add0~105\ : std_logic;
SIGNAL \inst_DetectorVehicular|Add0~106_combout\ : std_logic;
SIGNAL \inst_DetectorVehicular|Add0~135_combout\ : std_logic;
SIGNAL \inst_DetectorVehicular|Add0~107\ : std_logic;
SIGNAL \inst_DetectorVehicular|Add0~108_combout\ : std_logic;
SIGNAL \inst_DetectorVehicular|Add0~143_combout\ : std_logic;
SIGNAL \inst_DetectorVehicular|Add0~109\ : std_logic;
SIGNAL \inst_DetectorVehicular|Add0~110_combout\ : std_logic;
SIGNAL \inst_DetectorVehicular|Add0~144_combout\ : std_logic;
SIGNAL \inst_DetectorVehicular|Add0~111\ : std_logic;
SIGNAL \inst_DetectorVehicular|Add0~112_combout\ : std_logic;
SIGNAL \inst_DetectorVehicular|Add0~145_combout\ : std_logic;
SIGNAL \inst_DetectorVehicular|Add0~113\ : std_logic;
SIGNAL \inst_DetectorVehicular|Add0~114_combout\ : std_logic;
SIGNAL \inst_DetectorVehicular|Add0~154_combout\ : std_logic;
SIGNAL \inst_DetectorVehicular|Add0~115\ : std_logic;
SIGNAL \inst_DetectorVehicular|Add0~116_combout\ : std_logic;
SIGNAL \inst_DetectorVehicular|Add0~155_combout\ : std_logic;
SIGNAL \inst_DetectorVehicular|Add0~117\ : std_logic;
SIGNAL \inst_DetectorVehicular|Add0~118_combout\ : std_logic;
SIGNAL \inst_DetectorVehicular|Add0~156_combout\ : std_logic;
SIGNAL \inst_DetectorVehicular|Add0~119\ : std_logic;
SIGNAL \inst_DetectorVehicular|Add0~120_combout\ : std_logic;
SIGNAL \inst_DetectorVehicular|Add0~157_combout\ : std_logic;
SIGNAL \inst_DetectorVehicular|Add0~121\ : std_logic;
SIGNAL \inst_DetectorVehicular|Add0~122_combout\ : std_logic;
SIGNAL \inst_DetectorVehicular|Add0~142_combout\ : std_logic;
SIGNAL \inst_DetectorVehicular|Add0~123\ : std_logic;
SIGNAL \inst_DetectorVehicular|Add0~124_combout\ : std_logic;
SIGNAL \inst_DetectorVehicular|Add0~132_combout\ : std_logic;
SIGNAL \inst_DetectorVehicular|Add0~125\ : std_logic;
SIGNAL \inst_DetectorVehicular|Add0~126_combout\ : std_logic;
SIGNAL \inst_DetectorVehicular|Add0~158_combout\ : std_logic;
SIGNAL \inst_DetectorVehicular|distancia_actual[1]~0_combout\ : std_logic;
SIGNAL \inst_DetectorVehicular|LessThan0~2_combout\ : std_logic;
SIGNAL \inst_DetectorVehicular|LessThan0~3_combout\ : std_logic;
SIGNAL \inst_DetectorVehicular|LessThan0~4_combout\ : std_logic;
SIGNAL \inst_DetectorVehicular|LessThan0~0_combout\ : std_logic;
SIGNAL \inst_DetectorVehicular|LessThan0~5_combout\ : std_logic;
SIGNAL \inst_DetectorVehicular|LessThan0~7_combout\ : std_logic;
SIGNAL \inst_DetectorVehicular|LessThan0~6_combout\ : std_logic;
SIGNAL \inst_DetectorVehicular|LessThan0~8_combout\ : std_logic;
SIGNAL \inst_DetectorVehicular|LessThan0~1_combout\ : std_logic;
SIGNAL \inst_DetectorVehicular|LessThan0~9_combout\ : std_logic;
SIGNAL \inst_DetectorVehicular|estado_siguiente~0_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \estado_actual.esperando~feeder_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \estado_actual.esperando~q\ : std_logic;
SIGNAL \display_output[0]~3_combout\ : std_logic;
SIGNAL \display_output[0]~reg0_q\ : std_logic;
SIGNAL \estado_actual.detectado~q\ : std_logic;
SIGNAL \display_output[1]~reg0_q\ : std_logic;
SIGNAL \inst_ControladorLCD|inst_PantallaLcd|Add0~0_combout\ : std_logic;
SIGNAL \inst_ControladorLCD|inst_PantallaLcd|Mux24~0_combout\ : std_logic;
SIGNAL \inst_ControladorLCD|inst_PantallaLcd|lcd_data_int[3]~0_combout\ : std_logic;
SIGNAL \inst_ControladorLCD|inst_PantallaLcd|Add0~1\ : std_logic;
SIGNAL \inst_ControladorLCD|inst_PantallaLcd|Add0~2_combout\ : std_logic;
SIGNAL \inst_ControladorLCD|inst_PantallaLcd|Add0~3\ : std_logic;
SIGNAL \inst_ControladorLCD|inst_PantallaLcd|Add0~4_combout\ : std_logic;
SIGNAL \inst_ControladorLCD|inst_PantallaLcd|Add0~5\ : std_logic;
SIGNAL \inst_ControladorLCD|inst_PantallaLcd|Add0~6_combout\ : std_logic;
SIGNAL \inst_ControladorLCD|inst_PantallaLcd|Add0~7\ : std_logic;
SIGNAL \inst_ControladorLCD|inst_PantallaLcd|Add0~8_combout\ : std_logic;
SIGNAL \inst_ControladorLCD|inst_PantallaLcd|Mux20~0_combout\ : std_logic;
SIGNAL \inst_ControladorLCD|inst_PantallaLcd|Equal0~3_combout\ : std_logic;
SIGNAL \inst_ControladorLCD|inst_PantallaLcd|Add0~9\ : std_logic;
SIGNAL \inst_ControladorLCD|inst_PantallaLcd|Add0~10_combout\ : std_logic;
SIGNAL \inst_ControladorLCD|inst_PantallaLcd|Add0~11\ : std_logic;
SIGNAL \inst_ControladorLCD|inst_PantallaLcd|Add0~12_combout\ : std_logic;
SIGNAL \inst_ControladorLCD|inst_PantallaLcd|Mux18~0_combout\ : std_logic;
SIGNAL \inst_ControladorLCD|inst_PantallaLcd|Add0~13\ : std_logic;
SIGNAL \inst_ControladorLCD|inst_PantallaLcd|Add0~14_combout\ : std_logic;
SIGNAL \inst_ControladorLCD|inst_PantallaLcd|Add0~15\ : std_logic;
SIGNAL \inst_ControladorLCD|inst_PantallaLcd|Add0~16_combout\ : std_logic;
SIGNAL \inst_ControladorLCD|inst_PantallaLcd|Mux16~0_combout\ : std_logic;
SIGNAL \inst_ControladorLCD|inst_PantallaLcd|Equal0~2_combout\ : std_logic;
SIGNAL \inst_ControladorLCD|inst_PantallaLcd|Add0~17\ : std_logic;
SIGNAL \inst_ControladorLCD|inst_PantallaLcd|Add0~18_combout\ : std_logic;
SIGNAL \inst_ControladorLCD|inst_PantallaLcd|Mux15~0_combout\ : std_logic;
SIGNAL \inst_ControladorLCD|inst_PantallaLcd|Add0~19\ : std_logic;
SIGNAL \inst_ControladorLCD|inst_PantallaLcd|Add0~20_combout\ : std_logic;
SIGNAL \inst_ControladorLCD|inst_PantallaLcd|Add0~21\ : std_logic;
SIGNAL \inst_ControladorLCD|inst_PantallaLcd|Add0~22_combout\ : std_logic;
SIGNAL \inst_ControladorLCD|inst_PantallaLcd|Add0~23\ : std_logic;
SIGNAL \inst_ControladorLCD|inst_PantallaLcd|Add0~24_combout\ : std_logic;
SIGNAL \inst_ControladorLCD|inst_PantallaLcd|Add0~25\ : std_logic;
SIGNAL \inst_ControladorLCD|inst_PantallaLcd|Add0~26_combout\ : std_logic;
SIGNAL \inst_ControladorLCD|inst_PantallaLcd|Add0~27\ : std_logic;
SIGNAL \inst_ControladorLCD|inst_PantallaLcd|Add0~28_combout\ : std_logic;
SIGNAL \inst_ControladorLCD|inst_PantallaLcd|Mux10~0_combout\ : std_logic;
SIGNAL \inst_ControladorLCD|inst_PantallaLcd|Add0~29\ : std_logic;
SIGNAL \inst_ControladorLCD|inst_PantallaLcd|Add0~30_combout\ : std_logic;
SIGNAL \inst_ControladorLCD|inst_PantallaLcd|Mux9~0_combout\ : std_logic;
SIGNAL \inst_ControladorLCD|inst_PantallaLcd|Equal0~0_combout\ : std_logic;
SIGNAL \inst_ControladorLCD|inst_PantallaLcd|Equal0~1_combout\ : std_logic;
SIGNAL \inst_ControladorLCD|inst_PantallaLcd|Equal0~4_combout\ : std_logic;
SIGNAL \inst_ControladorLCD|inst_PantallaLcd|estado[1]~1_combout\ : std_logic;
SIGNAL \inst_ControladorLCD|inst_PantallaLcd|estado[0]~0_combout\ : std_logic;
SIGNAL \inst_ControladorLCD|inst_PantallaLcd|Mux5~0_combout\ : std_logic;
SIGNAL \inst_ControladorLCD|inst_PantallaLcd|lcd_data_int[3]~1_combout\ : std_logic;
SIGNAL \inst_ControladorLCD|inst_PantallaLcd|Mux2~0_combout\ : std_logic;
SIGNAL \inst_ControladorLCD|inst_PantallaLcd|lcd_rs_int~0_combout\ : std_logic;
SIGNAL \inst_ControladorLCD|inst_PantallaLcd|lcd_rs_int~q\ : std_logic;
SIGNAL \inst_ControladorLCD|inst_PantallaLcd|lcd_en_int~feeder_combout\ : std_logic;
SIGNAL \inst_ControladorLCD|inst_PantallaLcd|lcd_en_int~q\ : std_logic;
SIGNAL \inst_ControladorLCD|inst_PantallaLcd|lcd_data_int\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst_ControladorLCD|inst_PantallaLcd|estado\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst_ControladorLCD|inst_PantallaLcd|contador\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst_DetectorVehicular|distancia_actual\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_rst~input_o\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_sensor_delantero <= sensor_delantero;
ww_sensor_trasero <= sensor_trasero;
ww_tag_identificacion <= tag_identificacion;
barrera_entrada <= ww_barrera_entrada;
barrera_salida <= ww_barrera_salida;
semaforo_entrada_verde <= ww_semaforo_entrada_verde;
semaforo_entrada_rojo <= ww_semaforo_entrada_rojo;
semaforo_salida_verde <= ww_semaforo_salida_verde;
semaforo_salida_rojo <= ww_semaforo_salida_rojo;
total_vehiculos <= ww_total_vehiculos;
tiempo_paso_ultimo_vehiculo <= ww_tiempo_paso_ultimo_vehiculo;
display_output <= ww_display_output;
lcd_data <= ww_lcd_data;
lcd_rs <= ww_lcd_rs;
lcd_rw <= ww_lcd_rw;
lcd_en <= ww_lcd_en;
identificacion_valida <= ww_identificacion_valida;
categoria_vehiculo <= ww_categoria_vehiculo;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst_DetectorVehicular|distancia_actual[1]~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst_DetectorVehicular|distancia_actual[1]~1_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;

-- Location: IOOBUF_X16_Y0_N16
\identificacion_valida~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \identificacion_valida~output_o\);

-- Location: IOOBUF_X28_Y0_N23
\barrera_entrada~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \barrera_entrada~output_o\);

-- Location: IOOBUF_X28_Y0_N16
\barrera_salida~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \barrera_salida~output_o\);

-- Location: IOOBUF_X26_Y0_N16
\semaforo_entrada_verde~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \semaforo_entrada_verde~output_o\);

-- Location: IOOBUF_X26_Y0_N9
\semaforo_entrada_rojo~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \semaforo_entrada_rojo~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\semaforo_salida_verde~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \semaforo_salida_verde~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\semaforo_salida_rojo~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \semaforo_salida_rojo~output_o\);

-- Location: IOOBUF_X19_Y0_N2
\total_vehiculos[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \total_vehiculos[0]~output_o\);

-- Location: IOOBUF_X21_Y0_N30
\total_vehiculos[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \total_vehiculos[1]~output_o\);

-- Location: IOOBUF_X7_Y0_N16
\total_vehiculos[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \total_vehiculos[2]~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\total_vehiculos[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \total_vehiculos[3]~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\total_vehiculos[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \total_vehiculos[4]~output_o\);

-- Location: IOOBUF_X9_Y0_N9
\total_vehiculos[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \total_vehiculos[5]~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\total_vehiculos[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \total_vehiculos[6]~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\total_vehiculos[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \total_vehiculos[7]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\total_vehiculos[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \total_vehiculos[8]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\total_vehiculos[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \total_vehiculos[9]~output_o\);

-- Location: IOOBUF_X5_Y0_N30
\total_vehiculos[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \total_vehiculos[10]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\total_vehiculos[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \total_vehiculos[11]~output_o\);

-- Location: IOOBUF_X28_Y0_N30
\total_vehiculos[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \total_vehiculos[12]~output_o\);

-- Location: IOOBUF_X26_Y0_N2
\total_vehiculos[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \total_vehiculos[13]~output_o\);

-- Location: IOOBUF_X39_Y0_N16
\tiempo_paso_ultimo_vehiculo[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \tiempo_paso_ultimo_vehiculo[0]~output_o\);

-- Location: IOOBUF_X32_Y0_N16
\tiempo_paso_ultimo_vehiculo[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \tiempo_paso_ultimo_vehiculo[1]~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\tiempo_paso_ultimo_vehiculo[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \tiempo_paso_ultimo_vehiculo[2]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\tiempo_paso_ultimo_vehiculo[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \tiempo_paso_ultimo_vehiculo[3]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\tiempo_paso_ultimo_vehiculo[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \tiempo_paso_ultimo_vehiculo[4]~output_o\);

-- Location: IOOBUF_X37_Y0_N9
\tiempo_paso_ultimo_vehiculo[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \tiempo_paso_ultimo_vehiculo[5]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\tiempo_paso_ultimo_vehiculo[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \tiempo_paso_ultimo_vehiculo[6]~output_o\);

-- Location: IOOBUF_X37_Y0_N2
\tiempo_paso_ultimo_vehiculo[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \tiempo_paso_ultimo_vehiculo[7]~output_o\);

-- Location: IOOBUF_X32_Y0_N30
\tiempo_paso_ultimo_vehiculo[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \tiempo_paso_ultimo_vehiculo[8]~output_o\);

-- Location: IOOBUF_X32_Y0_N23
\tiempo_paso_ultimo_vehiculo[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \tiempo_paso_ultimo_vehiculo[9]~output_o\);

-- Location: IOOBUF_X32_Y0_N9
\tiempo_paso_ultimo_vehiculo[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \tiempo_paso_ultimo_vehiculo[10]~output_o\);

-- Location: IOOBUF_X39_Y0_N30
\tiempo_paso_ultimo_vehiculo[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \tiempo_paso_ultimo_vehiculo[11]~output_o\);

-- Location: IOOBUF_X35_Y0_N9
\tiempo_paso_ultimo_vehiculo[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \tiempo_paso_ultimo_vehiculo[12]~output_o\);

-- Location: IOOBUF_X35_Y0_N2
\tiempo_paso_ultimo_vehiculo[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \tiempo_paso_ultimo_vehiculo[13]~output_o\);

-- Location: IOOBUF_X26_Y29_N16
\display_output[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_output[0]~reg0_q\,
	devoe => ww_devoe,
	o => \display_output[0]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\display_output[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_output[1]~reg0_q\,
	devoe => ww_devoe,
	o => \display_output[1]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\display_output[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \display_output[2]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\display_output[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \display_output[3]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\display_output[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \display_output[4]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\display_output[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \display_output[5]~output_o\);

-- Location: IOOBUF_X21_Y29_N23
\display_output[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \display_output[6]~output_o\);

-- Location: IOOBUF_X19_Y0_N9
\lcd_data[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_ControladorLCD|inst_PantallaLcd|lcd_data_int\(2),
	devoe => ww_devoe,
	o => \lcd_data[0]~output_o\);

-- Location: IOOBUF_X19_Y0_N16
\lcd_data[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_ControladorLCD|inst_PantallaLcd|lcd_data_int\(2),
	devoe => ww_devoe,
	o => \lcd_data[1]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\lcd_data[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_ControladorLCD|inst_PantallaLcd|lcd_data_int\(2),
	devoe => ww_devoe,
	o => \lcd_data[2]~output_o\);

-- Location: IOOBUF_X11_Y0_N30
\lcd_data[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_ControladorLCD|inst_PantallaLcd|lcd_data_int\(3),
	devoe => ww_devoe,
	o => \lcd_data[3]~output_o\);

-- Location: IOOBUF_X9_Y0_N16
\lcd_data[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_ControladorLCD|inst_PantallaLcd|lcd_data_int\(5),
	devoe => ww_devoe,
	o => \lcd_data[4]~output_o\);

-- Location: IOOBUF_X7_Y0_N23
\lcd_data[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_ControladorLCD|inst_PantallaLcd|lcd_data_int\(5),
	devoe => ww_devoe,
	o => \lcd_data[5]~output_o\);

-- Location: IOOBUF_X3_Y0_N30
\lcd_data[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \lcd_data[6]~output_o\);

-- Location: IOOBUF_X3_Y0_N23
\lcd_data[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \lcd_data[7]~output_o\);

-- Location: IOOBUF_X19_Y0_N23
\lcd_rs~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_ControladorLCD|inst_PantallaLcd|lcd_rs_int~q\,
	devoe => ww_devoe,
	o => \lcd_rs~output_o\);

-- Location: IOOBUF_X1_Y0_N16
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

-- Location: IOOBUF_X23_Y0_N2
\lcd_en~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_ControladorLCD|inst_PantallaLcd|lcd_en_int~q\,
	devoe => ww_devoe,
	o => \lcd_en~output_o\);

-- Location: IOOBUF_X0_Y25_N2
\categoria_vehiculo[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \categoria_vehiculo[0]~output_o\);

-- Location: IOOBUF_X0_Y26_N2
\categoria_vehiculo[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \categoria_vehiculo[1]~output_o\);

-- Location: IOOBUF_X0_Y26_N9
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

-- Location: IOOBUF_X0_Y25_N16
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
\sensor_trasero~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sensor_trasero,
	o => \sensor_trasero~input_o\);

-- Location: IOIBUF_X23_Y0_N29
\sensor_delantero~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sensor_delantero,
	o => \sensor_delantero~input_o\);

-- Location: LCCOMB_X22_Y1_N10
\inst_DetectorVehicular|distancia_actual[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_DetectorVehicular|distancia_actual[1]~1_combout\ = (\sensor_trasero~input_o\) # ((\sensor_delantero~input_o\) # (\inst_DetectorVehicular|estado_siguiente~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sensor_trasero~input_o\,
	datac => \sensor_delantero~input_o\,
	datad => \inst_DetectorVehicular|estado_siguiente~0_combout\,
	combout => \inst_DetectorVehicular|distancia_actual[1]~1_combout\);

-- Location: CLKCTRL_G18
\inst_DetectorVehicular|distancia_actual[1]~1clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst_DetectorVehicular|distancia_actual[1]~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst_DetectorVehicular|distancia_actual[1]~1clkctrl_outclk\);

-- Location: LCCOMB_X23_Y2_N0
\inst_DetectorVehicular|Add0~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_DetectorVehicular|Add0~64_combout\ = \inst_DetectorVehicular|distancia_actual\(0) $ (VCC)
-- \inst_DetectorVehicular|Add0~65\ = CARRY(\inst_DetectorVehicular|distancia_actual\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_DetectorVehicular|distancia_actual\(0),
	datad => VCC,
	combout => \inst_DetectorVehicular|Add0~64_combout\,
	cout => \inst_DetectorVehicular|Add0~65\);

-- Location: LCCOMB_X22_Y1_N28
\inst_DetectorVehicular|Add0~159\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_DetectorVehicular|Add0~159_combout\ = (\inst_DetectorVehicular|Add0~64_combout\ & (\inst_DetectorVehicular|estado_siguiente~0_combout\ & ((\sensor_delantero~input_o\) # (\sensor_trasero~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DetectorVehicular|Add0~64_combout\,
	datab => \sensor_delantero~input_o\,
	datac => \sensor_trasero~input_o\,
	datad => \inst_DetectorVehicular|estado_siguiente~0_combout\,
	combout => \inst_DetectorVehicular|Add0~159_combout\);

-- Location: LCCOMB_X22_Y1_N0
\inst_DetectorVehicular|distancia_actual[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_DetectorVehicular|distancia_actual\(0) = (GLOBAL(\inst_DetectorVehicular|distancia_actual[1]~1clkctrl_outclk\) & (\inst_DetectorVehicular|Add0~159_combout\)) # (!GLOBAL(\inst_DetectorVehicular|distancia_actual[1]~1clkctrl_outclk\) & 
-- ((\inst_DetectorVehicular|distancia_actual\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DetectorVehicular|Add0~159_combout\,
	datab => \inst_DetectorVehicular|distancia_actual\(0),
	datad => \inst_DetectorVehicular|distancia_actual[1]~1clkctrl_outclk\,
	combout => \inst_DetectorVehicular|distancia_actual\(0));

-- Location: LCCOMB_X23_Y2_N2
\inst_DetectorVehicular|Add0~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_DetectorVehicular|Add0~66_combout\ = (\inst_DetectorVehicular|distancia_actual\(1) & (!\inst_DetectorVehicular|Add0~65\)) # (!\inst_DetectorVehicular|distancia_actual\(1) & ((\inst_DetectorVehicular|Add0~65\) # (GND)))
-- \inst_DetectorVehicular|Add0~67\ = CARRY((!\inst_DetectorVehicular|Add0~65\) # (!\inst_DetectorVehicular|distancia_actual\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DetectorVehicular|distancia_actual\(1),
	datad => VCC,
	cin => \inst_DetectorVehicular|Add0~65\,
	combout => \inst_DetectorVehicular|Add0~66_combout\,
	cout => \inst_DetectorVehicular|Add0~67\);

-- Location: LCCOMB_X23_Y3_N14
\inst_DetectorVehicular|Add0~136\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_DetectorVehicular|Add0~136_combout\ = (\inst_DetectorVehicular|Add0~66_combout\ & (\inst_DetectorVehicular|estado_siguiente~0_combout\ & ((\sensor_trasero~input_o\) # (\sensor_delantero~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensor_trasero~input_o\,
	datab => \inst_DetectorVehicular|Add0~66_combout\,
	datac => \sensor_delantero~input_o\,
	datad => \inst_DetectorVehicular|estado_siguiente~0_combout\,
	combout => \inst_DetectorVehicular|Add0~136_combout\);

-- Location: LCCOMB_X23_Y3_N30
\inst_DetectorVehicular|distancia_actual[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_DetectorVehicular|distancia_actual\(1) = (GLOBAL(\inst_DetectorVehicular|distancia_actual[1]~1clkctrl_outclk\) & ((\inst_DetectorVehicular|Add0~136_combout\))) # (!GLOBAL(\inst_DetectorVehicular|distancia_actual[1]~1clkctrl_outclk\) & 
-- (\inst_DetectorVehicular|distancia_actual\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DetectorVehicular|distancia_actual\(1),
	datac => \inst_DetectorVehicular|Add0~136_combout\,
	datad => \inst_DetectorVehicular|distancia_actual[1]~1clkctrl_outclk\,
	combout => \inst_DetectorVehicular|distancia_actual\(1));

-- Location: LCCOMB_X23_Y2_N4
\inst_DetectorVehicular|Add0~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_DetectorVehicular|Add0~68_combout\ = (\inst_DetectorVehicular|distancia_actual\(2) & (\inst_DetectorVehicular|Add0~67\ $ (GND))) # (!\inst_DetectorVehicular|distancia_actual\(2) & (!\inst_DetectorVehicular|Add0~67\ & VCC))
-- \inst_DetectorVehicular|Add0~69\ = CARRY((\inst_DetectorVehicular|distancia_actual\(2) & !\inst_DetectorVehicular|Add0~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_DetectorVehicular|distancia_actual\(2),
	datad => VCC,
	cin => \inst_DetectorVehicular|Add0~67\,
	combout => \inst_DetectorVehicular|Add0~68_combout\,
	cout => \inst_DetectorVehicular|Add0~69\);

-- Location: LCCOMB_X23_Y3_N18
\inst_DetectorVehicular|Add0~137\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_DetectorVehicular|Add0~137_combout\ = (\inst_DetectorVehicular|Add0~68_combout\ & (\inst_DetectorVehicular|estado_siguiente~0_combout\ & ((\sensor_delantero~input_o\) # (\sensor_trasero~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensor_delantero~input_o\,
	datab => \inst_DetectorVehicular|Add0~68_combout\,
	datac => \sensor_trasero~input_o\,
	datad => \inst_DetectorVehicular|estado_siguiente~0_combout\,
	combout => \inst_DetectorVehicular|Add0~137_combout\);

-- Location: LCCOMB_X23_Y3_N20
\inst_DetectorVehicular|distancia_actual[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_DetectorVehicular|distancia_actual\(2) = (GLOBAL(\inst_DetectorVehicular|distancia_actual[1]~1clkctrl_outclk\) & ((\inst_DetectorVehicular|Add0~137_combout\))) # (!GLOBAL(\inst_DetectorVehicular|distancia_actual[1]~1clkctrl_outclk\) & 
-- (\inst_DetectorVehicular|distancia_actual\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_DetectorVehicular|distancia_actual\(2),
	datac => \inst_DetectorVehicular|Add0~137_combout\,
	datad => \inst_DetectorVehicular|distancia_actual[1]~1clkctrl_outclk\,
	combout => \inst_DetectorVehicular|distancia_actual\(2));

-- Location: LCCOMB_X23_Y2_N6
\inst_DetectorVehicular|Add0~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_DetectorVehicular|Add0~70_combout\ = (\inst_DetectorVehicular|distancia_actual\(3) & (!\inst_DetectorVehicular|Add0~69\)) # (!\inst_DetectorVehicular|distancia_actual\(3) & ((\inst_DetectorVehicular|Add0~69\) # (GND)))
-- \inst_DetectorVehicular|Add0~71\ = CARRY((!\inst_DetectorVehicular|Add0~69\) # (!\inst_DetectorVehicular|distancia_actual\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DetectorVehicular|distancia_actual\(3),
	datad => VCC,
	cin => \inst_DetectorVehicular|Add0~69\,
	combout => \inst_DetectorVehicular|Add0~70_combout\,
	cout => \inst_DetectorVehicular|Add0~71\);

-- Location: LCCOMB_X23_Y3_N24
\inst_DetectorVehicular|Add0~138\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_DetectorVehicular|Add0~138_combout\ = (\inst_DetectorVehicular|Add0~70_combout\ & (\inst_DetectorVehicular|estado_siguiente~0_combout\ & ((\sensor_trasero~input_o\) # (\sensor_delantero~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DetectorVehicular|Add0~70_combout\,
	datab => \sensor_trasero~input_o\,
	datac => \sensor_delantero~input_o\,
	datad => \inst_DetectorVehicular|estado_siguiente~0_combout\,
	combout => \inst_DetectorVehicular|Add0~138_combout\);

-- Location: LCCOMB_X23_Y3_N4
\inst_DetectorVehicular|distancia_actual[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_DetectorVehicular|distancia_actual\(3) = (GLOBAL(\inst_DetectorVehicular|distancia_actual[1]~1clkctrl_outclk\) & ((\inst_DetectorVehicular|Add0~138_combout\))) # (!GLOBAL(\inst_DetectorVehicular|distancia_actual[1]~1clkctrl_outclk\) & 
-- (\inst_DetectorVehicular|distancia_actual\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_DetectorVehicular|distancia_actual\(3),
	datac => \inst_DetectorVehicular|Add0~138_combout\,
	datad => \inst_DetectorVehicular|distancia_actual[1]~1clkctrl_outclk\,
	combout => \inst_DetectorVehicular|distancia_actual\(3));

-- Location: LCCOMB_X23_Y2_N8
\inst_DetectorVehicular|Add0~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_DetectorVehicular|Add0~72_combout\ = (\inst_DetectorVehicular|distancia_actual\(4) & (\inst_DetectorVehicular|Add0~71\ $ (GND))) # (!\inst_DetectorVehicular|distancia_actual\(4) & (!\inst_DetectorVehicular|Add0~71\ & VCC))
-- \inst_DetectorVehicular|Add0~73\ = CARRY((\inst_DetectorVehicular|distancia_actual\(4) & !\inst_DetectorVehicular|Add0~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_DetectorVehicular|distancia_actual\(4),
	datad => VCC,
	cin => \inst_DetectorVehicular|Add0~71\,
	combout => \inst_DetectorVehicular|Add0~72_combout\,
	cout => \inst_DetectorVehicular|Add0~73\);

-- Location: LCCOMB_X23_Y3_N10
\inst_DetectorVehicular|Add0~139\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_DetectorVehicular|Add0~139_combout\ = (\inst_DetectorVehicular|Add0~72_combout\ & (\inst_DetectorVehicular|estado_siguiente~0_combout\ & ((\sensor_trasero~input_o\) # (\sensor_delantero~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DetectorVehicular|Add0~72_combout\,
	datab => \sensor_trasero~input_o\,
	datac => \sensor_delantero~input_o\,
	datad => \inst_DetectorVehicular|estado_siguiente~0_combout\,
	combout => \inst_DetectorVehicular|Add0~139_combout\);

-- Location: LCCOMB_X23_Y3_N16
\inst_DetectorVehicular|distancia_actual[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_DetectorVehicular|distancia_actual\(4) = (GLOBAL(\inst_DetectorVehicular|distancia_actual[1]~1clkctrl_outclk\) & ((\inst_DetectorVehicular|Add0~139_combout\))) # (!GLOBAL(\inst_DetectorVehicular|distancia_actual[1]~1clkctrl_outclk\) & 
-- (\inst_DetectorVehicular|distancia_actual\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_DetectorVehicular|distancia_actual\(4),
	datac => \inst_DetectorVehicular|Add0~139_combout\,
	datad => \inst_DetectorVehicular|distancia_actual[1]~1clkctrl_outclk\,
	combout => \inst_DetectorVehicular|distancia_actual\(4));

-- Location: LCCOMB_X23_Y2_N10
\inst_DetectorVehicular|Add0~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_DetectorVehicular|Add0~74_combout\ = (\inst_DetectorVehicular|distancia_actual\(5) & (!\inst_DetectorVehicular|Add0~73\)) # (!\inst_DetectorVehicular|distancia_actual\(5) & ((\inst_DetectorVehicular|Add0~73\) # (GND)))
-- \inst_DetectorVehicular|Add0~75\ = CARRY((!\inst_DetectorVehicular|Add0~73\) # (!\inst_DetectorVehicular|distancia_actual\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DetectorVehicular|distancia_actual\(5),
	datad => VCC,
	cin => \inst_DetectorVehicular|Add0~73\,
	combout => \inst_DetectorVehicular|Add0~74_combout\,
	cout => \inst_DetectorVehicular|Add0~75\);

-- Location: LCCOMB_X22_Y3_N8
\inst_DetectorVehicular|Add0~150\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_DetectorVehicular|Add0~150_combout\ = (\inst_DetectorVehicular|estado_siguiente~0_combout\ & (\inst_DetectorVehicular|Add0~74_combout\ & ((\sensor_delantero~input_o\) # (\sensor_trasero~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensor_delantero~input_o\,
	datab => \sensor_trasero~input_o\,
	datac => \inst_DetectorVehicular|estado_siguiente~0_combout\,
	datad => \inst_DetectorVehicular|Add0~74_combout\,
	combout => \inst_DetectorVehicular|Add0~150_combout\);

-- Location: LCCOMB_X22_Y3_N30
\inst_DetectorVehicular|distancia_actual[5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_DetectorVehicular|distancia_actual\(5) = (GLOBAL(\inst_DetectorVehicular|distancia_actual[1]~1clkctrl_outclk\) & (\inst_DetectorVehicular|Add0~150_combout\)) # (!GLOBAL(\inst_DetectorVehicular|distancia_actual[1]~1clkctrl_outclk\) & 
-- ((\inst_DetectorVehicular|distancia_actual\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_DetectorVehicular|Add0~150_combout\,
	datac => \inst_DetectorVehicular|distancia_actual\(5),
	datad => \inst_DetectorVehicular|distancia_actual[1]~1clkctrl_outclk\,
	combout => \inst_DetectorVehicular|distancia_actual\(5));

-- Location: LCCOMB_X23_Y2_N12
\inst_DetectorVehicular|Add0~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_DetectorVehicular|Add0~76_combout\ = (\inst_DetectorVehicular|distancia_actual\(6) & (\inst_DetectorVehicular|Add0~75\ $ (GND))) # (!\inst_DetectorVehicular|distancia_actual\(6) & (!\inst_DetectorVehicular|Add0~75\ & VCC))
-- \inst_DetectorVehicular|Add0~77\ = CARRY((\inst_DetectorVehicular|distancia_actual\(6) & !\inst_DetectorVehicular|Add0~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_DetectorVehicular|distancia_actual\(6),
	datad => VCC,
	cin => \inst_DetectorVehicular|Add0~75\,
	combout => \inst_DetectorVehicular|Add0~76_combout\,
	cout => \inst_DetectorVehicular|Add0~77\);

-- Location: LCCOMB_X22_Y3_N18
\inst_DetectorVehicular|Add0~151\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_DetectorVehicular|Add0~151_combout\ = (\inst_DetectorVehicular|estado_siguiente~0_combout\ & (\inst_DetectorVehicular|Add0~76_combout\ & ((\sensor_delantero~input_o\) # (\sensor_trasero~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensor_delantero~input_o\,
	datab => \sensor_trasero~input_o\,
	datac => \inst_DetectorVehicular|estado_siguiente~0_combout\,
	datad => \inst_DetectorVehicular|Add0~76_combout\,
	combout => \inst_DetectorVehicular|Add0~151_combout\);

-- Location: LCCOMB_X22_Y3_N4
\inst_DetectorVehicular|distancia_actual[6]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_DetectorVehicular|distancia_actual\(6) = (GLOBAL(\inst_DetectorVehicular|distancia_actual[1]~1clkctrl_outclk\) & (\inst_DetectorVehicular|Add0~151_combout\)) # (!GLOBAL(\inst_DetectorVehicular|distancia_actual[1]~1clkctrl_outclk\) & 
-- ((\inst_DetectorVehicular|distancia_actual\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DetectorVehicular|Add0~151_combout\,
	datac => \inst_DetectorVehicular|distancia_actual\(6),
	datad => \inst_DetectorVehicular|distancia_actual[1]~1clkctrl_outclk\,
	combout => \inst_DetectorVehicular|distancia_actual\(6));

-- Location: LCCOMB_X23_Y2_N14
\inst_DetectorVehicular|Add0~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_DetectorVehicular|Add0~78_combout\ = (\inst_DetectorVehicular|distancia_actual\(7) & (!\inst_DetectorVehicular|Add0~77\)) # (!\inst_DetectorVehicular|distancia_actual\(7) & ((\inst_DetectorVehicular|Add0~77\) # (GND)))
-- \inst_DetectorVehicular|Add0~79\ = CARRY((!\inst_DetectorVehicular|Add0~77\) # (!\inst_DetectorVehicular|distancia_actual\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_DetectorVehicular|distancia_actual\(7),
	datad => VCC,
	cin => \inst_DetectorVehicular|Add0~77\,
	combout => \inst_DetectorVehicular|Add0~78_combout\,
	cout => \inst_DetectorVehicular|Add0~79\);

-- Location: LCCOMB_X22_Y3_N20
\inst_DetectorVehicular|Add0~152\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_DetectorVehicular|Add0~152_combout\ = (\inst_DetectorVehicular|Add0~78_combout\ & (\inst_DetectorVehicular|estado_siguiente~0_combout\ & ((\sensor_trasero~input_o\) # (\sensor_delantero~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DetectorVehicular|Add0~78_combout\,
	datab => \sensor_trasero~input_o\,
	datac => \inst_DetectorVehicular|estado_siguiente~0_combout\,
	datad => \sensor_delantero~input_o\,
	combout => \inst_DetectorVehicular|Add0~152_combout\);

-- Location: LCCOMB_X22_Y3_N6
\inst_DetectorVehicular|distancia_actual[7]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_DetectorVehicular|distancia_actual\(7) = (GLOBAL(\inst_DetectorVehicular|distancia_actual[1]~1clkctrl_outclk\) & (\inst_DetectorVehicular|Add0~152_combout\)) # (!GLOBAL(\inst_DetectorVehicular|distancia_actual[1]~1clkctrl_outclk\) & 
-- ((\inst_DetectorVehicular|distancia_actual\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DetectorVehicular|Add0~152_combout\,
	datac => \inst_DetectorVehicular|distancia_actual[1]~1clkctrl_outclk\,
	datad => \inst_DetectorVehicular|distancia_actual\(7),
	combout => \inst_DetectorVehicular|distancia_actual\(7));

-- Location: LCCOMB_X23_Y2_N16
\inst_DetectorVehicular|Add0~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_DetectorVehicular|Add0~80_combout\ = (\inst_DetectorVehicular|distancia_actual\(8) & (\inst_DetectorVehicular|Add0~79\ $ (GND))) # (!\inst_DetectorVehicular|distancia_actual\(8) & (!\inst_DetectorVehicular|Add0~79\ & VCC))
-- \inst_DetectorVehicular|Add0~81\ = CARRY((\inst_DetectorVehicular|distancia_actual\(8) & !\inst_DetectorVehicular|Add0~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DetectorVehicular|distancia_actual\(8),
	datad => VCC,
	cin => \inst_DetectorVehicular|Add0~79\,
	combout => \inst_DetectorVehicular|Add0~80_combout\,
	cout => \inst_DetectorVehicular|Add0~81\);

-- Location: LCCOMB_X24_Y3_N26
\inst_DetectorVehicular|Add0~153\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_DetectorVehicular|Add0~153_combout\ = (\inst_DetectorVehicular|estado_siguiente~0_combout\ & (\inst_DetectorVehicular|Add0~80_combout\ & ((\sensor_trasero~input_o\) # (\sensor_delantero~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensor_trasero~input_o\,
	datab => \sensor_delantero~input_o\,
	datac => \inst_DetectorVehicular|estado_siguiente~0_combout\,
	datad => \inst_DetectorVehicular|Add0~80_combout\,
	combout => \inst_DetectorVehicular|Add0~153_combout\);

-- Location: LCCOMB_X24_Y3_N24
\inst_DetectorVehicular|distancia_actual[8]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_DetectorVehicular|distancia_actual\(8) = (GLOBAL(\inst_DetectorVehicular|distancia_actual[1]~1clkctrl_outclk\) & (\inst_DetectorVehicular|Add0~153_combout\)) # (!GLOBAL(\inst_DetectorVehicular|distancia_actual[1]~1clkctrl_outclk\) & 
-- ((\inst_DetectorVehicular|distancia_actual\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DetectorVehicular|Add0~153_combout\,
	datab => \inst_DetectorVehicular|distancia_actual\(8),
	datad => \inst_DetectorVehicular|distancia_actual[1]~1clkctrl_outclk\,
	combout => \inst_DetectorVehicular|distancia_actual\(8));

-- Location: LCCOMB_X23_Y2_N18
\inst_DetectorVehicular|Add0~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_DetectorVehicular|Add0~82_combout\ = (\inst_DetectorVehicular|distancia_actual\(9) & (!\inst_DetectorVehicular|Add0~81\)) # (!\inst_DetectorVehicular|distancia_actual\(9) & ((\inst_DetectorVehicular|Add0~81\) # (GND)))
-- \inst_DetectorVehicular|Add0~83\ = CARRY((!\inst_DetectorVehicular|Add0~81\) # (!\inst_DetectorVehicular|distancia_actual\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_DetectorVehicular|distancia_actual\(9),
	datad => VCC,
	cin => \inst_DetectorVehicular|Add0~81\,
	combout => \inst_DetectorVehicular|Add0~82_combout\,
	cout => \inst_DetectorVehicular|Add0~83\);

-- Location: LCCOMB_X24_Y1_N18
\inst_DetectorVehicular|Add0~133\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_DetectorVehicular|Add0~133_combout\ = (\inst_DetectorVehicular|Add0~82_combout\ & (\inst_DetectorVehicular|estado_siguiente~0_combout\ & ((\sensor_delantero~input_o\) # (\sensor_trasero~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensor_delantero~input_o\,
	datab => \sensor_trasero~input_o\,
	datac => \inst_DetectorVehicular|Add0~82_combout\,
	datad => \inst_DetectorVehicular|estado_siguiente~0_combout\,
	combout => \inst_DetectorVehicular|Add0~133_combout\);

-- Location: LCCOMB_X24_Y1_N0
\inst_DetectorVehicular|distancia_actual[9]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_DetectorVehicular|distancia_actual\(9) = (GLOBAL(\inst_DetectorVehicular|distancia_actual[1]~1clkctrl_outclk\) & ((\inst_DetectorVehicular|Add0~133_combout\))) # (!GLOBAL(\inst_DetectorVehicular|distancia_actual[1]~1clkctrl_outclk\) & 
-- (\inst_DetectorVehicular|distancia_actual\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_DetectorVehicular|distancia_actual\(9),
	datac => \inst_DetectorVehicular|distancia_actual[1]~1clkctrl_outclk\,
	datad => \inst_DetectorVehicular|Add0~133_combout\,
	combout => \inst_DetectorVehicular|distancia_actual\(9));

-- Location: LCCOMB_X23_Y2_N20
\inst_DetectorVehicular|Add0~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_DetectorVehicular|Add0~84_combout\ = (\inst_DetectorVehicular|distancia_actual\(10) & (\inst_DetectorVehicular|Add0~83\ $ (GND))) # (!\inst_DetectorVehicular|distancia_actual\(10) & (!\inst_DetectorVehicular|Add0~83\ & VCC))
-- \inst_DetectorVehicular|Add0~85\ = CARRY((\inst_DetectorVehicular|distancia_actual\(10) & !\inst_DetectorVehicular|Add0~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_DetectorVehicular|distancia_actual\(10),
	datad => VCC,
	cin => \inst_DetectorVehicular|Add0~83\,
	combout => \inst_DetectorVehicular|Add0~84_combout\,
	cout => \inst_DetectorVehicular|Add0~85\);

-- Location: LCCOMB_X23_Y3_N12
\inst_DetectorVehicular|Add0~140\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_DetectorVehicular|Add0~140_combout\ = (\inst_DetectorVehicular|Add0~84_combout\ & (\inst_DetectorVehicular|estado_siguiente~0_combout\ & ((\sensor_delantero~input_o\) # (\sensor_trasero~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensor_delantero~input_o\,
	datab => \sensor_trasero~input_o\,
	datac => \inst_DetectorVehicular|Add0~84_combout\,
	datad => \inst_DetectorVehicular|estado_siguiente~0_combout\,
	combout => \inst_DetectorVehicular|Add0~140_combout\);

-- Location: LCCOMB_X23_Y3_N28
\inst_DetectorVehicular|distancia_actual[10]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_DetectorVehicular|distancia_actual\(10) = (GLOBAL(\inst_DetectorVehicular|distancia_actual[1]~1clkctrl_outclk\) & ((\inst_DetectorVehicular|Add0~140_combout\))) # (!GLOBAL(\inst_DetectorVehicular|distancia_actual[1]~1clkctrl_outclk\) & 
-- (\inst_DetectorVehicular|distancia_actual\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_DetectorVehicular|distancia_actual\(10),
	datac => \inst_DetectorVehicular|Add0~140_combout\,
	datad => \inst_DetectorVehicular|distancia_actual[1]~1clkctrl_outclk\,
	combout => \inst_DetectorVehicular|distancia_actual\(10));

-- Location: LCCOMB_X23_Y2_N22
\inst_DetectorVehicular|Add0~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_DetectorVehicular|Add0~86_combout\ = (\inst_DetectorVehicular|distancia_actual\(11) & (!\inst_DetectorVehicular|Add0~85\)) # (!\inst_DetectorVehicular|distancia_actual\(11) & ((\inst_DetectorVehicular|Add0~85\) # (GND)))
-- \inst_DetectorVehicular|Add0~87\ = CARRY((!\inst_DetectorVehicular|Add0~85\) # (!\inst_DetectorVehicular|distancia_actual\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_DetectorVehicular|distancia_actual\(11),
	datad => VCC,
	cin => \inst_DetectorVehicular|Add0~85\,
	combout => \inst_DetectorVehicular|Add0~86_combout\,
	cout => \inst_DetectorVehicular|Add0~87\);

-- Location: LCCOMB_X24_Y3_N2
\inst_DetectorVehicular|Add0~134\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_DetectorVehicular|Add0~134_combout\ = (\inst_DetectorVehicular|Add0~86_combout\ & (\inst_DetectorVehicular|estado_siguiente~0_combout\ & ((\sensor_delantero~input_o\) # (\sensor_trasero~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensor_delantero~input_o\,
	datab => \inst_DetectorVehicular|Add0~86_combout\,
	datac => \inst_DetectorVehicular|estado_siguiente~0_combout\,
	datad => \sensor_trasero~input_o\,
	combout => \inst_DetectorVehicular|Add0~134_combout\);

-- Location: LCCOMB_X24_Y3_N12
\inst_DetectorVehicular|distancia_actual[11]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_DetectorVehicular|distancia_actual\(11) = (GLOBAL(\inst_DetectorVehicular|distancia_actual[1]~1clkctrl_outclk\) & (\inst_DetectorVehicular|Add0~134_combout\)) # (!GLOBAL(\inst_DetectorVehicular|distancia_actual[1]~1clkctrl_outclk\) & 
-- ((\inst_DetectorVehicular|distancia_actual\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_DetectorVehicular|Add0~134_combout\,
	datac => \inst_DetectorVehicular|distancia_actual\(11),
	datad => \inst_DetectorVehicular|distancia_actual[1]~1clkctrl_outclk\,
	combout => \inst_DetectorVehicular|distancia_actual\(11));

-- Location: LCCOMB_X23_Y2_N24
\inst_DetectorVehicular|Add0~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_DetectorVehicular|Add0~88_combout\ = (\inst_DetectorVehicular|distancia_actual\(12) & (\inst_DetectorVehicular|Add0~87\ $ (GND))) # (!\inst_DetectorVehicular|distancia_actual\(12) & (!\inst_DetectorVehicular|Add0~87\ & VCC))
-- \inst_DetectorVehicular|Add0~89\ = CARRY((\inst_DetectorVehicular|distancia_actual\(12) & !\inst_DetectorVehicular|Add0~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DetectorVehicular|distancia_actual\(12),
	datad => VCC,
	cin => \inst_DetectorVehicular|Add0~87\,
	combout => \inst_DetectorVehicular|Add0~88_combout\,
	cout => \inst_DetectorVehicular|Add0~89\);

-- Location: LCCOMB_X22_Y2_N16
\inst_DetectorVehicular|Add0~141\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_DetectorVehicular|Add0~141_combout\ = (\inst_DetectorVehicular|Add0~88_combout\ & (\inst_DetectorVehicular|estado_siguiente~0_combout\ & ((\sensor_delantero~input_o\) # (\sensor_trasero~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensor_delantero~input_o\,
	datab => \inst_DetectorVehicular|Add0~88_combout\,
	datac => \inst_DetectorVehicular|estado_siguiente~0_combout\,
	datad => \sensor_trasero~input_o\,
	combout => \inst_DetectorVehicular|Add0~141_combout\);

-- Location: LCCOMB_X22_Y2_N26
\inst_DetectorVehicular|distancia_actual[12]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_DetectorVehicular|distancia_actual\(12) = (GLOBAL(\inst_DetectorVehicular|distancia_actual[1]~1clkctrl_outclk\) & ((\inst_DetectorVehicular|Add0~141_combout\))) # (!GLOBAL(\inst_DetectorVehicular|distancia_actual[1]~1clkctrl_outclk\) & 
-- (\inst_DetectorVehicular|distancia_actual\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DetectorVehicular|distancia_actual\(12),
	datac => \inst_DetectorVehicular|Add0~141_combout\,
	datad => \inst_DetectorVehicular|distancia_actual[1]~1clkctrl_outclk\,
	combout => \inst_DetectorVehicular|distancia_actual\(12));

-- Location: LCCOMB_X23_Y2_N26
\inst_DetectorVehicular|Add0~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_DetectorVehicular|Add0~90_combout\ = (\inst_DetectorVehicular|distancia_actual\(13) & (!\inst_DetectorVehicular|Add0~89\)) # (!\inst_DetectorVehicular|distancia_actual\(13) & ((\inst_DetectorVehicular|Add0~89\) # (GND)))
-- \inst_DetectorVehicular|Add0~91\ = CARRY((!\inst_DetectorVehicular|Add0~89\) # (!\inst_DetectorVehicular|distancia_actual\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DetectorVehicular|distancia_actual\(13),
	datad => VCC,
	cin => \inst_DetectorVehicular|Add0~89\,
	combout => \inst_DetectorVehicular|Add0~90_combout\,
	cout => \inst_DetectorVehicular|Add0~91\);

-- Location: LCCOMB_X24_Y1_N12
\inst_DetectorVehicular|Add0~128\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_DetectorVehicular|Add0~128_combout\ = (\inst_DetectorVehicular|Add0~90_combout\ & (\inst_DetectorVehicular|estado_siguiente~0_combout\ & ((\sensor_delantero~input_o\) # (\sensor_trasero~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensor_delantero~input_o\,
	datab => \sensor_trasero~input_o\,
	datac => \inst_DetectorVehicular|Add0~90_combout\,
	datad => \inst_DetectorVehicular|estado_siguiente~0_combout\,
	combout => \inst_DetectorVehicular|Add0~128_combout\);

-- Location: LCCOMB_X24_Y1_N2
\inst_DetectorVehicular|distancia_actual[13]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_DetectorVehicular|distancia_actual\(13) = (GLOBAL(\inst_DetectorVehicular|distancia_actual[1]~1clkctrl_outclk\) & ((\inst_DetectorVehicular|Add0~128_combout\))) # (!GLOBAL(\inst_DetectorVehicular|distancia_actual[1]~1clkctrl_outclk\) & 
-- (\inst_DetectorVehicular|distancia_actual\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_DetectorVehicular|distancia_actual\(13),
	datac => \inst_DetectorVehicular|distancia_actual[1]~1clkctrl_outclk\,
	datad => \inst_DetectorVehicular|Add0~128_combout\,
	combout => \inst_DetectorVehicular|distancia_actual\(13));

-- Location: LCCOMB_X23_Y2_N28
\inst_DetectorVehicular|Add0~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_DetectorVehicular|Add0~92_combout\ = (\inst_DetectorVehicular|distancia_actual\(14) & (\inst_DetectorVehicular|Add0~91\ $ (GND))) # (!\inst_DetectorVehicular|distancia_actual\(14) & (!\inst_DetectorVehicular|Add0~91\ & VCC))
-- \inst_DetectorVehicular|Add0~93\ = CARRY((\inst_DetectorVehicular|distancia_actual\(14) & !\inst_DetectorVehicular|Add0~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DetectorVehicular|distancia_actual\(14),
	datad => VCC,
	cin => \inst_DetectorVehicular|Add0~91\,
	combout => \inst_DetectorVehicular|Add0~92_combout\,
	cout => \inst_DetectorVehicular|Add0~93\);

-- Location: LCCOMB_X24_Y1_N14
\inst_DetectorVehicular|Add0~129\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_DetectorVehicular|Add0~129_combout\ = (\inst_DetectorVehicular|Add0~92_combout\ & (\inst_DetectorVehicular|estado_siguiente~0_combout\ & ((\sensor_delantero~input_o\) # (\sensor_trasero~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensor_delantero~input_o\,
	datab => \sensor_trasero~input_o\,
	datac => \inst_DetectorVehicular|Add0~92_combout\,
	datad => \inst_DetectorVehicular|estado_siguiente~0_combout\,
	combout => \inst_DetectorVehicular|Add0~129_combout\);

-- Location: LCCOMB_X24_Y1_N8
\inst_DetectorVehicular|distancia_actual[14]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_DetectorVehicular|distancia_actual\(14) = (GLOBAL(\inst_DetectorVehicular|distancia_actual[1]~1clkctrl_outclk\) & ((\inst_DetectorVehicular|Add0~129_combout\))) # (!GLOBAL(\inst_DetectorVehicular|distancia_actual[1]~1clkctrl_outclk\) & 
-- (\inst_DetectorVehicular|distancia_actual\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_DetectorVehicular|distancia_actual\(14),
	datac => \inst_DetectorVehicular|distancia_actual[1]~1clkctrl_outclk\,
	datad => \inst_DetectorVehicular|Add0~129_combout\,
	combout => \inst_DetectorVehicular|distancia_actual\(14));

-- Location: LCCOMB_X23_Y2_N30
\inst_DetectorVehicular|Add0~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_DetectorVehicular|Add0~94_combout\ = (\inst_DetectorVehicular|distancia_actual\(15) & (!\inst_DetectorVehicular|Add0~93\)) # (!\inst_DetectorVehicular|distancia_actual\(15) & ((\inst_DetectorVehicular|Add0~93\) # (GND)))
-- \inst_DetectorVehicular|Add0~95\ = CARRY((!\inst_DetectorVehicular|Add0~93\) # (!\inst_DetectorVehicular|distancia_actual\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DetectorVehicular|distancia_actual\(15),
	datad => VCC,
	cin => \inst_DetectorVehicular|Add0~93\,
	combout => \inst_DetectorVehicular|Add0~94_combout\,
	cout => \inst_DetectorVehicular|Add0~95\);

-- Location: LCCOMB_X24_Y1_N16
\inst_DetectorVehicular|Add0~130\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_DetectorVehicular|Add0~130_combout\ = (\inst_DetectorVehicular|Add0~94_combout\ & (\inst_DetectorVehicular|estado_siguiente~0_combout\ & ((\sensor_trasero~input_o\) # (\sensor_delantero~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DetectorVehicular|Add0~94_combout\,
	datab => \sensor_trasero~input_o\,
	datac => \sensor_delantero~input_o\,
	datad => \inst_DetectorVehicular|estado_siguiente~0_combout\,
	combout => \inst_DetectorVehicular|Add0~130_combout\);

-- Location: LCCOMB_X24_Y1_N30
\inst_DetectorVehicular|distancia_actual[15]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_DetectorVehicular|distancia_actual\(15) = (GLOBAL(\inst_DetectorVehicular|distancia_actual[1]~1clkctrl_outclk\) & ((\inst_DetectorVehicular|Add0~130_combout\))) # (!GLOBAL(\inst_DetectorVehicular|distancia_actual[1]~1clkctrl_outclk\) & 
-- (\inst_DetectorVehicular|distancia_actual\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DetectorVehicular|distancia_actual\(15),
	datac => \inst_DetectorVehicular|distancia_actual[1]~1clkctrl_outclk\,
	datad => \inst_DetectorVehicular|Add0~130_combout\,
	combout => \inst_DetectorVehicular|distancia_actual\(15));

-- Location: LCCOMB_X23_Y1_N0
\inst_DetectorVehicular|Add0~96\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_DetectorVehicular|Add0~96_combout\ = (\inst_DetectorVehicular|distancia_actual\(16) & (\inst_DetectorVehicular|Add0~95\ $ (GND))) # (!\inst_DetectorVehicular|distancia_actual\(16) & (!\inst_DetectorVehicular|Add0~95\ & VCC))
-- \inst_DetectorVehicular|Add0~97\ = CARRY((\inst_DetectorVehicular|distancia_actual\(16) & !\inst_DetectorVehicular|Add0~95\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DetectorVehicular|distancia_actual\(16),
	datad => VCC,
	cin => \inst_DetectorVehicular|Add0~95\,
	combout => \inst_DetectorVehicular|Add0~96_combout\,
	cout => \inst_DetectorVehicular|Add0~97\);

-- Location: LCCOMB_X24_Y1_N22
\inst_DetectorVehicular|Add0~131\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_DetectorVehicular|Add0~131_combout\ = (\inst_DetectorVehicular|Add0~96_combout\ & (\inst_DetectorVehicular|estado_siguiente~0_combout\ & ((\sensor_delantero~input_o\) # (\sensor_trasero~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensor_delantero~input_o\,
	datab => \sensor_trasero~input_o\,
	datac => \inst_DetectorVehicular|Add0~96_combout\,
	datad => \inst_DetectorVehicular|estado_siguiente~0_combout\,
	combout => \inst_DetectorVehicular|Add0~131_combout\);

-- Location: LCCOMB_X24_Y1_N24
\inst_DetectorVehicular|distancia_actual[16]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_DetectorVehicular|distancia_actual\(16) = (GLOBAL(\inst_DetectorVehicular|distancia_actual[1]~1clkctrl_outclk\) & ((\inst_DetectorVehicular|Add0~131_combout\))) # (!GLOBAL(\inst_DetectorVehicular|distancia_actual[1]~1clkctrl_outclk\) & 
-- (\inst_DetectorVehicular|distancia_actual\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_DetectorVehicular|distancia_actual\(16),
	datac => \inst_DetectorVehicular|distancia_actual[1]~1clkctrl_outclk\,
	datad => \inst_DetectorVehicular|Add0~131_combout\,
	combout => \inst_DetectorVehicular|distancia_actual\(16));

-- Location: LCCOMB_X23_Y1_N2
\inst_DetectorVehicular|Add0~98\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_DetectorVehicular|Add0~98_combout\ = (\inst_DetectorVehicular|distancia_actual\(17) & (!\inst_DetectorVehicular|Add0~97\)) # (!\inst_DetectorVehicular|distancia_actual\(17) & ((\inst_DetectorVehicular|Add0~97\) # (GND)))
-- \inst_DetectorVehicular|Add0~99\ = CARRY((!\inst_DetectorVehicular|Add0~97\) # (!\inst_DetectorVehicular|distancia_actual\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_DetectorVehicular|distancia_actual\(17),
	datad => VCC,
	cin => \inst_DetectorVehicular|Add0~97\,
	combout => \inst_DetectorVehicular|Add0~98_combout\,
	cout => \inst_DetectorVehicular|Add0~99\);

-- Location: LCCOMB_X24_Y3_N22
\inst_DetectorVehicular|Add0~146\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_DetectorVehicular|Add0~146_combout\ = (\inst_DetectorVehicular|Add0~98_combout\ & (\inst_DetectorVehicular|estado_siguiente~0_combout\ & ((\sensor_trasero~input_o\) # (\sensor_delantero~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensor_trasero~input_o\,
	datab => \sensor_delantero~input_o\,
	datac => \inst_DetectorVehicular|Add0~98_combout\,
	datad => \inst_DetectorVehicular|estado_siguiente~0_combout\,
	combout => \inst_DetectorVehicular|Add0~146_combout\);

-- Location: LCCOMB_X24_Y3_N6
\inst_DetectorVehicular|distancia_actual[17]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_DetectorVehicular|distancia_actual\(17) = (GLOBAL(\inst_DetectorVehicular|distancia_actual[1]~1clkctrl_outclk\) & ((\inst_DetectorVehicular|Add0~146_combout\))) # (!GLOBAL(\inst_DetectorVehicular|distancia_actual[1]~1clkctrl_outclk\) & 
-- (\inst_DetectorVehicular|distancia_actual\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DetectorVehicular|distancia_actual\(17),
	datab => \inst_DetectorVehicular|Add0~146_combout\,
	datad => \inst_DetectorVehicular|distancia_actual[1]~1clkctrl_outclk\,
	combout => \inst_DetectorVehicular|distancia_actual\(17));

-- Location: LCCOMB_X23_Y1_N4
\inst_DetectorVehicular|Add0~100\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_DetectorVehicular|Add0~100_combout\ = (\inst_DetectorVehicular|distancia_actual\(18) & (\inst_DetectorVehicular|Add0~99\ $ (GND))) # (!\inst_DetectorVehicular|distancia_actual\(18) & (!\inst_DetectorVehicular|Add0~99\ & VCC))
-- \inst_DetectorVehicular|Add0~101\ = CARRY((\inst_DetectorVehicular|distancia_actual\(18) & !\inst_DetectorVehicular|Add0~99\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_DetectorVehicular|distancia_actual\(18),
	datad => VCC,
	cin => \inst_DetectorVehicular|Add0~99\,
	combout => \inst_DetectorVehicular|Add0~100_combout\,
	cout => \inst_DetectorVehicular|Add0~101\);

-- Location: LCCOMB_X24_Y3_N10
\inst_DetectorVehicular|Add0~147\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_DetectorVehicular|Add0~147_combout\ = (\inst_DetectorVehicular|estado_siguiente~0_combout\ & (\inst_DetectorVehicular|Add0~100_combout\ & ((\sensor_trasero~input_o\) # (\sensor_delantero~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensor_trasero~input_o\,
	datab => \sensor_delantero~input_o\,
	datac => \inst_DetectorVehicular|estado_siguiente~0_combout\,
	datad => \inst_DetectorVehicular|Add0~100_combout\,
	combout => \inst_DetectorVehicular|Add0~147_combout\);

-- Location: LCCOMB_X24_Y3_N14
\inst_DetectorVehicular|distancia_actual[18]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_DetectorVehicular|distancia_actual\(18) = (GLOBAL(\inst_DetectorVehicular|distancia_actual[1]~1clkctrl_outclk\) & (\inst_DetectorVehicular|Add0~147_combout\)) # (!GLOBAL(\inst_DetectorVehicular|distancia_actual[1]~1clkctrl_outclk\) & 
-- ((\inst_DetectorVehicular|distancia_actual\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DetectorVehicular|Add0~147_combout\,
	datac => \inst_DetectorVehicular|distancia_actual\(18),
	datad => \inst_DetectorVehicular|distancia_actual[1]~1clkctrl_outclk\,
	combout => \inst_DetectorVehicular|distancia_actual\(18));

-- Location: LCCOMB_X23_Y1_N6
\inst_DetectorVehicular|Add0~102\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_DetectorVehicular|Add0~102_combout\ = (\inst_DetectorVehicular|distancia_actual\(19) & (!\inst_DetectorVehicular|Add0~101\)) # (!\inst_DetectorVehicular|distancia_actual\(19) & ((\inst_DetectorVehicular|Add0~101\) # (GND)))
-- \inst_DetectorVehicular|Add0~103\ = CARRY((!\inst_DetectorVehicular|Add0~101\) # (!\inst_DetectorVehicular|distancia_actual\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_DetectorVehicular|distancia_actual\(19),
	datad => VCC,
	cin => \inst_DetectorVehicular|Add0~101\,
	combout => \inst_DetectorVehicular|Add0~102_combout\,
	cout => \inst_DetectorVehicular|Add0~103\);

-- Location: LCCOMB_X24_Y3_N18
\inst_DetectorVehicular|Add0~148\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_DetectorVehicular|Add0~148_combout\ = (\inst_DetectorVehicular|Add0~102_combout\ & (\inst_DetectorVehicular|estado_siguiente~0_combout\ & ((\sensor_trasero~input_o\) # (\sensor_delantero~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensor_trasero~input_o\,
	datab => \sensor_delantero~input_o\,
	datac => \inst_DetectorVehicular|Add0~102_combout\,
	datad => \inst_DetectorVehicular|estado_siguiente~0_combout\,
	combout => \inst_DetectorVehicular|Add0~148_combout\);

-- Location: LCCOMB_X24_Y3_N28
\inst_DetectorVehicular|distancia_actual[19]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_DetectorVehicular|distancia_actual\(19) = (GLOBAL(\inst_DetectorVehicular|distancia_actual[1]~1clkctrl_outclk\) & ((\inst_DetectorVehicular|Add0~148_combout\))) # (!GLOBAL(\inst_DetectorVehicular|distancia_actual[1]~1clkctrl_outclk\) & 
-- (\inst_DetectorVehicular|distancia_actual\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_DetectorVehicular|distancia_actual\(19),
	datac => \inst_DetectorVehicular|Add0~148_combout\,
	datad => \inst_DetectorVehicular|distancia_actual[1]~1clkctrl_outclk\,
	combout => \inst_DetectorVehicular|distancia_actual\(19));

-- Location: LCCOMB_X23_Y1_N8
\inst_DetectorVehicular|Add0~104\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_DetectorVehicular|Add0~104_combout\ = (\inst_DetectorVehicular|distancia_actual\(20) & (\inst_DetectorVehicular|Add0~103\ $ (GND))) # (!\inst_DetectorVehicular|distancia_actual\(20) & (!\inst_DetectorVehicular|Add0~103\ & VCC))
-- \inst_DetectorVehicular|Add0~105\ = CARRY((\inst_DetectorVehicular|distancia_actual\(20) & !\inst_DetectorVehicular|Add0~103\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DetectorVehicular|distancia_actual\(20),
	datad => VCC,
	cin => \inst_DetectorVehicular|Add0~103\,
	combout => \inst_DetectorVehicular|Add0~104_combout\,
	cout => \inst_DetectorVehicular|Add0~105\);

-- Location: LCCOMB_X24_Y3_N16
\inst_DetectorVehicular|Add0~149\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_DetectorVehicular|Add0~149_combout\ = (\inst_DetectorVehicular|Add0~104_combout\ & (\inst_DetectorVehicular|estado_siguiente~0_combout\ & ((\sensor_trasero~input_o\) # (\sensor_delantero~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensor_trasero~input_o\,
	datab => \sensor_delantero~input_o\,
	datac => \inst_DetectorVehicular|Add0~104_combout\,
	datad => \inst_DetectorVehicular|estado_siguiente~0_combout\,
	combout => \inst_DetectorVehicular|Add0~149_combout\);

-- Location: LCCOMB_X24_Y3_N8
\inst_DetectorVehicular|distancia_actual[20]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_DetectorVehicular|distancia_actual\(20) = (GLOBAL(\inst_DetectorVehicular|distancia_actual[1]~1clkctrl_outclk\) & (\inst_DetectorVehicular|Add0~149_combout\)) # (!GLOBAL(\inst_DetectorVehicular|distancia_actual[1]~1clkctrl_outclk\) & 
-- ((\inst_DetectorVehicular|distancia_actual\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DetectorVehicular|Add0~149_combout\,
	datac => \inst_DetectorVehicular|distancia_actual\(20),
	datad => \inst_DetectorVehicular|distancia_actual[1]~1clkctrl_outclk\,
	combout => \inst_DetectorVehicular|distancia_actual\(20));

-- Location: LCCOMB_X23_Y1_N10
\inst_DetectorVehicular|Add0~106\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_DetectorVehicular|Add0~106_combout\ = (\inst_DetectorVehicular|distancia_actual\(21) & (!\inst_DetectorVehicular|Add0~105\)) # (!\inst_DetectorVehicular|distancia_actual\(21) & ((\inst_DetectorVehicular|Add0~105\) # (GND)))
-- \inst_DetectorVehicular|Add0~107\ = CARRY((!\inst_DetectorVehicular|Add0~105\) # (!\inst_DetectorVehicular|distancia_actual\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DetectorVehicular|distancia_actual\(21),
	datad => VCC,
	cin => \inst_DetectorVehicular|Add0~105\,
	combout => \inst_DetectorVehicular|Add0~106_combout\,
	cout => \inst_DetectorVehicular|Add0~107\);

-- Location: LCCOMB_X24_Y1_N4
\inst_DetectorVehicular|Add0~135\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_DetectorVehicular|Add0~135_combout\ = (\inst_DetectorVehicular|Add0~106_combout\ & (\inst_DetectorVehicular|estado_siguiente~0_combout\ & ((\sensor_delantero~input_o\) # (\sensor_trasero~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensor_delantero~input_o\,
	datab => \sensor_trasero~input_o\,
	datac => \inst_DetectorVehicular|Add0~106_combout\,
	datad => \inst_DetectorVehicular|estado_siguiente~0_combout\,
	combout => \inst_DetectorVehicular|Add0~135_combout\);

-- Location: LCCOMB_X24_Y1_N6
\inst_DetectorVehicular|distancia_actual[21]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_DetectorVehicular|distancia_actual\(21) = (GLOBAL(\inst_DetectorVehicular|distancia_actual[1]~1clkctrl_outclk\) & ((\inst_DetectorVehicular|Add0~135_combout\))) # (!GLOBAL(\inst_DetectorVehicular|distancia_actual[1]~1clkctrl_outclk\) & 
-- (\inst_DetectorVehicular|distancia_actual\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DetectorVehicular|distancia_actual\(21),
	datac => \inst_DetectorVehicular|Add0~135_combout\,
	datad => \inst_DetectorVehicular|distancia_actual[1]~1clkctrl_outclk\,
	combout => \inst_DetectorVehicular|distancia_actual\(21));

-- Location: LCCOMB_X23_Y1_N12
\inst_DetectorVehicular|Add0~108\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_DetectorVehicular|Add0~108_combout\ = (\inst_DetectorVehicular|distancia_actual\(22) & (\inst_DetectorVehicular|Add0~107\ $ (GND))) # (!\inst_DetectorVehicular|distancia_actual\(22) & (!\inst_DetectorVehicular|Add0~107\ & VCC))
-- \inst_DetectorVehicular|Add0~109\ = CARRY((\inst_DetectorVehicular|distancia_actual\(22) & !\inst_DetectorVehicular|Add0~107\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DetectorVehicular|distancia_actual\(22),
	datad => VCC,
	cin => \inst_DetectorVehicular|Add0~107\,
	combout => \inst_DetectorVehicular|Add0~108_combout\,
	cout => \inst_DetectorVehicular|Add0~109\);

-- Location: LCCOMB_X22_Y3_N10
\inst_DetectorVehicular|Add0~143\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_DetectorVehicular|Add0~143_combout\ = (\inst_DetectorVehicular|estado_siguiente~0_combout\ & (\inst_DetectorVehicular|Add0~108_combout\ & ((\sensor_delantero~input_o\) # (\sensor_trasero~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensor_delantero~input_o\,
	datab => \sensor_trasero~input_o\,
	datac => \inst_DetectorVehicular|estado_siguiente~0_combout\,
	datad => \inst_DetectorVehicular|Add0~108_combout\,
	combout => \inst_DetectorVehicular|Add0~143_combout\);

-- Location: LCCOMB_X22_Y3_N0
\inst_DetectorVehicular|distancia_actual[22]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_DetectorVehicular|distancia_actual\(22) = (GLOBAL(\inst_DetectorVehicular|distancia_actual[1]~1clkctrl_outclk\) & ((\inst_DetectorVehicular|Add0~143_combout\))) # (!GLOBAL(\inst_DetectorVehicular|distancia_actual[1]~1clkctrl_outclk\) & 
-- (\inst_DetectorVehicular|distancia_actual\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_DetectorVehicular|distancia_actual\(22),
	datac => \inst_DetectorVehicular|Add0~143_combout\,
	datad => \inst_DetectorVehicular|distancia_actual[1]~1clkctrl_outclk\,
	combout => \inst_DetectorVehicular|distancia_actual\(22));

-- Location: LCCOMB_X23_Y1_N14
\inst_DetectorVehicular|Add0~110\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_DetectorVehicular|Add0~110_combout\ = (\inst_DetectorVehicular|distancia_actual\(23) & (!\inst_DetectorVehicular|Add0~109\)) # (!\inst_DetectorVehicular|distancia_actual\(23) & ((\inst_DetectorVehicular|Add0~109\) # (GND)))
-- \inst_DetectorVehicular|Add0~111\ = CARRY((!\inst_DetectorVehicular|Add0~109\) # (!\inst_DetectorVehicular|distancia_actual\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DetectorVehicular|distancia_actual\(23),
	datad => VCC,
	cin => \inst_DetectorVehicular|Add0~109\,
	combout => \inst_DetectorVehicular|Add0~110_combout\,
	cout => \inst_DetectorVehicular|Add0~111\);

-- Location: LCCOMB_X22_Y3_N12
\inst_DetectorVehicular|Add0~144\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_DetectorVehicular|Add0~144_combout\ = (\inst_DetectorVehicular|estado_siguiente~0_combout\ & (\inst_DetectorVehicular|Add0~110_combout\ & ((\sensor_delantero~input_o\) # (\sensor_trasero~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensor_delantero~input_o\,
	datab => \sensor_trasero~input_o\,
	datac => \inst_DetectorVehicular|estado_siguiente~0_combout\,
	datad => \inst_DetectorVehicular|Add0~110_combout\,
	combout => \inst_DetectorVehicular|Add0~144_combout\);

-- Location: LCCOMB_X22_Y3_N26
\inst_DetectorVehicular|distancia_actual[23]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_DetectorVehicular|distancia_actual\(23) = (GLOBAL(\inst_DetectorVehicular|distancia_actual[1]~1clkctrl_outclk\) & (\inst_DetectorVehicular|Add0~144_combout\)) # (!GLOBAL(\inst_DetectorVehicular|distancia_actual[1]~1clkctrl_outclk\) & 
-- ((\inst_DetectorVehicular|distancia_actual\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DetectorVehicular|Add0~144_combout\,
	datac => \inst_DetectorVehicular|distancia_actual\(23),
	datad => \inst_DetectorVehicular|distancia_actual[1]~1clkctrl_outclk\,
	combout => \inst_DetectorVehicular|distancia_actual\(23));

-- Location: LCCOMB_X23_Y1_N16
\inst_DetectorVehicular|Add0~112\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_DetectorVehicular|Add0~112_combout\ = (\inst_DetectorVehicular|distancia_actual\(24) & (\inst_DetectorVehicular|Add0~111\ $ (GND))) # (!\inst_DetectorVehicular|distancia_actual\(24) & (!\inst_DetectorVehicular|Add0~111\ & VCC))
-- \inst_DetectorVehicular|Add0~113\ = CARRY((\inst_DetectorVehicular|distancia_actual\(24) & !\inst_DetectorVehicular|Add0~111\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DetectorVehicular|distancia_actual\(24),
	datad => VCC,
	cin => \inst_DetectorVehicular|Add0~111\,
	combout => \inst_DetectorVehicular|Add0~112_combout\,
	cout => \inst_DetectorVehicular|Add0~113\);

-- Location: LCCOMB_X22_Y3_N2
\inst_DetectorVehicular|Add0~145\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_DetectorVehicular|Add0~145_combout\ = (\inst_DetectorVehicular|estado_siguiente~0_combout\ & (\inst_DetectorVehicular|Add0~112_combout\ & ((\sensor_trasero~input_o\) # (\sensor_delantero~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensor_trasero~input_o\,
	datab => \sensor_delantero~input_o\,
	datac => \inst_DetectorVehicular|estado_siguiente~0_combout\,
	datad => \inst_DetectorVehicular|Add0~112_combout\,
	combout => \inst_DetectorVehicular|Add0~145_combout\);

-- Location: LCCOMB_X22_Y3_N28
\inst_DetectorVehicular|distancia_actual[24]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_DetectorVehicular|distancia_actual\(24) = (GLOBAL(\inst_DetectorVehicular|distancia_actual[1]~1clkctrl_outclk\) & (\inst_DetectorVehicular|Add0~145_combout\)) # (!GLOBAL(\inst_DetectorVehicular|distancia_actual[1]~1clkctrl_outclk\) & 
-- ((\inst_DetectorVehicular|distancia_actual\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_DetectorVehicular|Add0~145_combout\,
	datac => \inst_DetectorVehicular|distancia_actual[1]~1clkctrl_outclk\,
	datad => \inst_DetectorVehicular|distancia_actual\(24),
	combout => \inst_DetectorVehicular|distancia_actual\(24));

-- Location: LCCOMB_X23_Y1_N18
\inst_DetectorVehicular|Add0~114\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_DetectorVehicular|Add0~114_combout\ = (\inst_DetectorVehicular|distancia_actual\(25) & (!\inst_DetectorVehicular|Add0~113\)) # (!\inst_DetectorVehicular|distancia_actual\(25) & ((\inst_DetectorVehicular|Add0~113\) # (GND)))
-- \inst_DetectorVehicular|Add0~115\ = CARRY((!\inst_DetectorVehicular|Add0~113\) # (!\inst_DetectorVehicular|distancia_actual\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DetectorVehicular|distancia_actual\(25),
	datad => VCC,
	cin => \inst_DetectorVehicular|Add0~113\,
	combout => \inst_DetectorVehicular|Add0~114_combout\,
	cout => \inst_DetectorVehicular|Add0~115\);

-- Location: LCCOMB_X22_Y1_N16
\inst_DetectorVehicular|Add0~154\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_DetectorVehicular|Add0~154_combout\ = (\inst_DetectorVehicular|Add0~114_combout\ & (\inst_DetectorVehicular|estado_siguiente~0_combout\ & ((\sensor_delantero~input_o\) # (\sensor_trasero~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensor_delantero~input_o\,
	datab => \sensor_trasero~input_o\,
	datac => \inst_DetectorVehicular|Add0~114_combout\,
	datad => \inst_DetectorVehicular|estado_siguiente~0_combout\,
	combout => \inst_DetectorVehicular|Add0~154_combout\);

-- Location: LCCOMB_X22_Y1_N24
\inst_DetectorVehicular|distancia_actual[25]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_DetectorVehicular|distancia_actual\(25) = (GLOBAL(\inst_DetectorVehicular|distancia_actual[1]~1clkctrl_outclk\) & ((\inst_DetectorVehicular|Add0~154_combout\))) # (!GLOBAL(\inst_DetectorVehicular|distancia_actual[1]~1clkctrl_outclk\) & 
-- (\inst_DetectorVehicular|distancia_actual\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_DetectorVehicular|distancia_actual\(25),
	datac => \inst_DetectorVehicular|Add0~154_combout\,
	datad => \inst_DetectorVehicular|distancia_actual[1]~1clkctrl_outclk\,
	combout => \inst_DetectorVehicular|distancia_actual\(25));

-- Location: LCCOMB_X23_Y1_N20
\inst_DetectorVehicular|Add0~116\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_DetectorVehicular|Add0~116_combout\ = (\inst_DetectorVehicular|distancia_actual\(26) & (\inst_DetectorVehicular|Add0~115\ $ (GND))) # (!\inst_DetectorVehicular|distancia_actual\(26) & (!\inst_DetectorVehicular|Add0~115\ & VCC))
-- \inst_DetectorVehicular|Add0~117\ = CARRY((\inst_DetectorVehicular|distancia_actual\(26) & !\inst_DetectorVehicular|Add0~115\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DetectorVehicular|distancia_actual\(26),
	datad => VCC,
	cin => \inst_DetectorVehicular|Add0~115\,
	combout => \inst_DetectorVehicular|Add0~116_combout\,
	cout => \inst_DetectorVehicular|Add0~117\);

-- Location: LCCOMB_X22_Y1_N2
\inst_DetectorVehicular|Add0~155\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_DetectorVehicular|Add0~155_combout\ = (\inst_DetectorVehicular|Add0~116_combout\ & (\inst_DetectorVehicular|estado_siguiente~0_combout\ & ((\sensor_trasero~input_o\) # (\sensor_delantero~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensor_trasero~input_o\,
	datab => \sensor_delantero~input_o\,
	datac => \inst_DetectorVehicular|Add0~116_combout\,
	datad => \inst_DetectorVehicular|estado_siguiente~0_combout\,
	combout => \inst_DetectorVehicular|Add0~155_combout\);

-- Location: LCCOMB_X22_Y1_N8
\inst_DetectorVehicular|distancia_actual[26]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_DetectorVehicular|distancia_actual\(26) = (GLOBAL(\inst_DetectorVehicular|distancia_actual[1]~1clkctrl_outclk\) & ((\inst_DetectorVehicular|Add0~155_combout\))) # (!GLOBAL(\inst_DetectorVehicular|distancia_actual[1]~1clkctrl_outclk\) & 
-- (\inst_DetectorVehicular|distancia_actual\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_DetectorVehicular|distancia_actual\(26),
	datac => \inst_DetectorVehicular|Add0~155_combout\,
	datad => \inst_DetectorVehicular|distancia_actual[1]~1clkctrl_outclk\,
	combout => \inst_DetectorVehicular|distancia_actual\(26));

-- Location: LCCOMB_X23_Y1_N22
\inst_DetectorVehicular|Add0~118\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_DetectorVehicular|Add0~118_combout\ = (\inst_DetectorVehicular|distancia_actual\(27) & (!\inst_DetectorVehicular|Add0~117\)) # (!\inst_DetectorVehicular|distancia_actual\(27) & ((\inst_DetectorVehicular|Add0~117\) # (GND)))
-- \inst_DetectorVehicular|Add0~119\ = CARRY((!\inst_DetectorVehicular|Add0~117\) # (!\inst_DetectorVehicular|distancia_actual\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DetectorVehicular|distancia_actual\(27),
	datad => VCC,
	cin => \inst_DetectorVehicular|Add0~117\,
	combout => \inst_DetectorVehicular|Add0~118_combout\,
	cout => \inst_DetectorVehicular|Add0~119\);

-- Location: LCCOMB_X22_Y1_N4
\inst_DetectorVehicular|Add0~156\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_DetectorVehicular|Add0~156_combout\ = (\inst_DetectorVehicular|Add0~118_combout\ & (\inst_DetectorVehicular|estado_siguiente~0_combout\ & ((\sensor_trasero~input_o\) # (\sensor_delantero~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensor_trasero~input_o\,
	datab => \inst_DetectorVehicular|Add0~118_combout\,
	datac => \sensor_delantero~input_o\,
	datad => \inst_DetectorVehicular|estado_siguiente~0_combout\,
	combout => \inst_DetectorVehicular|Add0~156_combout\);

-- Location: LCCOMB_X22_Y1_N26
\inst_DetectorVehicular|distancia_actual[27]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_DetectorVehicular|distancia_actual\(27) = (GLOBAL(\inst_DetectorVehicular|distancia_actual[1]~1clkctrl_outclk\) & ((\inst_DetectorVehicular|Add0~156_combout\))) # (!GLOBAL(\inst_DetectorVehicular|distancia_actual[1]~1clkctrl_outclk\) & 
-- (\inst_DetectorVehicular|distancia_actual\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DetectorVehicular|distancia_actual\(27),
	datac => \inst_DetectorVehicular|Add0~156_combout\,
	datad => \inst_DetectorVehicular|distancia_actual[1]~1clkctrl_outclk\,
	combout => \inst_DetectorVehicular|distancia_actual\(27));

-- Location: LCCOMB_X23_Y1_N24
\inst_DetectorVehicular|Add0~120\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_DetectorVehicular|Add0~120_combout\ = (\inst_DetectorVehicular|distancia_actual\(28) & (\inst_DetectorVehicular|Add0~119\ $ (GND))) # (!\inst_DetectorVehicular|distancia_actual\(28) & (!\inst_DetectorVehicular|Add0~119\ & VCC))
-- \inst_DetectorVehicular|Add0~121\ = CARRY((\inst_DetectorVehicular|distancia_actual\(28) & !\inst_DetectorVehicular|Add0~119\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_DetectorVehicular|distancia_actual\(28),
	datad => VCC,
	cin => \inst_DetectorVehicular|Add0~119\,
	combout => \inst_DetectorVehicular|Add0~120_combout\,
	cout => \inst_DetectorVehicular|Add0~121\);

-- Location: LCCOMB_X22_Y1_N12
\inst_DetectorVehicular|Add0~157\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_DetectorVehicular|Add0~157_combout\ = (\inst_DetectorVehicular|Add0~120_combout\ & (\inst_DetectorVehicular|estado_siguiente~0_combout\ & ((\sensor_trasero~input_o\) # (\sensor_delantero~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensor_trasero~input_o\,
	datab => \inst_DetectorVehicular|Add0~120_combout\,
	datac => \sensor_delantero~input_o\,
	datad => \inst_DetectorVehicular|estado_siguiente~0_combout\,
	combout => \inst_DetectorVehicular|Add0~157_combout\);

-- Location: LCCOMB_X22_Y1_N18
\inst_DetectorVehicular|distancia_actual[28]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_DetectorVehicular|distancia_actual\(28) = (GLOBAL(\inst_DetectorVehicular|distancia_actual[1]~1clkctrl_outclk\) & ((\inst_DetectorVehicular|Add0~157_combout\))) # (!GLOBAL(\inst_DetectorVehicular|distancia_actual[1]~1clkctrl_outclk\) & 
-- (\inst_DetectorVehicular|distancia_actual\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_DetectorVehicular|distancia_actual\(28),
	datac => \inst_DetectorVehicular|Add0~157_combout\,
	datad => \inst_DetectorVehicular|distancia_actual[1]~1clkctrl_outclk\,
	combout => \inst_DetectorVehicular|distancia_actual\(28));

-- Location: LCCOMB_X23_Y1_N26
\inst_DetectorVehicular|Add0~122\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_DetectorVehicular|Add0~122_combout\ = (\inst_DetectorVehicular|distancia_actual\(29) & (!\inst_DetectorVehicular|Add0~121\)) # (!\inst_DetectorVehicular|distancia_actual\(29) & ((\inst_DetectorVehicular|Add0~121\) # (GND)))
-- \inst_DetectorVehicular|Add0~123\ = CARRY((!\inst_DetectorVehicular|Add0~121\) # (!\inst_DetectorVehicular|distancia_actual\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_DetectorVehicular|distancia_actual\(29),
	datad => VCC,
	cin => \inst_DetectorVehicular|Add0~121\,
	combout => \inst_DetectorVehicular|Add0~122_combout\,
	cout => \inst_DetectorVehicular|Add0~123\);

-- Location: LCCOMB_X22_Y3_N24
\inst_DetectorVehicular|Add0~142\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_DetectorVehicular|Add0~142_combout\ = (\inst_DetectorVehicular|estado_siguiente~0_combout\ & (\inst_DetectorVehicular|Add0~122_combout\ & ((\sensor_delantero~input_o\) # (\sensor_trasero~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensor_delantero~input_o\,
	datab => \sensor_trasero~input_o\,
	datac => \inst_DetectorVehicular|estado_siguiente~0_combout\,
	datad => \inst_DetectorVehicular|Add0~122_combout\,
	combout => \inst_DetectorVehicular|Add0~142_combout\);

-- Location: LCCOMB_X22_Y3_N22
\inst_DetectorVehicular|distancia_actual[29]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_DetectorVehicular|distancia_actual\(29) = (GLOBAL(\inst_DetectorVehicular|distancia_actual[1]~1clkctrl_outclk\) & ((\inst_DetectorVehicular|Add0~142_combout\))) # (!GLOBAL(\inst_DetectorVehicular|distancia_actual[1]~1clkctrl_outclk\) & 
-- (\inst_DetectorVehicular|distancia_actual\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DetectorVehicular|distancia_actual\(29),
	datac => \inst_DetectorVehicular|distancia_actual[1]~1clkctrl_outclk\,
	datad => \inst_DetectorVehicular|Add0~142_combout\,
	combout => \inst_DetectorVehicular|distancia_actual\(29));

-- Location: LCCOMB_X23_Y1_N28
\inst_DetectorVehicular|Add0~124\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_DetectorVehicular|Add0~124_combout\ = (\inst_DetectorVehicular|distancia_actual\(30) & (\inst_DetectorVehicular|Add0~123\ $ (GND))) # (!\inst_DetectorVehicular|distancia_actual\(30) & (!\inst_DetectorVehicular|Add0~123\ & VCC))
-- \inst_DetectorVehicular|Add0~125\ = CARRY((\inst_DetectorVehicular|distancia_actual\(30) & !\inst_DetectorVehicular|Add0~123\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_DetectorVehicular|distancia_actual\(30),
	datad => VCC,
	cin => \inst_DetectorVehicular|Add0~123\,
	combout => \inst_DetectorVehicular|Add0~124_combout\,
	cout => \inst_DetectorVehicular|Add0~125\);

-- Location: LCCOMB_X24_Y1_N28
\inst_DetectorVehicular|Add0~132\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_DetectorVehicular|Add0~132_combout\ = (\inst_DetectorVehicular|estado_siguiente~0_combout\ & (\inst_DetectorVehicular|Add0~124_combout\ & ((\sensor_delantero~input_o\) # (\sensor_trasero~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensor_delantero~input_o\,
	datab => \sensor_trasero~input_o\,
	datac => \inst_DetectorVehicular|estado_siguiente~0_combout\,
	datad => \inst_DetectorVehicular|Add0~124_combout\,
	combout => \inst_DetectorVehicular|Add0~132_combout\);

-- Location: LCCOMB_X24_Y1_N26
\inst_DetectorVehicular|distancia_actual[30]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_DetectorVehicular|distancia_actual\(30) = (GLOBAL(\inst_DetectorVehicular|distancia_actual[1]~1clkctrl_outclk\) & (\inst_DetectorVehicular|Add0~132_combout\)) # (!GLOBAL(\inst_DetectorVehicular|distancia_actual[1]~1clkctrl_outclk\) & 
-- ((\inst_DetectorVehicular|distancia_actual\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_DetectorVehicular|Add0~132_combout\,
	datac => \inst_DetectorVehicular|distancia_actual\(30),
	datad => \inst_DetectorVehicular|distancia_actual[1]~1clkctrl_outclk\,
	combout => \inst_DetectorVehicular|distancia_actual\(30));

-- Location: LCCOMB_X23_Y1_N30
\inst_DetectorVehicular|Add0~126\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_DetectorVehicular|Add0~126_combout\ = \inst_DetectorVehicular|Add0~125\ $ (\inst_DetectorVehicular|distancia_actual\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst_DetectorVehicular|distancia_actual\(31),
	cin => \inst_DetectorVehicular|Add0~125\,
	combout => \inst_DetectorVehicular|Add0~126_combout\);

-- Location: LCCOMB_X22_Y1_N6
\inst_DetectorVehicular|Add0~158\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_DetectorVehicular|Add0~158_combout\ = (\inst_DetectorVehicular|Add0~126_combout\ & (\inst_DetectorVehicular|estado_siguiente~0_combout\ & ((\sensor_delantero~input_o\) # (\sensor_trasero~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensor_delantero~input_o\,
	datab => \sensor_trasero~input_o\,
	datac => \inst_DetectorVehicular|Add0~126_combout\,
	datad => \inst_DetectorVehicular|estado_siguiente~0_combout\,
	combout => \inst_DetectorVehicular|Add0~158_combout\);

-- Location: LCCOMB_X22_Y1_N30
\inst_DetectorVehicular|distancia_actual[31]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_DetectorVehicular|distancia_actual\(31) = (GLOBAL(\inst_DetectorVehicular|distancia_actual[1]~1clkctrl_outclk\) & ((\inst_DetectorVehicular|Add0~158_combout\))) # (!GLOBAL(\inst_DetectorVehicular|distancia_actual[1]~1clkctrl_outclk\) & 
-- (\inst_DetectorVehicular|distancia_actual\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DetectorVehicular|distancia_actual\(31),
	datac => \inst_DetectorVehicular|distancia_actual[1]~1clkctrl_outclk\,
	datad => \inst_DetectorVehicular|Add0~158_combout\,
	combout => \inst_DetectorVehicular|distancia_actual\(31));

-- Location: LCCOMB_X23_Y3_N22
\inst_DetectorVehicular|distancia_actual[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_DetectorVehicular|distancia_actual[1]~0_combout\ = (!\sensor_trasero~input_o\ & !\sensor_delantero~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensor_trasero~input_o\,
	datad => \sensor_delantero~input_o\,
	combout => \inst_DetectorVehicular|distancia_actual[1]~0_combout\);

-- Location: LCCOMB_X23_Y3_N26
\inst_DetectorVehicular|LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_DetectorVehicular|LessThan0~2_combout\ = (!\inst_DetectorVehicular|distancia_actual\(4) & (((!\inst_DetectorVehicular|distancia_actual\(1) & !\inst_DetectorVehicular|distancia_actual\(2))) # (!\inst_DetectorVehicular|distancia_actual\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DetectorVehicular|distancia_actual\(1),
	datab => \inst_DetectorVehicular|distancia_actual\(2),
	datac => \inst_DetectorVehicular|distancia_actual\(3),
	datad => \inst_DetectorVehicular|distancia_actual\(4),
	combout => \inst_DetectorVehicular|LessThan0~2_combout\);

-- Location: LCCOMB_X22_Y3_N16
\inst_DetectorVehicular|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_DetectorVehicular|LessThan0~3_combout\ = (!\inst_DetectorVehicular|distancia_actual\(23) & (!\inst_DetectorVehicular|distancia_actual\(24) & (!\inst_DetectorVehicular|distancia_actual\(29) & !\inst_DetectorVehicular|distancia_actual\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DetectorVehicular|distancia_actual\(23),
	datab => \inst_DetectorVehicular|distancia_actual\(24),
	datac => \inst_DetectorVehicular|distancia_actual\(29),
	datad => \inst_DetectorVehicular|distancia_actual\(22),
	combout => \inst_DetectorVehicular|LessThan0~3_combout\);

-- Location: LCCOMB_X23_Y3_N6
\inst_DetectorVehicular|LessThan0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_DetectorVehicular|LessThan0~4_combout\ = (\inst_DetectorVehicular|LessThan0~2_combout\ & (!\inst_DetectorVehicular|distancia_actual\(10) & (\inst_DetectorVehicular|LessThan0~3_combout\ & !\inst_DetectorVehicular|distancia_actual\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DetectorVehicular|LessThan0~2_combout\,
	datab => \inst_DetectorVehicular|distancia_actual\(10),
	datac => \inst_DetectorVehicular|LessThan0~3_combout\,
	datad => \inst_DetectorVehicular|distancia_actual\(12),
	combout => \inst_DetectorVehicular|LessThan0~4_combout\);

-- Location: LCCOMB_X24_Y1_N20
\inst_DetectorVehicular|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_DetectorVehicular|LessThan0~0_combout\ = (!\inst_DetectorVehicular|distancia_actual\(15) & (!\inst_DetectorVehicular|distancia_actual\(13) & (!\inst_DetectorVehicular|distancia_actual\(14) & !\inst_DetectorVehicular|distancia_actual\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DetectorVehicular|distancia_actual\(15),
	datab => \inst_DetectorVehicular|distancia_actual\(13),
	datac => \inst_DetectorVehicular|distancia_actual\(14),
	datad => \inst_DetectorVehicular|distancia_actual\(16),
	combout => \inst_DetectorVehicular|LessThan0~0_combout\);

-- Location: LCCOMB_X24_Y3_N4
\inst_DetectorVehicular|LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_DetectorVehicular|LessThan0~5_combout\ = (!\inst_DetectorVehicular|distancia_actual\(17) & (!\inst_DetectorVehicular|distancia_actual\(18) & (!\inst_DetectorVehicular|distancia_actual\(20) & !\inst_DetectorVehicular|distancia_actual\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DetectorVehicular|distancia_actual\(17),
	datab => \inst_DetectorVehicular|distancia_actual\(18),
	datac => \inst_DetectorVehicular|distancia_actual\(20),
	datad => \inst_DetectorVehicular|distancia_actual\(19),
	combout => \inst_DetectorVehicular|LessThan0~5_combout\);

-- Location: LCCOMB_X22_Y1_N22
\inst_DetectorVehicular|LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_DetectorVehicular|LessThan0~7_combout\ = (!\inst_DetectorVehicular|distancia_actual\(27) & (!\inst_DetectorVehicular|distancia_actual\(25) & (!\inst_DetectorVehicular|distancia_actual\(26) & !\inst_DetectorVehicular|distancia_actual\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DetectorVehicular|distancia_actual\(27),
	datab => \inst_DetectorVehicular|distancia_actual\(25),
	datac => \inst_DetectorVehicular|distancia_actual\(26),
	datad => \inst_DetectorVehicular|distancia_actual\(28),
	combout => \inst_DetectorVehicular|LessThan0~7_combout\);

-- Location: LCCOMB_X22_Y3_N14
\inst_DetectorVehicular|LessThan0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_DetectorVehicular|LessThan0~6_combout\ = (!\inst_DetectorVehicular|distancia_actual\(7) & (!\inst_DetectorVehicular|distancia_actual\(6) & (!\inst_DetectorVehicular|distancia_actual\(5) & !\inst_DetectorVehicular|distancia_actual\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DetectorVehicular|distancia_actual\(7),
	datab => \inst_DetectorVehicular|distancia_actual\(6),
	datac => \inst_DetectorVehicular|distancia_actual\(5),
	datad => \inst_DetectorVehicular|distancia_actual\(8),
	combout => \inst_DetectorVehicular|LessThan0~6_combout\);

-- Location: LCCOMB_X23_Y3_N8
\inst_DetectorVehicular|LessThan0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_DetectorVehicular|LessThan0~8_combout\ = (\inst_DetectorVehicular|LessThan0~5_combout\ & (\inst_DetectorVehicular|LessThan0~7_combout\ & \inst_DetectorVehicular|LessThan0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DetectorVehicular|LessThan0~5_combout\,
	datac => \inst_DetectorVehicular|LessThan0~7_combout\,
	datad => \inst_DetectorVehicular|LessThan0~6_combout\,
	combout => \inst_DetectorVehicular|LessThan0~8_combout\);

-- Location: LCCOMB_X24_Y1_N10
\inst_DetectorVehicular|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_DetectorVehicular|LessThan0~1_combout\ = (!\inst_DetectorVehicular|distancia_actual\(21) & (!\inst_DetectorVehicular|distancia_actual\(9) & (!\inst_DetectorVehicular|distancia_actual\(30) & !\inst_DetectorVehicular|distancia_actual\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DetectorVehicular|distancia_actual\(21),
	datab => \inst_DetectorVehicular|distancia_actual\(9),
	datac => \inst_DetectorVehicular|distancia_actual\(30),
	datad => \inst_DetectorVehicular|distancia_actual\(11),
	combout => \inst_DetectorVehicular|LessThan0~1_combout\);

-- Location: LCCOMB_X23_Y3_N2
\inst_DetectorVehicular|LessThan0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_DetectorVehicular|LessThan0~9_combout\ = (\inst_DetectorVehicular|LessThan0~4_combout\ & (\inst_DetectorVehicular|LessThan0~0_combout\ & (\inst_DetectorVehicular|LessThan0~8_combout\ & \inst_DetectorVehicular|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DetectorVehicular|LessThan0~4_combout\,
	datab => \inst_DetectorVehicular|LessThan0~0_combout\,
	datac => \inst_DetectorVehicular|LessThan0~8_combout\,
	datad => \inst_DetectorVehicular|LessThan0~1_combout\,
	combout => \inst_DetectorVehicular|LessThan0~9_combout\);

-- Location: LCCOMB_X23_Y3_N0
\inst_DetectorVehicular|estado_siguiente~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_DetectorVehicular|estado_siguiente~0_combout\ = (!\inst_DetectorVehicular|distancia_actual[1]~0_combout\ & (((\inst_DetectorVehicular|distancia_actual\(31)) # (\inst_DetectorVehicular|LessThan0~9_combout\)) # 
-- (!\inst_DetectorVehicular|estado_siguiente~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DetectorVehicular|estado_siguiente~0_combout\,
	datab => \inst_DetectorVehicular|distancia_actual\(31),
	datac => \inst_DetectorVehicular|distancia_actual[1]~0_combout\,
	datad => \inst_DetectorVehicular|LessThan0~9_combout\,
	combout => \inst_DetectorVehicular|estado_siguiente~0_combout\);

-- Location: LCCOMB_X24_Y3_N20
\Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (!\estado_actual.esperando~q\ & \inst_DetectorVehicular|estado_siguiente~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_actual.esperando~q\,
	datac => \inst_DetectorVehicular|estado_siguiente~0_combout\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X24_Y3_N30
\estado_actual.esperando~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \estado_actual.esperando~feeder_combout\ = \Selector0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector0~0_combout\,
	combout => \estado_actual.esperando~feeder_combout\);

-- Location: IOIBUF_X0_Y21_N8
\rst~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: FF_X24_Y3_N31
\estado_actual.esperando\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estado_actual.esperando~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_actual.esperando~q\);

-- Location: LCCOMB_X24_Y3_N0
\display_output[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \display_output[0]~3_combout\ = !\estado_actual.esperando~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \estado_actual.esperando~q\,
	combout => \display_output[0]~3_combout\);

-- Location: FF_X24_Y3_N1
\display_output[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \display_output[0]~3_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_output[0]~reg0_q\);

-- Location: FF_X24_Y3_N21
\estado_actual.detectado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector0~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_actual.detectado~q\);

-- Location: FF_X24_Y3_N7
\display_output[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \estado_actual.detectado~q\,
	sload => VCC,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_output[1]~reg0_q\);

-- Location: LCCOMB_X14_Y7_N0
\inst_ControladorLCD|inst_PantallaLcd|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_ControladorLCD|inst_PantallaLcd|Add0~0_combout\ = \inst_ControladorLCD|inst_PantallaLcd|contador\(0) $ (VCC)
-- \inst_ControladorLCD|inst_PantallaLcd|Add0~1\ = CARRY(\inst_ControladorLCD|inst_PantallaLcd|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_ControladorLCD|inst_PantallaLcd|contador\(0),
	datad => VCC,
	combout => \inst_ControladorLCD|inst_PantallaLcd|Add0~0_combout\,
	cout => \inst_ControladorLCD|inst_PantallaLcd|Add0~1\);

-- Location: LCCOMB_X15_Y7_N30
\inst_ControladorLCD|inst_PantallaLcd|Mux24~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_ControladorLCD|inst_PantallaLcd|Mux24~0_combout\ = (\inst_ControladorLCD|inst_PantallaLcd|Add0~0_combout\ & \inst_ControladorLCD|inst_PantallaLcd|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_ControladorLCD|inst_PantallaLcd|Add0~0_combout\,
	datad => \inst_ControladorLCD|inst_PantallaLcd|Equal0~4_combout\,
	combout => \inst_ControladorLCD|inst_PantallaLcd|Mux24~0_combout\);

-- Location: LCCOMB_X15_Y7_N6
\inst_ControladorLCD|inst_PantallaLcd|lcd_data_int[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_ControladorLCD|inst_PantallaLcd|lcd_data_int[3]~0_combout\ = (!\inst_ControladorLCD|inst_PantallaLcd|estado\(1)) # (!\inst_ControladorLCD|inst_PantallaLcd|estado\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_ControladorLCD|inst_PantallaLcd|estado\(0),
	datad => \inst_ControladorLCD|inst_PantallaLcd|estado\(1),
	combout => \inst_ControladorLCD|inst_PantallaLcd|lcd_data_int[3]~0_combout\);

-- Location: FF_X14_Y7_N17
\inst_ControladorLCD|inst_PantallaLcd|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst_ControladorLCD|inst_PantallaLcd|Mux24~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \inst_ControladorLCD|inst_PantallaLcd|lcd_data_int[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_ControladorLCD|inst_PantallaLcd|contador\(0));

-- Location: LCCOMB_X14_Y7_N2
\inst_ControladorLCD|inst_PantallaLcd|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_ControladorLCD|inst_PantallaLcd|Add0~2_combout\ = (\inst_ControladorLCD|inst_PantallaLcd|contador\(1) & (!\inst_ControladorLCD|inst_PantallaLcd|Add0~1\)) # (!\inst_ControladorLCD|inst_PantallaLcd|contador\(1) & 
-- ((\inst_ControladorLCD|inst_PantallaLcd|Add0~1\) # (GND)))
-- \inst_ControladorLCD|inst_PantallaLcd|Add0~3\ = CARRY((!\inst_ControladorLCD|inst_PantallaLcd|Add0~1\) # (!\inst_ControladorLCD|inst_PantallaLcd|contador\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_ControladorLCD|inst_PantallaLcd|contador\(1),
	datad => VCC,
	cin => \inst_ControladorLCD|inst_PantallaLcd|Add0~1\,
	combout => \inst_ControladorLCD|inst_PantallaLcd|Add0~2_combout\,
	cout => \inst_ControladorLCD|inst_PantallaLcd|Add0~3\);

-- Location: FF_X14_Y7_N3
\inst_ControladorLCD|inst_PantallaLcd|contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_ControladorLCD|inst_PantallaLcd|Add0~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \inst_ControladorLCD|inst_PantallaLcd|lcd_data_int[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_ControladorLCD|inst_PantallaLcd|contador\(1));

-- Location: LCCOMB_X14_Y7_N4
\inst_ControladorLCD|inst_PantallaLcd|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_ControladorLCD|inst_PantallaLcd|Add0~4_combout\ = (\inst_ControladorLCD|inst_PantallaLcd|contador\(2) & (\inst_ControladorLCD|inst_PantallaLcd|Add0~3\ $ (GND))) # (!\inst_ControladorLCD|inst_PantallaLcd|contador\(2) & 
-- (!\inst_ControladorLCD|inst_PantallaLcd|Add0~3\ & VCC))
-- \inst_ControladorLCD|inst_PantallaLcd|Add0~5\ = CARRY((\inst_ControladorLCD|inst_PantallaLcd|contador\(2) & !\inst_ControladorLCD|inst_PantallaLcd|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_ControladorLCD|inst_PantallaLcd|contador\(2),
	datad => VCC,
	cin => \inst_ControladorLCD|inst_PantallaLcd|Add0~3\,
	combout => \inst_ControladorLCD|inst_PantallaLcd|Add0~4_combout\,
	cout => \inst_ControladorLCD|inst_PantallaLcd|Add0~5\);

-- Location: FF_X14_Y7_N5
\inst_ControladorLCD|inst_PantallaLcd|contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_ControladorLCD|inst_PantallaLcd|Add0~4_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \inst_ControladorLCD|inst_PantallaLcd|lcd_data_int[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_ControladorLCD|inst_PantallaLcd|contador\(2));

-- Location: LCCOMB_X14_Y7_N6
\inst_ControladorLCD|inst_PantallaLcd|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_ControladorLCD|inst_PantallaLcd|Add0~6_combout\ = (\inst_ControladorLCD|inst_PantallaLcd|contador\(3) & (!\inst_ControladorLCD|inst_PantallaLcd|Add0~5\)) # (!\inst_ControladorLCD|inst_PantallaLcd|contador\(3) & 
-- ((\inst_ControladorLCD|inst_PantallaLcd|Add0~5\) # (GND)))
-- \inst_ControladorLCD|inst_PantallaLcd|Add0~7\ = CARRY((!\inst_ControladorLCD|inst_PantallaLcd|Add0~5\) # (!\inst_ControladorLCD|inst_PantallaLcd|contador\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_ControladorLCD|inst_PantallaLcd|contador\(3),
	datad => VCC,
	cin => \inst_ControladorLCD|inst_PantallaLcd|Add0~5\,
	combout => \inst_ControladorLCD|inst_PantallaLcd|Add0~6_combout\,
	cout => \inst_ControladorLCD|inst_PantallaLcd|Add0~7\);

-- Location: FF_X14_Y7_N7
\inst_ControladorLCD|inst_PantallaLcd|contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_ControladorLCD|inst_PantallaLcd|Add0~6_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \inst_ControladorLCD|inst_PantallaLcd|lcd_data_int[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_ControladorLCD|inst_PantallaLcd|contador\(3));

-- Location: LCCOMB_X14_Y7_N8
\inst_ControladorLCD|inst_PantallaLcd|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_ControladorLCD|inst_PantallaLcd|Add0~8_combout\ = (\inst_ControladorLCD|inst_PantallaLcd|contador\(4) & (\inst_ControladorLCD|inst_PantallaLcd|Add0~7\ $ (GND))) # (!\inst_ControladorLCD|inst_PantallaLcd|contador\(4) & 
-- (!\inst_ControladorLCD|inst_PantallaLcd|Add0~7\ & VCC))
-- \inst_ControladorLCD|inst_PantallaLcd|Add0~9\ = CARRY((\inst_ControladorLCD|inst_PantallaLcd|contador\(4) & !\inst_ControladorLCD|inst_PantallaLcd|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_ControladorLCD|inst_PantallaLcd|contador\(4),
	datad => VCC,
	cin => \inst_ControladorLCD|inst_PantallaLcd|Add0~7\,
	combout => \inst_ControladorLCD|inst_PantallaLcd|Add0~8_combout\,
	cout => \inst_ControladorLCD|inst_PantallaLcd|Add0~9\);

-- Location: LCCOMB_X15_Y7_N12
\inst_ControladorLCD|inst_PantallaLcd|Mux20~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_ControladorLCD|inst_PantallaLcd|Mux20~0_combout\ = (\inst_ControladorLCD|inst_PantallaLcd|Equal0~4_combout\ & \inst_ControladorLCD|inst_PantallaLcd|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_ControladorLCD|inst_PantallaLcd|Equal0~4_combout\,
	datad => \inst_ControladorLCD|inst_PantallaLcd|Add0~8_combout\,
	combout => \inst_ControladorLCD|inst_PantallaLcd|Mux20~0_combout\);

-- Location: FF_X15_Y7_N13
\inst_ControladorLCD|inst_PantallaLcd|contador[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_ControladorLCD|inst_PantallaLcd|Mux20~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \inst_ControladorLCD|inst_PantallaLcd|lcd_data_int[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_ControladorLCD|inst_PantallaLcd|contador\(4));

-- Location: LCCOMB_X15_Y7_N22
\inst_ControladorLCD|inst_PantallaLcd|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_ControladorLCD|inst_PantallaLcd|Equal0~3_combout\ = ((\inst_ControladorLCD|inst_PantallaLcd|contador\(3)) # ((\inst_ControladorLCD|inst_PantallaLcd|contador\(2)) # (\inst_ControladorLCD|inst_PantallaLcd|contador\(1)))) # 
-- (!\inst_ControladorLCD|inst_PantallaLcd|contador\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_ControladorLCD|inst_PantallaLcd|contador\(4),
	datab => \inst_ControladorLCD|inst_PantallaLcd|contador\(3),
	datac => \inst_ControladorLCD|inst_PantallaLcd|contador\(2),
	datad => \inst_ControladorLCD|inst_PantallaLcd|contador\(1),
	combout => \inst_ControladorLCD|inst_PantallaLcd|Equal0~3_combout\);

-- Location: LCCOMB_X14_Y7_N10
\inst_ControladorLCD|inst_PantallaLcd|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_ControladorLCD|inst_PantallaLcd|Add0~10_combout\ = (\inst_ControladorLCD|inst_PantallaLcd|contador\(5) & (!\inst_ControladorLCD|inst_PantallaLcd|Add0~9\)) # (!\inst_ControladorLCD|inst_PantallaLcd|contador\(5) & 
-- ((\inst_ControladorLCD|inst_PantallaLcd|Add0~9\) # (GND)))
-- \inst_ControladorLCD|inst_PantallaLcd|Add0~11\ = CARRY((!\inst_ControladorLCD|inst_PantallaLcd|Add0~9\) # (!\inst_ControladorLCD|inst_PantallaLcd|contador\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_ControladorLCD|inst_PantallaLcd|contador\(5),
	datad => VCC,
	cin => \inst_ControladorLCD|inst_PantallaLcd|Add0~9\,
	combout => \inst_ControladorLCD|inst_PantallaLcd|Add0~10_combout\,
	cout => \inst_ControladorLCD|inst_PantallaLcd|Add0~11\);

-- Location: FF_X14_Y7_N11
\inst_ControladorLCD|inst_PantallaLcd|contador[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_ControladorLCD|inst_PantallaLcd|Add0~10_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \inst_ControladorLCD|inst_PantallaLcd|lcd_data_int[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_ControladorLCD|inst_PantallaLcd|contador\(5));

-- Location: LCCOMB_X14_Y7_N12
\inst_ControladorLCD|inst_PantallaLcd|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_ControladorLCD|inst_PantallaLcd|Add0~12_combout\ = (\inst_ControladorLCD|inst_PantallaLcd|contador\(6) & (\inst_ControladorLCD|inst_PantallaLcd|Add0~11\ $ (GND))) # (!\inst_ControladorLCD|inst_PantallaLcd|contador\(6) & 
-- (!\inst_ControladorLCD|inst_PantallaLcd|Add0~11\ & VCC))
-- \inst_ControladorLCD|inst_PantallaLcd|Add0~13\ = CARRY((\inst_ControladorLCD|inst_PantallaLcd|contador\(6) & !\inst_ControladorLCD|inst_PantallaLcd|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_ControladorLCD|inst_PantallaLcd|contador\(6),
	datad => VCC,
	cin => \inst_ControladorLCD|inst_PantallaLcd|Add0~11\,
	combout => \inst_ControladorLCD|inst_PantallaLcd|Add0~12_combout\,
	cout => \inst_ControladorLCD|inst_PantallaLcd|Add0~13\);

-- Location: LCCOMB_X15_Y7_N8
\inst_ControladorLCD|inst_PantallaLcd|Mux18~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_ControladorLCD|inst_PantallaLcd|Mux18~0_combout\ = (\inst_ControladorLCD|inst_PantallaLcd|Equal0~4_combout\ & \inst_ControladorLCD|inst_PantallaLcd|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_ControladorLCD|inst_PantallaLcd|Equal0~4_combout\,
	datad => \inst_ControladorLCD|inst_PantallaLcd|Add0~12_combout\,
	combout => \inst_ControladorLCD|inst_PantallaLcd|Mux18~0_combout\);

-- Location: FF_X15_Y7_N9
\inst_ControladorLCD|inst_PantallaLcd|contador[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_ControladorLCD|inst_PantallaLcd|Mux18~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \inst_ControladorLCD|inst_PantallaLcd|lcd_data_int[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_ControladorLCD|inst_PantallaLcd|contador\(6));

-- Location: LCCOMB_X14_Y7_N14
\inst_ControladorLCD|inst_PantallaLcd|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_ControladorLCD|inst_PantallaLcd|Add0~14_combout\ = (\inst_ControladorLCD|inst_PantallaLcd|contador\(7) & (!\inst_ControladorLCD|inst_PantallaLcd|Add0~13\)) # (!\inst_ControladorLCD|inst_PantallaLcd|contador\(7) & 
-- ((\inst_ControladorLCD|inst_PantallaLcd|Add0~13\) # (GND)))
-- \inst_ControladorLCD|inst_PantallaLcd|Add0~15\ = CARRY((!\inst_ControladorLCD|inst_PantallaLcd|Add0~13\) # (!\inst_ControladorLCD|inst_PantallaLcd|contador\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_ControladorLCD|inst_PantallaLcd|contador\(7),
	datad => VCC,
	cin => \inst_ControladorLCD|inst_PantallaLcd|Add0~13\,
	combout => \inst_ControladorLCD|inst_PantallaLcd|Add0~14_combout\,
	cout => \inst_ControladorLCD|inst_PantallaLcd|Add0~15\);

-- Location: FF_X14_Y7_N15
\inst_ControladorLCD|inst_PantallaLcd|contador[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_ControladorLCD|inst_PantallaLcd|Add0~14_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \inst_ControladorLCD|inst_PantallaLcd|lcd_data_int[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_ControladorLCD|inst_PantallaLcd|contador\(7));

-- Location: LCCOMB_X14_Y7_N16
\inst_ControladorLCD|inst_PantallaLcd|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_ControladorLCD|inst_PantallaLcd|Add0~16_combout\ = (\inst_ControladorLCD|inst_PantallaLcd|contador\(8) & (\inst_ControladorLCD|inst_PantallaLcd|Add0~15\ $ (GND))) # (!\inst_ControladorLCD|inst_PantallaLcd|contador\(8) & 
-- (!\inst_ControladorLCD|inst_PantallaLcd|Add0~15\ & VCC))
-- \inst_ControladorLCD|inst_PantallaLcd|Add0~17\ = CARRY((\inst_ControladorLCD|inst_PantallaLcd|contador\(8) & !\inst_ControladorLCD|inst_PantallaLcd|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_ControladorLCD|inst_PantallaLcd|contador\(8),
	datad => VCC,
	cin => \inst_ControladorLCD|inst_PantallaLcd|Add0~15\,
	combout => \inst_ControladorLCD|inst_PantallaLcd|Add0~16_combout\,
	cout => \inst_ControladorLCD|inst_PantallaLcd|Add0~17\);

-- Location: LCCOMB_X15_Y7_N18
\inst_ControladorLCD|inst_PantallaLcd|Mux16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_ControladorLCD|inst_PantallaLcd|Mux16~0_combout\ = (\inst_ControladorLCD|inst_PantallaLcd|Add0~16_combout\ & \inst_ControladorLCD|inst_PantallaLcd|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_ControladorLCD|inst_PantallaLcd|Add0~16_combout\,
	datad => \inst_ControladorLCD|inst_PantallaLcd|Equal0~4_combout\,
	combout => \inst_ControladorLCD|inst_PantallaLcd|Mux16~0_combout\);

-- Location: FF_X15_Y7_N19
\inst_ControladorLCD|inst_PantallaLcd|contador[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_ControladorLCD|inst_PantallaLcd|Mux16~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \inst_ControladorLCD|inst_PantallaLcd|lcd_data_int[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_ControladorLCD|inst_PantallaLcd|contador\(8));

-- Location: LCCOMB_X15_Y7_N14
\inst_ControladorLCD|inst_PantallaLcd|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_ControladorLCD|inst_PantallaLcd|Equal0~2_combout\ = (\inst_ControladorLCD|inst_PantallaLcd|contador\(5)) # (((\inst_ControladorLCD|inst_PantallaLcd|contador\(7)) # (!\inst_ControladorLCD|inst_PantallaLcd|contador\(6))) # 
-- (!\inst_ControladorLCD|inst_PantallaLcd|contador\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_ControladorLCD|inst_PantallaLcd|contador\(5),
	datab => \inst_ControladorLCD|inst_PantallaLcd|contador\(8),
	datac => \inst_ControladorLCD|inst_PantallaLcd|contador\(6),
	datad => \inst_ControladorLCD|inst_PantallaLcd|contador\(7),
	combout => \inst_ControladorLCD|inst_PantallaLcd|Equal0~2_combout\);

-- Location: LCCOMB_X14_Y7_N18
\inst_ControladorLCD|inst_PantallaLcd|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_ControladorLCD|inst_PantallaLcd|Add0~18_combout\ = (\inst_ControladorLCD|inst_PantallaLcd|contador\(9) & (!\inst_ControladorLCD|inst_PantallaLcd|Add0~17\)) # (!\inst_ControladorLCD|inst_PantallaLcd|contador\(9) & 
-- ((\inst_ControladorLCD|inst_PantallaLcd|Add0~17\) # (GND)))
-- \inst_ControladorLCD|inst_PantallaLcd|Add0~19\ = CARRY((!\inst_ControladorLCD|inst_PantallaLcd|Add0~17\) # (!\inst_ControladorLCD|inst_PantallaLcd|contador\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_ControladorLCD|inst_PantallaLcd|contador\(9),
	datad => VCC,
	cin => \inst_ControladorLCD|inst_PantallaLcd|Add0~17\,
	combout => \inst_ControladorLCD|inst_PantallaLcd|Add0~18_combout\,
	cout => \inst_ControladorLCD|inst_PantallaLcd|Add0~19\);

-- Location: LCCOMB_X15_Y7_N10
\inst_ControladorLCD|inst_PantallaLcd|Mux15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_ControladorLCD|inst_PantallaLcd|Mux15~0_combout\ = (\inst_ControladorLCD|inst_PantallaLcd|Equal0~4_combout\ & \inst_ControladorLCD|inst_PantallaLcd|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_ControladorLCD|inst_PantallaLcd|Equal0~4_combout\,
	datad => \inst_ControladorLCD|inst_PantallaLcd|Add0~18_combout\,
	combout => \inst_ControladorLCD|inst_PantallaLcd|Mux15~0_combout\);

-- Location: FF_X15_Y7_N11
\inst_ControladorLCD|inst_PantallaLcd|contador[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_ControladorLCD|inst_PantallaLcd|Mux15~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \inst_ControladorLCD|inst_PantallaLcd|lcd_data_int[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_ControladorLCD|inst_PantallaLcd|contador\(9));

-- Location: LCCOMB_X14_Y7_N20
\inst_ControladorLCD|inst_PantallaLcd|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_ControladorLCD|inst_PantallaLcd|Add0~20_combout\ = (\inst_ControladorLCD|inst_PantallaLcd|contador\(10) & (\inst_ControladorLCD|inst_PantallaLcd|Add0~19\ $ (GND))) # (!\inst_ControladorLCD|inst_PantallaLcd|contador\(10) & 
-- (!\inst_ControladorLCD|inst_PantallaLcd|Add0~19\ & VCC))
-- \inst_ControladorLCD|inst_PantallaLcd|Add0~21\ = CARRY((\inst_ControladorLCD|inst_PantallaLcd|contador\(10) & !\inst_ControladorLCD|inst_PantallaLcd|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_ControladorLCD|inst_PantallaLcd|contador\(10),
	datad => VCC,
	cin => \inst_ControladorLCD|inst_PantallaLcd|Add0~19\,
	combout => \inst_ControladorLCD|inst_PantallaLcd|Add0~20_combout\,
	cout => \inst_ControladorLCD|inst_PantallaLcd|Add0~21\);

-- Location: FF_X14_Y7_N21
\inst_ControladorLCD|inst_PantallaLcd|contador[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_ControladorLCD|inst_PantallaLcd|Add0~20_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \inst_ControladorLCD|inst_PantallaLcd|lcd_data_int[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_ControladorLCD|inst_PantallaLcd|contador\(10));

-- Location: LCCOMB_X14_Y7_N22
\inst_ControladorLCD|inst_PantallaLcd|Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_ControladorLCD|inst_PantallaLcd|Add0~22_combout\ = (\inst_ControladorLCD|inst_PantallaLcd|contador\(11) & (!\inst_ControladorLCD|inst_PantallaLcd|Add0~21\)) # (!\inst_ControladorLCD|inst_PantallaLcd|contador\(11) & 
-- ((\inst_ControladorLCD|inst_PantallaLcd|Add0~21\) # (GND)))
-- \inst_ControladorLCD|inst_PantallaLcd|Add0~23\ = CARRY((!\inst_ControladorLCD|inst_PantallaLcd|Add0~21\) # (!\inst_ControladorLCD|inst_PantallaLcd|contador\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_ControladorLCD|inst_PantallaLcd|contador\(11),
	datad => VCC,
	cin => \inst_ControladorLCD|inst_PantallaLcd|Add0~21\,
	combout => \inst_ControladorLCD|inst_PantallaLcd|Add0~22_combout\,
	cout => \inst_ControladorLCD|inst_PantallaLcd|Add0~23\);

-- Location: FF_X14_Y7_N23
\inst_ControladorLCD|inst_PantallaLcd|contador[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_ControladorLCD|inst_PantallaLcd|Add0~22_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \inst_ControladorLCD|inst_PantallaLcd|lcd_data_int[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_ControladorLCD|inst_PantallaLcd|contador\(11));

-- Location: LCCOMB_X14_Y7_N24
\inst_ControladorLCD|inst_PantallaLcd|Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_ControladorLCD|inst_PantallaLcd|Add0~24_combout\ = (\inst_ControladorLCD|inst_PantallaLcd|contador\(12) & (\inst_ControladorLCD|inst_PantallaLcd|Add0~23\ $ (GND))) # (!\inst_ControladorLCD|inst_PantallaLcd|contador\(12) & 
-- (!\inst_ControladorLCD|inst_PantallaLcd|Add0~23\ & VCC))
-- \inst_ControladorLCD|inst_PantallaLcd|Add0~25\ = CARRY((\inst_ControladorLCD|inst_PantallaLcd|contador\(12) & !\inst_ControladorLCD|inst_PantallaLcd|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_ControladorLCD|inst_PantallaLcd|contador\(12),
	datad => VCC,
	cin => \inst_ControladorLCD|inst_PantallaLcd|Add0~23\,
	combout => \inst_ControladorLCD|inst_PantallaLcd|Add0~24_combout\,
	cout => \inst_ControladorLCD|inst_PantallaLcd|Add0~25\);

-- Location: FF_X14_Y7_N25
\inst_ControladorLCD|inst_PantallaLcd|contador[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_ControladorLCD|inst_PantallaLcd|Add0~24_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \inst_ControladorLCD|inst_PantallaLcd|lcd_data_int[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_ControladorLCD|inst_PantallaLcd|contador\(12));

-- Location: LCCOMB_X14_Y7_N26
\inst_ControladorLCD|inst_PantallaLcd|Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_ControladorLCD|inst_PantallaLcd|Add0~26_combout\ = (\inst_ControladorLCD|inst_PantallaLcd|contador\(13) & (!\inst_ControladorLCD|inst_PantallaLcd|Add0~25\)) # (!\inst_ControladorLCD|inst_PantallaLcd|contador\(13) & 
-- ((\inst_ControladorLCD|inst_PantallaLcd|Add0~25\) # (GND)))
-- \inst_ControladorLCD|inst_PantallaLcd|Add0~27\ = CARRY((!\inst_ControladorLCD|inst_PantallaLcd|Add0~25\) # (!\inst_ControladorLCD|inst_PantallaLcd|contador\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_ControladorLCD|inst_PantallaLcd|contador\(13),
	datad => VCC,
	cin => \inst_ControladorLCD|inst_PantallaLcd|Add0~25\,
	combout => \inst_ControladorLCD|inst_PantallaLcd|Add0~26_combout\,
	cout => \inst_ControladorLCD|inst_PantallaLcd|Add0~27\);

-- Location: FF_X14_Y7_N27
\inst_ControladorLCD|inst_PantallaLcd|contador[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_ControladorLCD|inst_PantallaLcd|Add0~26_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \inst_ControladorLCD|inst_PantallaLcd|lcd_data_int[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_ControladorLCD|inst_PantallaLcd|contador\(13));

-- Location: LCCOMB_X14_Y7_N28
\inst_ControladorLCD|inst_PantallaLcd|Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_ControladorLCD|inst_PantallaLcd|Add0~28_combout\ = (\inst_ControladorLCD|inst_PantallaLcd|contador\(14) & (\inst_ControladorLCD|inst_PantallaLcd|Add0~27\ $ (GND))) # (!\inst_ControladorLCD|inst_PantallaLcd|contador\(14) & 
-- (!\inst_ControladorLCD|inst_PantallaLcd|Add0~27\ & VCC))
-- \inst_ControladorLCD|inst_PantallaLcd|Add0~29\ = CARRY((\inst_ControladorLCD|inst_PantallaLcd|contador\(14) & !\inst_ControladorLCD|inst_PantallaLcd|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_ControladorLCD|inst_PantallaLcd|contador\(14),
	datad => VCC,
	cin => \inst_ControladorLCD|inst_PantallaLcd|Add0~27\,
	combout => \inst_ControladorLCD|inst_PantallaLcd|Add0~28_combout\,
	cout => \inst_ControladorLCD|inst_PantallaLcd|Add0~29\);

-- Location: LCCOMB_X15_Y7_N2
\inst_ControladorLCD|inst_PantallaLcd|Mux10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_ControladorLCD|inst_PantallaLcd|Mux10~0_combout\ = (\inst_ControladorLCD|inst_PantallaLcd|Equal0~4_combout\ & \inst_ControladorLCD|inst_PantallaLcd|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_ControladorLCD|inst_PantallaLcd|Equal0~4_combout\,
	datad => \inst_ControladorLCD|inst_PantallaLcd|Add0~28_combout\,
	combout => \inst_ControladorLCD|inst_PantallaLcd|Mux10~0_combout\);

-- Location: FF_X15_Y7_N3
\inst_ControladorLCD|inst_PantallaLcd|contador[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_ControladorLCD|inst_PantallaLcd|Mux10~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \inst_ControladorLCD|inst_PantallaLcd|lcd_data_int[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_ControladorLCD|inst_PantallaLcd|contador\(14));

-- Location: LCCOMB_X14_Y7_N30
\inst_ControladorLCD|inst_PantallaLcd|Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_ControladorLCD|inst_PantallaLcd|Add0~30_combout\ = \inst_ControladorLCD|inst_PantallaLcd|Add0~29\ $ (\inst_ControladorLCD|inst_PantallaLcd|contador\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst_ControladorLCD|inst_PantallaLcd|contador\(15),
	cin => \inst_ControladorLCD|inst_PantallaLcd|Add0~29\,
	combout => \inst_ControladorLCD|inst_PantallaLcd|Add0~30_combout\);

-- Location: LCCOMB_X15_Y7_N20
\inst_ControladorLCD|inst_PantallaLcd|Mux9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_ControladorLCD|inst_PantallaLcd|Mux9~0_combout\ = (\inst_ControladorLCD|inst_PantallaLcd|Equal0~4_combout\ & \inst_ControladorLCD|inst_PantallaLcd|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_ControladorLCD|inst_PantallaLcd|Equal0~4_combout\,
	datad => \inst_ControladorLCD|inst_PantallaLcd|Add0~30_combout\,
	combout => \inst_ControladorLCD|inst_PantallaLcd|Mux9~0_combout\);

-- Location: FF_X15_Y7_N21
\inst_ControladorLCD|inst_PantallaLcd|contador[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_ControladorLCD|inst_PantallaLcd|Mux9~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \inst_ControladorLCD|inst_PantallaLcd|lcd_data_int[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_ControladorLCD|inst_PantallaLcd|contador\(15));

-- Location: LCCOMB_X15_Y7_N4
\inst_ControladorLCD|inst_PantallaLcd|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_ControladorLCD|inst_PantallaLcd|Equal0~0_combout\ = (\inst_ControladorLCD|inst_PantallaLcd|contador\(13)) # (((\inst_ControladorLCD|inst_PantallaLcd|contador\(0)) # (!\inst_ControladorLCD|inst_PantallaLcd|contador\(15))) # 
-- (!\inst_ControladorLCD|inst_PantallaLcd|contador\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_ControladorLCD|inst_PantallaLcd|contador\(13),
	datab => \inst_ControladorLCD|inst_PantallaLcd|contador\(14),
	datac => \inst_ControladorLCD|inst_PantallaLcd|contador\(0),
	datad => \inst_ControladorLCD|inst_PantallaLcd|contador\(15),
	combout => \inst_ControladorLCD|inst_PantallaLcd|Equal0~0_combout\);

-- Location: LCCOMB_X15_Y7_N28
\inst_ControladorLCD|inst_PantallaLcd|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_ControladorLCD|inst_PantallaLcd|Equal0~1_combout\ = ((\inst_ControladorLCD|inst_PantallaLcd|contador\(11)) # ((\inst_ControladorLCD|inst_PantallaLcd|contador\(12)) # (\inst_ControladorLCD|inst_PantallaLcd|contador\(10)))) # 
-- (!\inst_ControladorLCD|inst_PantallaLcd|contador\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_ControladorLCD|inst_PantallaLcd|contador\(9),
	datab => \inst_ControladorLCD|inst_PantallaLcd|contador\(11),
	datac => \inst_ControladorLCD|inst_PantallaLcd|contador\(12),
	datad => \inst_ControladorLCD|inst_PantallaLcd|contador\(10),
	combout => \inst_ControladorLCD|inst_PantallaLcd|Equal0~1_combout\);

-- Location: LCCOMB_X15_Y7_N0
\inst_ControladorLCD|inst_PantallaLcd|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_ControladorLCD|inst_PantallaLcd|Equal0~4_combout\ = (\inst_ControladorLCD|inst_PantallaLcd|Equal0~3_combout\) # ((\inst_ControladorLCD|inst_PantallaLcd|Equal0~2_combout\) # ((\inst_ControladorLCD|inst_PantallaLcd|Equal0~0_combout\) # 
-- (\inst_ControladorLCD|inst_PantallaLcd|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_ControladorLCD|inst_PantallaLcd|Equal0~3_combout\,
	datab => \inst_ControladorLCD|inst_PantallaLcd|Equal0~2_combout\,
	datac => \inst_ControladorLCD|inst_PantallaLcd|Equal0~0_combout\,
	datad => \inst_ControladorLCD|inst_PantallaLcd|Equal0~1_combout\,
	combout => \inst_ControladorLCD|inst_PantallaLcd|Equal0~4_combout\);

-- Location: LCCOMB_X16_Y7_N6
\inst_ControladorLCD|inst_PantallaLcd|estado[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_ControladorLCD|inst_PantallaLcd|estado[1]~1_combout\ = (\inst_ControladorLCD|inst_PantallaLcd|estado\(1)) # ((!\inst_ControladorLCD|inst_PantallaLcd|Equal0~4_combout\ & \inst_ControladorLCD|inst_PantallaLcd|estado\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_ControladorLCD|inst_PantallaLcd|Equal0~4_combout\,
	datac => \inst_ControladorLCD|inst_PantallaLcd|estado\(1),
	datad => \inst_ControladorLCD|inst_PantallaLcd|estado\(0),
	combout => \inst_ControladorLCD|inst_PantallaLcd|estado[1]~1_combout\);

-- Location: FF_X16_Y7_N7
\inst_ControladorLCD|inst_PantallaLcd|estado[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_ControladorLCD|inst_PantallaLcd|estado[1]~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_ControladorLCD|inst_PantallaLcd|estado\(1));

-- Location: LCCOMB_X15_Y7_N24
\inst_ControladorLCD|inst_PantallaLcd|estado[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_ControladorLCD|inst_PantallaLcd|estado[0]~0_combout\ = \inst_ControladorLCD|inst_PantallaLcd|estado\(0) $ (((!\inst_ControladorLCD|inst_PantallaLcd|estado\(1) & !\inst_ControladorLCD|inst_PantallaLcd|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_ControladorLCD|inst_PantallaLcd|estado\(1),
	datac => \inst_ControladorLCD|inst_PantallaLcd|estado\(0),
	datad => \inst_ControladorLCD|inst_PantallaLcd|Equal0~4_combout\,
	combout => \inst_ControladorLCD|inst_PantallaLcd|estado[0]~0_combout\);

-- Location: FF_X15_Y7_N25
\inst_ControladorLCD|inst_PantallaLcd|estado[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_ControladorLCD|inst_PantallaLcd|estado[0]~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_ControladorLCD|inst_PantallaLcd|estado\(0));

-- Location: LCCOMB_X15_Y7_N16
\inst_ControladorLCD|inst_PantallaLcd|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_ControladorLCD|inst_PantallaLcd|Mux5~0_combout\ = (\inst_ControladorLCD|inst_PantallaLcd|estado\(0) & !\inst_ControladorLCD|inst_PantallaLcd|estado\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_ControladorLCD|inst_PantallaLcd|estado\(0),
	datad => \inst_ControladorLCD|inst_PantallaLcd|estado\(1),
	combout => \inst_ControladorLCD|inst_PantallaLcd|Mux5~0_combout\);

-- Location: FF_X15_Y7_N17
\inst_ControladorLCD|inst_PantallaLcd|lcd_data_int[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_ControladorLCD|inst_PantallaLcd|Mux5~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \inst_ControladorLCD|inst_PantallaLcd|lcd_data_int[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_ControladorLCD|inst_PantallaLcd|lcd_data_int\(2));

-- Location: LCCOMB_X15_Y7_N26
\inst_ControladorLCD|inst_PantallaLcd|lcd_data_int[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_ControladorLCD|inst_PantallaLcd|lcd_data_int[3]~1_combout\ = !\inst_ControladorLCD|inst_PantallaLcd|estado\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_ControladorLCD|inst_PantallaLcd|estado\(1),
	combout => \inst_ControladorLCD|inst_PantallaLcd|lcd_data_int[3]~1_combout\);

-- Location: FF_X15_Y7_N27
\inst_ControladorLCD|inst_PantallaLcd|lcd_data_int[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_ControladorLCD|inst_PantallaLcd|lcd_data_int[3]~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \inst_ControladorLCD|inst_PantallaLcd|lcd_data_int[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_ControladorLCD|inst_PantallaLcd|lcd_data_int\(3));

-- Location: LCCOMB_X16_Y7_N0
\inst_ControladorLCD|inst_PantallaLcd|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_ControladorLCD|inst_PantallaLcd|Mux2~0_combout\ = (!\inst_ControladorLCD|inst_PantallaLcd|estado\(0) & !\inst_ControladorLCD|inst_PantallaLcd|estado\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_ControladorLCD|inst_PantallaLcd|estado\(0),
	datad => \inst_ControladorLCD|inst_PantallaLcd|estado\(1),
	combout => \inst_ControladorLCD|inst_PantallaLcd|Mux2~0_combout\);

-- Location: FF_X16_Y7_N1
\inst_ControladorLCD|inst_PantallaLcd|lcd_data_int[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_ControladorLCD|inst_PantallaLcd|Mux2~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \inst_ControladorLCD|inst_PantallaLcd|lcd_data_int[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_ControladorLCD|inst_PantallaLcd|lcd_data_int\(5));

-- Location: LCCOMB_X16_Y7_N26
\inst_ControladorLCD|inst_PantallaLcd|lcd_rs_int~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_ControladorLCD|inst_PantallaLcd|lcd_rs_int~0_combout\ = (\inst_ControladorLCD|inst_PantallaLcd|lcd_rs_int~q\) # ((!\inst_ControladorLCD|inst_PantallaLcd|estado\(0) & \inst_ControladorLCD|inst_PantallaLcd|estado\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_ControladorLCD|inst_PantallaLcd|estado\(0),
	datac => \inst_ControladorLCD|inst_PantallaLcd|lcd_rs_int~q\,
	datad => \inst_ControladorLCD|inst_PantallaLcd|estado\(1),
	combout => \inst_ControladorLCD|inst_PantallaLcd|lcd_rs_int~0_combout\);

-- Location: FF_X16_Y7_N27
\inst_ControladorLCD|inst_PantallaLcd|lcd_rs_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_ControladorLCD|inst_PantallaLcd|lcd_rs_int~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_ControladorLCD|inst_PantallaLcd|lcd_rs_int~q\);

-- Location: LCCOMB_X16_Y7_N20
\inst_ControladorLCD|inst_PantallaLcd|lcd_en_int~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst_ControladorLCD|inst_PantallaLcd|lcd_en_int~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst_ControladorLCD|inst_PantallaLcd|lcd_en_int~feeder_combout\);

-- Location: FF_X16_Y7_N21
\inst_ControladorLCD|inst_PantallaLcd|lcd_en_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_ControladorLCD|inst_PantallaLcd|lcd_en_int~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \inst_ControladorLCD|inst_PantallaLcd|lcd_data_int[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_ControladorLCD|inst_PantallaLcd|lcd_en_int~q\);

-- Location: IOIBUF_X0_Y23_N8
\tag_identificacion~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tag_identificacion,
	o => \tag_identificacion~input_o\);

-- Location: IOIBUF_X16_Y0_N15
\identificacion_valida~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_identificacion_valida,
	o => \identificacion_valida~input_o\);

ww_barrera_entrada <= \barrera_entrada~output_o\;

ww_barrera_salida <= \barrera_salida~output_o\;

ww_semaforo_entrada_verde <= \semaforo_entrada_verde~output_o\;

ww_semaforo_entrada_rojo <= \semaforo_entrada_rojo~output_o\;

ww_semaforo_salida_verde <= \semaforo_salida_verde~output_o\;

ww_semaforo_salida_rojo <= \semaforo_salida_rojo~output_o\;

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

ww_display_output(0) <= \display_output[0]~output_o\;

ww_display_output(1) <= \display_output[1]~output_o\;

ww_display_output(2) <= \display_output[2]~output_o\;

ww_display_output(3) <= \display_output[3]~output_o\;

ww_display_output(4) <= \display_output[4]~output_o\;

ww_display_output(5) <= \display_output[5]~output_o\;

ww_display_output(6) <= \display_output[6]~output_o\;

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

ww_categoria_vehiculo(0) <= \categoria_vehiculo[0]~output_o\;

ww_categoria_vehiculo(1) <= \categoria_vehiculo[1]~output_o\;

ww_categoria_vehiculo(2) <= \categoria_vehiculo[2]~output_o\;

ww_categoria_vehiculo(3) <= \categoria_vehiculo[3]~output_o\;

ww_identificacion_valida <= \identificacion_valida~output_o\;
END structure;


