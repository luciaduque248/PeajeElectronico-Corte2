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

-- DATE "05/14/2024 17:50:02"

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

ENTITY 	ControlTalanquera_Semaforo IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	estado_sistema : IN std_logic_vector(1 DOWNTO 0);
	trafico : IN std_logic_vector(1 DOWNTO 0);
	barrera_entrada : BUFFER std_logic;
	barrera_salida : BUFFER std_logic;
	semaforo_entrada : BUFFER std_logic;
	semaforo_salida : BUFFER std_logic
	);
END ControlTalanquera_Semaforo;

-- Design Ports Information
-- estado_sistema[0]	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estado_sistema[1]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- trafico[0]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- trafico[1]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barrera_entrada	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barrera_salida	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- semaforo_entrada	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- semaforo_salida	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ControlTalanquera_Semaforo IS
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
SIGNAL ww_estado_sistema : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_trafico : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_barrera_entrada : std_logic;
SIGNAL ww_barrera_salida : std_logic;
SIGNAL ww_semaforo_entrada : std_logic;
SIGNAL ww_semaforo_salida : std_logic;
SIGNAL \estado_sistema[0]~input_o\ : std_logic;
SIGNAL \estado_sistema[1]~input_o\ : std_logic;
SIGNAL \trafico[0]~input_o\ : std_logic;
SIGNAL \trafico[1]~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \barrera_entrada~output_o\ : std_logic;
SIGNAL \barrera_salida~output_o\ : std_logic;
SIGNAL \semaforo_entrada~output_o\ : std_logic;
SIGNAL \semaforo_salida~output_o\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_estado_sistema <= estado_sistema;
ww_trafico <= trafico;
barrera_entrada <= ww_barrera_entrada;
barrera_salida <= ww_barrera_salida;
semaforo_entrada <= ww_semaforo_entrada;
semaforo_salida <= ww_semaforo_salida;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X1_Y29_N23
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

-- Location: IOOBUF_X0_Y13_N23
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

-- Location: IOOBUF_X0_Y4_N9
\semaforo_entrada~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \semaforo_entrada~output_o\);

-- Location: IOOBUF_X30_Y29_N2
\semaforo_salida~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \semaforo_salida~output_o\);

-- Location: IOIBUF_X41_Y18_N15
\estado_sistema[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_estado_sistema(0),
	o => \estado_sistema[0]~input_o\);

-- Location: IOIBUF_X32_Y29_N29
\estado_sistema[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_estado_sistema(1),
	o => \estado_sistema[1]~input_o\);

-- Location: IOIBUF_X0_Y26_N15
\trafico[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_trafico(0),
	o => \trafico[0]~input_o\);

-- Location: IOIBUF_X41_Y2_N1
\trafico[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_trafico(1),
	o => \trafico[1]~input_o\);

-- Location: IOIBUF_X0_Y26_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: IOIBUF_X0_Y27_N1
\rst~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

ww_barrera_entrada <= \barrera_entrada~output_o\;

ww_barrera_salida <= \barrera_salida~output_o\;

ww_semaforo_entrada <= \semaforo_entrada~output_o\;

ww_semaforo_salida <= \semaforo_salida~output_o\;
END structure;


