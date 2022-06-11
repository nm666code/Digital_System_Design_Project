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

-- DATE "06/08/2022 11:36:02"

-- 
-- Device: Altera EP4CGX22CF19C6 Package FBGA324
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	storage IS
    PORT (
	\1Fup\ : OUT std_logic;
	\1FupR\ : IN std_logic;
	\1FupS\ : IN std_logic;
	\2Fdown\ : OUT std_logic;
	\2FdownR\ : IN std_logic;
	\2FdownS\ : IN std_logic;
	\2Fup\ : OUT std_logic;
	\2FupR\ : IN std_logic;
	\2FupS\ : IN std_logic;
	\3Fdown\ : OUT std_logic;
	\3FdownR\ : IN std_logic;
	\3FdownS\ : IN std_logic;
	\3Fup\ : OUT std_logic;
	\3FupR\ : IN std_logic;
	\3FupS\ : IN std_logic;
	\4Fdown\ : OUT std_logic;
	\4FdownR\ : IN std_logic;
	\4FdownS\ : IN std_logic;
	\4Fup\ : OUT std_logic;
	\4FupR\ : IN std_logic;
	\4FupS\ : IN std_logic;
	\5Fdown\ : OUT std_logic;
	\5FdownR\ : IN std_logic;
	\5FdownS\ : IN std_logic;
	\1Fin\ : OUT std_logic;
	\1FinR\ : IN std_logic;
	\1FinS\ : IN std_logic;
	\2Fin\ : OUT std_logic;
	\2FinR\ : IN std_logic;
	\2FinS\ : IN std_logic;
	\3Fin\ : OUT std_logic;
	\3FinR\ : IN std_logic;
	\3FinS\ : IN std_logic;
	\4Fin\ : OUT std_logic;
	\4FinR\ : IN std_logic;
	\4FinS\ : IN std_logic;
	\5Fin\ : OUT std_logic;
	\5FinR\ : IN std_logic;
	\5FinS\ : IN std_logic;
	\Open\ : OUT std_logic;
	OpenR : IN std_logic;
	OpenS : IN std_logic;
	Close : OUT std_logic;
	CloseR : IN std_logic;
	CloseS : IN std_logic
	);
END storage;

-- Design Ports Information
-- 1Fup	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- 2Fdown	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- 2Fup	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- 3Fdown	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- 3Fup	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- 4Fdown	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- 4Fup	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- 5Fdown	=>  Location: PIN_R18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- 1Fin	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- 2Fin	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- 3Fin	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- 4Fin	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- 5Fin	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Open	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Close	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- 1FupS	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- 1FupR	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- 2FdownS	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- 2FdownR	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- 2FupS	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- 2FupR	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- 3FdownS	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- 3FdownR	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- 3FupS	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- 3FupR	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- 4FdownS	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- 4FdownR	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- 4FupS	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- 4FupR	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- 5FdownS	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- 5FdownR	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- 1FinS	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- 1FinR	=>  Location: PIN_P13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- 2FinS	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- 2FinR	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- 3FinS	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- 3FinR	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- 4FinS	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- 4FinR	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- 5FinS	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- 5FinR	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OpenS	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OpenR	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CloseS	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CloseR	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF storage IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \ww_1Fup\ : std_logic;
SIGNAL \ww_1FupR\ : std_logic;
SIGNAL \ww_1FupS\ : std_logic;
SIGNAL \ww_2Fdown\ : std_logic;
SIGNAL \ww_2FdownR\ : std_logic;
SIGNAL \ww_2FdownS\ : std_logic;
SIGNAL \ww_2Fup\ : std_logic;
SIGNAL \ww_2FupR\ : std_logic;
SIGNAL \ww_2FupS\ : std_logic;
SIGNAL \ww_3Fdown\ : std_logic;
SIGNAL \ww_3FdownR\ : std_logic;
SIGNAL \ww_3FdownS\ : std_logic;
SIGNAL \ww_3Fup\ : std_logic;
SIGNAL \ww_3FupR\ : std_logic;
SIGNAL \ww_3FupS\ : std_logic;
SIGNAL \ww_4Fdown\ : std_logic;
SIGNAL \ww_4FdownR\ : std_logic;
SIGNAL \ww_4FdownS\ : std_logic;
SIGNAL \ww_4Fup\ : std_logic;
SIGNAL \ww_4FupR\ : std_logic;
SIGNAL \ww_4FupS\ : std_logic;
SIGNAL \ww_5Fdown\ : std_logic;
SIGNAL \ww_5FdownR\ : std_logic;
SIGNAL \ww_5FdownS\ : std_logic;
SIGNAL \ww_1Fin\ : std_logic;
SIGNAL \ww_1FinR\ : std_logic;
SIGNAL \ww_1FinS\ : std_logic;
SIGNAL \ww_2Fin\ : std_logic;
SIGNAL \ww_2FinR\ : std_logic;
SIGNAL \ww_2FinS\ : std_logic;
SIGNAL \ww_3Fin\ : std_logic;
SIGNAL \ww_3FinR\ : std_logic;
SIGNAL \ww_3FinS\ : std_logic;
SIGNAL \ww_4Fin\ : std_logic;
SIGNAL \ww_4FinR\ : std_logic;
SIGNAL \ww_4FinS\ : std_logic;
SIGNAL \ww_5Fin\ : std_logic;
SIGNAL \ww_5FinR\ : std_logic;
SIGNAL \ww_5FinS\ : std_logic;
SIGNAL \ww_Open\ : std_logic;
SIGNAL ww_OpenR : std_logic;
SIGNAL ww_OpenS : std_logic;
SIGNAL ww_Close : std_logic;
SIGNAL ww_CloseR : std_logic;
SIGNAL ww_CloseS : std_logic;
SIGNAL \1Fup~output_o\ : std_logic;
SIGNAL \2Fdown~output_o\ : std_logic;
SIGNAL \2Fup~output_o\ : std_logic;
SIGNAL \3Fdown~output_o\ : std_logic;
SIGNAL \3Fup~output_o\ : std_logic;
SIGNAL \4Fdown~output_o\ : std_logic;
SIGNAL \4Fup~output_o\ : std_logic;
SIGNAL \5Fdown~output_o\ : std_logic;
SIGNAL \1Fin~output_o\ : std_logic;
SIGNAL \2Fin~output_o\ : std_logic;
SIGNAL \3Fin~output_o\ : std_logic;
SIGNAL \4Fin~output_o\ : std_logic;
SIGNAL \5Fin~output_o\ : std_logic;
SIGNAL \Open~output_o\ : std_logic;
SIGNAL \Close~output_o\ : std_logic;
SIGNAL \1FupS~input_o\ : std_logic;
SIGNAL \1FupR~input_o\ : std_logic;
SIGNAL \inst1~combout\ : std_logic;
SIGNAL \2FdownR~input_o\ : std_logic;
SIGNAL \2FdownS~input_o\ : std_logic;
SIGNAL \inst4~combout\ : std_logic;
SIGNAL \2FupR~input_o\ : std_logic;
SIGNAL \2FupS~input_o\ : std_logic;
SIGNAL \inst8~combout\ : std_logic;
SIGNAL \3FdownR~input_o\ : std_logic;
SIGNAL \3FdownS~input_o\ : std_logic;
SIGNAL \inst12~combout\ : std_logic;
SIGNAL \3FupR~input_o\ : std_logic;
SIGNAL \3FupS~input_o\ : std_logic;
SIGNAL \inst16~combout\ : std_logic;
SIGNAL \4FdownR~input_o\ : std_logic;
SIGNAL \4FdownS~input_o\ : std_logic;
SIGNAL \inst20~combout\ : std_logic;
SIGNAL \4FupS~input_o\ : std_logic;
SIGNAL \4FupR~input_o\ : std_logic;
SIGNAL \inst24~combout\ : std_logic;
SIGNAL \5FdownS~input_o\ : std_logic;
SIGNAL \5FdownR~input_o\ : std_logic;
SIGNAL \inst28~combout\ : std_logic;
SIGNAL \1FinS~input_o\ : std_logic;
SIGNAL \1FinR~input_o\ : std_logic;
SIGNAL \inst32~combout\ : std_logic;
SIGNAL \2FinS~input_o\ : std_logic;
SIGNAL \2FinR~input_o\ : std_logic;
SIGNAL \inst36~combout\ : std_logic;
SIGNAL \3FinR~input_o\ : std_logic;
SIGNAL \3FinS~input_o\ : std_logic;
SIGNAL \inst40~combout\ : std_logic;
SIGNAL \4FinS~input_o\ : std_logic;
SIGNAL \4FinR~input_o\ : std_logic;
SIGNAL \inst44~combout\ : std_logic;
SIGNAL \5FinS~input_o\ : std_logic;
SIGNAL \5FinR~input_o\ : std_logic;
SIGNAL \inst48~combout\ : std_logic;
SIGNAL \OpenR~input_o\ : std_logic;
SIGNAL \OpenS~input_o\ : std_logic;
SIGNAL \inst52~combout\ : std_logic;
SIGNAL \CloseR~input_o\ : std_logic;
SIGNAL \CloseS~input_o\ : std_logic;
SIGNAL \inst56~combout\ : std_logic;
SIGNAL \ALT_INV_inst56~combout\ : std_logic;
SIGNAL \ALT_INV_inst52~combout\ : std_logic;
SIGNAL \ALT_INV_inst48~combout\ : std_logic;
SIGNAL \ALT_INV_inst44~combout\ : std_logic;
SIGNAL \ALT_INV_inst40~combout\ : std_logic;
SIGNAL \ALT_INV_inst36~combout\ : std_logic;
SIGNAL \ALT_INV_inst32~combout\ : std_logic;
SIGNAL \ALT_INV_inst28~combout\ : std_logic;
SIGNAL \ALT_INV_inst24~combout\ : std_logic;
SIGNAL \ALT_INV_inst20~combout\ : std_logic;
SIGNAL \ALT_INV_inst16~combout\ : std_logic;
SIGNAL \ALT_INV_inst12~combout\ : std_logic;
SIGNAL \ALT_INV_inst8~combout\ : std_logic;
SIGNAL \ALT_INV_inst4~combout\ : std_logic;
SIGNAL \ALT_INV_inst1~combout\ : std_logic;

BEGIN

\1Fup\ <= \ww_1Fup\;
\ww_1FupR\ <= \1FupR\;
\ww_1FupS\ <= \1FupS\;
\2Fdown\ <= \ww_2Fdown\;
\ww_2FdownR\ <= \2FdownR\;
\ww_2FdownS\ <= \2FdownS\;
\2Fup\ <= \ww_2Fup\;
\ww_2FupR\ <= \2FupR\;
\ww_2FupS\ <= \2FupS\;
\3Fdown\ <= \ww_3Fdown\;
\ww_3FdownR\ <= \3FdownR\;
\ww_3FdownS\ <= \3FdownS\;
\3Fup\ <= \ww_3Fup\;
\ww_3FupR\ <= \3FupR\;
\ww_3FupS\ <= \3FupS\;
\4Fdown\ <= \ww_4Fdown\;
\ww_4FdownR\ <= \4FdownR\;
\ww_4FdownS\ <= \4FdownS\;
\4Fup\ <= \ww_4Fup\;
\ww_4FupR\ <= \4FupR\;
\ww_4FupS\ <= \4FupS\;
\5Fdown\ <= \ww_5Fdown\;
\ww_5FdownR\ <= \5FdownR\;
\ww_5FdownS\ <= \5FdownS\;
\1Fin\ <= \ww_1Fin\;
\ww_1FinR\ <= \1FinR\;
\ww_1FinS\ <= \1FinS\;
\2Fin\ <= \ww_2Fin\;
\ww_2FinR\ <= \2FinR\;
\ww_2FinS\ <= \2FinS\;
\3Fin\ <= \ww_3Fin\;
\ww_3FinR\ <= \3FinR\;
\ww_3FinS\ <= \3FinS\;
\4Fin\ <= \ww_4Fin\;
\ww_4FinR\ <= \4FinR\;
\ww_4FinS\ <= \4FinS\;
\5Fin\ <= \ww_5Fin\;
\ww_5FinR\ <= \5FinR\;
\ww_5FinS\ <= \5FinS\;
\Open\ <= \ww_Open\;
ww_OpenR <= OpenR;
ww_OpenS <= OpenS;
Close <= ww_Close;
ww_CloseR <= CloseR;
ww_CloseS <= CloseS;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_inst56~combout\ <= NOT \inst56~combout\;
\ALT_INV_inst52~combout\ <= NOT \inst52~combout\;
\ALT_INV_inst48~combout\ <= NOT \inst48~combout\;
\ALT_INV_inst44~combout\ <= NOT \inst44~combout\;
\ALT_INV_inst40~combout\ <= NOT \inst40~combout\;
\ALT_INV_inst36~combout\ <= NOT \inst36~combout\;
\ALT_INV_inst32~combout\ <= NOT \inst32~combout\;
\ALT_INV_inst28~combout\ <= NOT \inst28~combout\;
\ALT_INV_inst24~combout\ <= NOT \inst24~combout\;
\ALT_INV_inst20~combout\ <= NOT \inst20~combout\;
\ALT_INV_inst16~combout\ <= NOT \inst16~combout\;
\ALT_INV_inst12~combout\ <= NOT \inst12~combout\;
\ALT_INV_inst8~combout\ <= NOT \inst8~combout\;
\ALT_INV_inst4~combout\ <= NOT \inst4~combout\;
\ALT_INV_inst1~combout\ <= NOT \inst1~combout\;

-- Location: IOOBUF_X25_Y0_N2
\1Fup~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst1~combout\,
	devoe => ww_devoe,
	o => \1Fup~output_o\);

-- Location: IOOBUF_X31_Y0_N23
\2Fdown~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst4~combout\,
	devoe => ww_devoe,
	o => \2Fdown~output_o\);

-- Location: IOOBUF_X21_Y0_N9
\2Fup~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst8~combout\,
	devoe => ww_devoe,
	o => \2Fup~output_o\);

-- Location: IOOBUF_X52_Y9_N2
\3Fdown~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst12~combout\,
	devoe => ww_devoe,
	o => \3Fdown~output_o\);

-- Location: IOOBUF_X41_Y0_N2
\3Fup~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst16~combout\,
	devoe => ww_devoe,
	o => \3Fup~output_o\);

-- Location: IOOBUF_X25_Y41_N2
\4Fdown~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst20~combout\,
	devoe => ww_devoe,
	o => \4Fdown~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\4Fup~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst24~combout\,
	devoe => ww_devoe,
	o => \4Fup~output_o\);

-- Location: IOOBUF_X52_Y12_N2
\5Fdown~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst28~combout\,
	devoe => ww_devoe,
	o => \5Fdown~output_o\);

-- Location: IOOBUF_X36_Y0_N2
\1Fin~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst32~combout\,
	devoe => ww_devoe,
	o => \1Fin~output_o\);

-- Location: IOOBUF_X46_Y41_N23
\2Fin~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst36~combout\,
	devoe => ww_devoe,
	o => \2Fin~output_o\);

-- Location: IOOBUF_X41_Y0_N16
\3Fin~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst40~combout\,
	devoe => ww_devoe,
	o => \3Fin~output_o\);

-- Location: IOOBUF_X34_Y41_N2
\4Fin~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst44~combout\,
	devoe => ww_devoe,
	o => \4Fin~output_o\);

-- Location: IOOBUF_X48_Y0_N9
\5Fin~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst48~combout\,
	devoe => ww_devoe,
	o => \5Fin~output_o\);

-- Location: IOOBUF_X52_Y25_N2
\Open~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst52~combout\,
	devoe => ww_devoe,
	o => \Open~output_o\);

-- Location: IOOBUF_X41_Y41_N16
\Close~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst56~combout\,
	devoe => ww_devoe,
	o => \Close~output_o\);

-- Location: IOIBUF_X27_Y0_N8
\1FupS~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_1FupS\,
	o => \1FupS~input_o\);

-- Location: IOIBUF_X27_Y0_N1
\1FupR~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_1FupR\,
	o => \1FupR~input_o\);

-- Location: LCCOMB_X27_Y1_N8
inst1 : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1~combout\ = (!\1FupS~input_o\ & ((\inst1~combout\) # (\1FupR~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \1FupS~input_o\,
	datab => \inst1~combout\,
	datac => \1FupR~input_o\,
	combout => \inst1~combout\);

-- Location: IOIBUF_X31_Y0_N8
\2FdownR~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_2FdownR\,
	o => \2FdownR~input_o\);

-- Location: IOIBUF_X31_Y0_N15
\2FdownS~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_2FdownS\,
	o => \2FdownS~input_o\);

-- Location: LCCOMB_X31_Y1_N16
inst4 : cycloneiv_lcell_comb
-- Equation(s):
-- \inst4~combout\ = (!\2FdownS~input_o\ & ((\2FdownR~input_o\) # (\inst4~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \2FdownR~input_o\,
	datac => \2FdownS~input_o\,
	datad => \inst4~combout\,
	combout => \inst4~combout\);

-- Location: IOIBUF_X23_Y0_N8
\2FupR~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_2FupR\,
	o => \2FupR~input_o\);

-- Location: IOIBUF_X23_Y0_N1
\2FupS~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_2FupS\,
	o => \2FupS~input_o\);

-- Location: LCCOMB_X23_Y1_N24
inst8 : cycloneiv_lcell_comb
-- Equation(s):
-- \inst8~combout\ = (!\2FupS~input_o\ & ((\2FupR~input_o\) # (\inst8~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \2FupR~input_o\,
	datac => \2FupS~input_o\,
	datad => \inst8~combout\,
	combout => \inst8~combout\);

-- Location: IOIBUF_X52_Y9_N8
\3FdownR~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_3FdownR\,
	o => \3FdownR~input_o\);

-- Location: IOIBUF_X52_Y10_N1
\3FdownS~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_3FdownS\,
	o => \3FdownS~input_o\);

-- Location: LCCOMB_X51_Y9_N16
inst12 : cycloneiv_lcell_comb
-- Equation(s):
-- \inst12~combout\ = (!\3FdownS~input_o\ & ((\3FdownR~input_o\) # (\inst12~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \3FdownR~input_o\,
	datab => \inst12~combout\,
	datac => \3FdownS~input_o\,
	combout => \inst12~combout\);

-- Location: IOIBUF_X43_Y0_N8
\3FupR~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_3FupR\,
	o => \3FupR~input_o\);

-- Location: IOIBUF_X43_Y0_N1
\3FupS~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_3FupS\,
	o => \3FupS~input_o\);

-- Location: LCCOMB_X43_Y1_N8
inst16 : cycloneiv_lcell_comb
-- Equation(s):
-- \inst16~combout\ = (!\3FupS~input_o\ & ((\3FupR~input_o\) # (\inst16~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \3FupR~input_o\,
	datab => \inst16~combout\,
	datac => \3FupS~input_o\,
	combout => \inst16~combout\);

-- Location: IOIBUF_X29_Y41_N1
\4FdownR~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_4FdownR\,
	o => \4FdownR~input_o\);

-- Location: IOIBUF_X29_Y41_N8
\4FdownS~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_4FdownS\,
	o => \4FdownS~input_o\);

-- Location: LCCOMB_X29_Y40_N0
inst20 : cycloneiv_lcell_comb
-- Equation(s):
-- \inst20~combout\ = (!\4FdownS~input_o\ & ((\4FdownR~input_o\) # (\inst20~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \4FdownR~input_o\,
	datab => \inst20~combout\,
	datad => \4FdownS~input_o\,
	combout => \inst20~combout\);

-- Location: IOIBUF_X29_Y0_N8
\4FupS~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_4FupS\,
	o => \4FupS~input_o\);

-- Location: IOIBUF_X31_Y0_N1
\4FupR~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_4FupR\,
	o => \4FupR~input_o\);

-- Location: LCCOMB_X30_Y1_N24
inst24 : cycloneiv_lcell_comb
-- Equation(s):
-- \inst24~combout\ = (!\4FupS~input_o\ & ((\inst24~combout\) # (\4FupR~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst24~combout\,
	datac => \4FupS~input_o\,
	datad => \4FupR~input_o\,
	combout => \inst24~combout\);

-- Location: IOIBUF_X52_Y12_N8
\5FdownS~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_5FdownS\,
	o => \5FdownS~input_o\);

-- Location: IOIBUF_X52_Y13_N1
\5FdownR~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_5FdownR\,
	o => \5FdownR~input_o\);

-- Location: LCCOMB_X51_Y12_N16
inst28 : cycloneiv_lcell_comb
-- Equation(s):
-- \inst28~combout\ = (!\5FdownS~input_o\ & ((\inst28~combout\) # (\5FdownR~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \5FdownS~input_o\,
	datab => \inst28~combout\,
	datac => \5FdownR~input_o\,
	combout => \inst28~combout\);

-- Location: IOIBUF_X36_Y0_N8
\1FinS~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_1FinS\,
	o => \1FinS~input_o\);

-- Location: IOIBUF_X38_Y0_N1
\1FinR~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_1FinR\,
	o => \1FinR~input_o\);

-- Location: LCCOMB_X37_Y1_N16
inst32 : cycloneiv_lcell_comb
-- Equation(s):
-- \inst32~combout\ = (!\1FinS~input_o\ & ((\inst32~combout\) # (\1FinR~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \1FinS~input_o\,
	datab => \inst32~combout\,
	datac => \1FinR~input_o\,
	combout => \inst32~combout\);

-- Location: IOIBUF_X46_Y41_N1
\2FinS~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_2FinS\,
	o => \2FinS~input_o\);

-- Location: IOIBUF_X46_Y41_N8
\2FinR~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_2FinR\,
	o => \2FinR~input_o\);

-- Location: LCCOMB_X46_Y40_N0
inst36 : cycloneiv_lcell_comb
-- Equation(s):
-- \inst36~combout\ = (!\2FinS~input_o\ & ((\inst36~combout\) # (\2FinR~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \2FinS~input_o\,
	datab => \inst36~combout\,
	datad => \2FinR~input_o\,
	combout => \inst36~combout\);

-- Location: IOIBUF_X41_Y0_N22
\3FinR~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_3FinR\,
	o => \3FinR~input_o\);

-- Location: IOIBUF_X41_Y0_N8
\3FinS~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_3FinS\,
	o => \3FinS~input_o\);

-- Location: LCCOMB_X41_Y1_N16
inst40 : cycloneiv_lcell_comb
-- Equation(s):
-- \inst40~combout\ = (!\3FinS~input_o\ & ((\3FinR~input_o\) # (\inst40~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \3FinR~input_o\,
	datac => \3FinS~input_o\,
	datad => \inst40~combout\,
	combout => \inst40~combout\);

-- Location: IOIBUF_X36_Y41_N1
\4FinS~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_4FinS\,
	o => \4FinS~input_o\);

-- Location: IOIBUF_X36_Y41_N8
\4FinR~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_4FinR\,
	o => \4FinR~input_o\);

-- Location: LCCOMB_X36_Y40_N8
inst44 : cycloneiv_lcell_comb
-- Equation(s):
-- \inst44~combout\ = (!\4FinS~input_o\ & ((\inst44~combout\) # (\4FinR~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \4FinS~input_o\,
	datac => \inst44~combout\,
	datad => \4FinR~input_o\,
	combout => \inst44~combout\);

-- Location: IOIBUF_X48_Y0_N1
\5FinS~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_5FinS\,
	o => \5FinS~input_o\);

-- Location: IOIBUF_X50_Y0_N1
\5FinR~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_5FinR\,
	o => \5FinR~input_o\);

-- Location: LCCOMB_X49_Y1_N24
inst48 : cycloneiv_lcell_comb
-- Equation(s):
-- \inst48~combout\ = (!\5FinS~input_o\ & ((\inst48~combout\) # (\5FinR~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \5FinS~input_o\,
	datab => \inst48~combout\,
	datac => \5FinR~input_o\,
	combout => \inst48~combout\);

-- Location: IOIBUF_X52_Y25_N8
\OpenR~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OpenR,
	o => \OpenR~input_o\);

-- Location: IOIBUF_X52_Y27_N1
\OpenS~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OpenS,
	o => \OpenS~input_o\);

-- Location: LCCOMB_X51_Y25_N16
inst52 : cycloneiv_lcell_comb
-- Equation(s):
-- \inst52~combout\ = (!\OpenS~input_o\ & ((\OpenR~input_o\) # (\inst52~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OpenR~input_o\,
	datab => \inst52~combout\,
	datac => \OpenS~input_o\,
	combout => \inst52~combout\);

-- Location: IOIBUF_X41_Y41_N1
\CloseR~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CloseR,
	o => \CloseR~input_o\);

-- Location: IOIBUF_X41_Y41_N22
\CloseS~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CloseS,
	o => \CloseS~input_o\);

-- Location: LCCOMB_X41_Y40_N16
inst56 : cycloneiv_lcell_comb
-- Equation(s):
-- \inst56~combout\ = (!\CloseS~input_o\ & ((\inst56~combout\) # (\CloseR~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst56~combout\,
	datac => \CloseR~input_o\,
	datad => \CloseS~input_o\,
	combout => \inst56~combout\);

\ww_1Fup\ <= \1Fup~output_o\;

\ww_2Fdown\ <= \2Fdown~output_o\;

\ww_2Fup\ <= \2Fup~output_o\;

\ww_3Fdown\ <= \3Fdown~output_o\;

\ww_3Fup\ <= \3Fup~output_o\;

\ww_4Fdown\ <= \4Fdown~output_o\;

\ww_4Fup\ <= \4Fup~output_o\;

\ww_5Fdown\ <= \5Fdown~output_o\;

\ww_1Fin\ <= \1Fin~output_o\;

\ww_2Fin\ <= \2Fin~output_o\;

\ww_3Fin\ <= \3Fin~output_o\;

\ww_4Fin\ <= \4Fin~output_o\;

\ww_5Fin\ <= \5Fin~output_o\;

\ww_Open\ <= \Open~output_o\;

ww_Close <= \Close~output_o\;
END structure;


