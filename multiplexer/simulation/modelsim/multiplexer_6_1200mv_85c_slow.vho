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

-- DATE "06/03/2022 14:07:06"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	multiplexer IS
    PORT (
	a : IN std_logic_vector(4 DOWNTO 0);
	f : OUT std_logic_vector(3 DOWNTO 0)
	);
END multiplexer;

-- Design Ports Information
-- f[0]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[1]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[2]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[3]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[4]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF multiplexer IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_f : std_logic_vector(3 DOWNTO 0);
SIGNAL \f[0]~output_o\ : std_logic;
SIGNAL \f[1]~output_o\ : std_logic;
SIGNAL \f[2]~output_o\ : std_logic;
SIGNAL \f[3]~output_o\ : std_logic;
SIGNAL \a[4]~input_o\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \f[3]~0_combout\ : std_logic;
SIGNAL \f[3]~2_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \f[3]~1_combout\ : std_logic;
SIGNAL \comb~30_combout\ : std_logic;
SIGNAL \comb~32_combout\ : std_logic;
SIGNAL \comb~31_combout\ : std_logic;
SIGNAL \f[0]$latch~combout\ : std_logic;
SIGNAL \comb~19_combout\ : std_logic;
SIGNAL \comb~35_combout\ : std_logic;
SIGNAL \comb~3_combout\ : std_logic;
SIGNAL \comb~33_combout\ : std_logic;
SIGNAL \f[1]$latch~combout\ : std_logic;
SIGNAL \comb~10_combout\ : std_logic;
SIGNAL \comb~34_combout\ : std_logic;
SIGNAL \comb~27_combout\ : std_logic;
SIGNAL \comb~36_combout\ : std_logic;
SIGNAL \f[2]$latch~combout\ : std_logic;

BEGIN

ww_a <= a;
f <= ww_f;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X20_Y31_N2
\f[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f[0]$latch~combout\,
	devoe => ww_devoe,
	o => \f[0]~output_o\);

-- Location: IOOBUF_X33_Y14_N2
\f[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f[1]$latch~combout\,
	devoe => ww_devoe,
	o => \f[1]~output_o\);

-- Location: IOOBUF_X8_Y0_N2
\f[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f[2]$latch~combout\,
	devoe => ww_devoe,
	o => \f[2]~output_o\);

-- Location: IOOBUF_X22_Y0_N2
\f[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \f[3]~output_o\);

-- Location: IOIBUF_X20_Y0_N1
\a[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(4),
	o => \a[4]~input_o\);

-- Location: IOIBUF_X24_Y0_N8
\a[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: IOIBUF_X26_Y0_N1
\a[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: IOIBUF_X31_Y0_N8
\a[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: IOIBUF_X33_Y12_N1
\a[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: LCCOMB_X24_Y12_N24
\f[3]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \f[3]~0_combout\ = (!\a[0]~input_o\ & !\a[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[0]~input_o\,
	datac => \a[2]~input_o\,
	combout => \f[3]~0_combout\);

-- Location: LCCOMB_X24_Y12_N10
\f[3]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \f[3]~2_combout\ = (!\a[1]~input_o\ & (\f[3]~0_combout\ & (\a[4]~input_o\ $ (\a[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[4]~input_o\,
	datab => \a[1]~input_o\,
	datac => \a[3]~input_o\,
	datad => \f[3]~0_combout\,
	combout => \f[3]~2_combout\);

-- Location: LCCOMB_X24_Y12_N8
\Equal3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (!\a[4]~input_o\ & (\a[1]~input_o\ & (!\a[3]~input_o\ & \f[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[4]~input_o\,
	datab => \a[1]~input_o\,
	datac => \a[3]~input_o\,
	datad => \f[3]~0_combout\,
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X24_Y12_N12
\Equal2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!\a[4]~input_o\ & (!\a[3]~input_o\ & !\a[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[4]~input_o\,
	datac => \a[3]~input_o\,
	datad => \a[1]~input_o\,
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X24_Y12_N22
\Equal4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = ((\a[2]~input_o\) # (!\Equal2~0_combout\)) # (!\a[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[0]~input_o\,
	datac => \a[2]~input_o\,
	datad => \Equal2~0_combout\,
	combout => \Equal4~0_combout\);

-- Location: LCCOMB_X24_Y12_N28
\Equal2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (\a[0]~input_o\) # ((!\Equal2~0_combout\) # (!\a[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[0]~input_o\,
	datac => \a[2]~input_o\,
	datad => \Equal2~0_combout\,
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X24_Y12_N14
\f[3]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \f[3]~1_combout\ = (\f[3]~2_combout\) # ((\Equal3~0_combout\) # ((!\Equal2~1_combout\) # (!\Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f[3]~2_combout\,
	datab => \Equal3~0_combout\,
	datac => \Equal4~0_combout\,
	datad => \Equal2~1_combout\,
	combout => \f[3]~1_combout\);

-- Location: LCCOMB_X24_Y12_N2
\comb~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comb~30_combout\ = (!\a[4]~input_o\ & (\f[3]~0_combout\ & (\a[1]~input_o\ $ (\a[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[4]~input_o\,
	datab => \a[1]~input_o\,
	datac => \a[3]~input_o\,
	datad => \f[3]~0_combout\,
	combout => \comb~30_combout\);

-- Location: LCCOMB_X25_Y12_N2
\comb~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comb~32_combout\ = (\f[3]~1_combout\ & !\comb~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f[3]~1_combout\,
	datad => \comb~30_combout\,
	combout => \comb~32_combout\);

-- Location: LCCOMB_X25_Y12_N0
\comb~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comb~31_combout\ = (\f[3]~1_combout\ & \comb~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f[3]~1_combout\,
	datad => \comb~30_combout\,
	combout => \comb~31_combout\);

-- Location: LCCOMB_X25_Y12_N12
\f[0]$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \f[0]$latch~combout\ = (!\comb~31_combout\ & ((\comb~32_combout\) # (\f[0]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb~32_combout\,
	datac => \comb~31_combout\,
	datad => \f[0]$latch~combout\,
	combout => \f[0]$latch~combout\);

-- Location: LCCOMB_X24_Y12_N30
\comb~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comb~19_combout\ = \a[2]~input_o\ $ (\a[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a[2]~input_o\,
	datad => \a[1]~input_o\,
	combout => \comb~19_combout\);

-- Location: LCCOMB_X24_Y12_N0
\comb~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comb~35_combout\ = (\comb~19_combout\ & (!\a[3]~input_o\ & (!\a[0]~input_o\ & !\a[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~19_combout\,
	datab => \a[3]~input_o\,
	datac => \a[0]~input_o\,
	datad => \a[4]~input_o\,
	combout => \comb~35_combout\);

-- Location: LCCOMB_X24_Y12_N16
\comb~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comb~3_combout\ = (\a[3]~input_o\ & (!\a[0]~input_o\ & !\a[4]~input_o\)) # (!\a[3]~input_o\ & (\a[0]~input_o\ $ (\a[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[3]~input_o\,
	datac => \a[0]~input_o\,
	datad => \a[4]~input_o\,
	combout => \comb~3_combout\);

-- Location: LCCOMB_X32_Y12_N0
\comb~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comb~33_combout\ = (\comb~3_combout\ & (!\a[1]~input_o\ & !\a[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~3_combout\,
	datab => \a[1]~input_o\,
	datad => \a[2]~input_o\,
	combout => \comb~33_combout\);

-- Location: LCCOMB_X32_Y12_N2
\f[1]$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \f[1]$latch~combout\ = (!\comb~33_combout\ & ((\comb~35_combout\) # (\f[1]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~35_combout\,
	datab => \comb~33_combout\,
	datad => \f[1]$latch~combout\,
	combout => \f[1]$latch~combout\);

-- Location: LCCOMB_X24_Y12_N18
\comb~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comb~10_combout\ = \a[3]~input_o\ $ (\a[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a[3]~input_o\,
	datad => \a[4]~input_o\,
	combout => \comb~10_combout\);

-- Location: LCCOMB_X24_Y12_N20
\comb~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comb~34_combout\ = (!\a[2]~input_o\ & (!\a[1]~input_o\ & (!\a[0]~input_o\ & \comb~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[2]~input_o\,
	datab => \a[1]~input_o\,
	datac => \a[0]~input_o\,
	datad => \comb~10_combout\,
	combout => \comb~34_combout\);

-- Location: LCCOMB_X24_Y12_N26
\comb~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comb~27_combout\ = (\a[0]~input_o\ & (!\a[2]~input_o\ & !\a[1]~input_o\)) # (!\a[0]~input_o\ & (\a[2]~input_o\ $ (\a[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[0]~input_o\,
	datac => \a[2]~input_o\,
	datad => \a[1]~input_o\,
	combout => \comb~27_combout\);

-- Location: LCCOMB_X24_Y12_N4
\comb~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comb~36_combout\ = (\comb~27_combout\ & (!\a[4]~input_o\ & !\a[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~27_combout\,
	datab => \a[4]~input_o\,
	datac => \a[3]~input_o\,
	combout => \comb~36_combout\);

-- Location: LCCOMB_X24_Y12_N6
\f[2]$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \f[2]$latch~combout\ = (!\comb~36_combout\ & ((\comb~34_combout\) # (\f[2]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb~34_combout\,
	datac => \comb~36_combout\,
	datad => \f[2]$latch~combout\,
	combout => \f[2]$latch~combout\);

ww_f(0) <= \f[0]~output_o\;

ww_f(1) <= \f[1]~output_o\;

ww_f(2) <= \f[2]~output_o\;

ww_f(3) <= \f[3]~output_o\;
END structure;


