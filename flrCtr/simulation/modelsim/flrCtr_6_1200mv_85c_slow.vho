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

-- DATE "06/08/2022 10:58:55"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	flrCtr IS
    PORT (
	o : OUT std_logic_vector(4 DOWNTO 0);
	clk : IN std_logic;
	mov : IN std_logic_vector(1 DOWNTO 0)
	);
END flrCtr;

-- Design Ports Information
-- o[4]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o[3]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o[2]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o[1]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o[0]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mov[1]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mov[0]	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF flrCtr IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_o : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_mov : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst2|inst|2~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|inst6|2~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|inst1|2~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|inst3|2~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|inst2|2~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|inst4|2~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|inst5|2~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \o[4]~output_o\ : std_logic;
SIGNAL \o[3]~output_o\ : std_logic;
SIGNAL \o[2]~output_o\ : std_logic;
SIGNAL \o[1]~output_o\ : std_logic;
SIGNAL \o[0]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst2|inst|5~0_combout\ : std_logic;
SIGNAL \inst2|inst|5~q\ : std_logic;
SIGNAL \inst2|inst|3~0_combout\ : std_logic;
SIGNAL \inst2|inst|3~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|3~q\ : std_logic;
SIGNAL \inst2|inst|1~0_combout\ : std_logic;
SIGNAL \inst2|inst|1~q\ : std_logic;
SIGNAL \inst2|inst|2~0_combout\ : std_logic;
SIGNAL \inst2|inst|2~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|2~q\ : std_logic;
SIGNAL \inst2|inst|2~clkctrl_outclk\ : std_logic;
SIGNAL \inst2|inst1|5~0_combout\ : std_logic;
SIGNAL \inst2|inst1|5~q\ : std_logic;
SIGNAL \inst2|inst1|3~0_combout\ : std_logic;
SIGNAL \inst2|inst1|3~feeder_combout\ : std_logic;
SIGNAL \inst2|inst1|3~q\ : std_logic;
SIGNAL \inst2|inst1|1~0_combout\ : std_logic;
SIGNAL \inst2|inst1|1~q\ : std_logic;
SIGNAL \inst2|inst1|2~0_combout\ : std_logic;
SIGNAL \inst2|inst1|2~feeder_combout\ : std_logic;
SIGNAL \inst2|inst1|2~q\ : std_logic;
SIGNAL \inst2|inst1|2~clkctrl_outclk\ : std_logic;
SIGNAL \inst2|inst2|5~0_combout\ : std_logic;
SIGNAL \inst2|inst2|5~q\ : std_logic;
SIGNAL \inst2|inst2|3~0_combout\ : std_logic;
SIGNAL \inst2|inst2|3~feeder_combout\ : std_logic;
SIGNAL \inst2|inst2|3~q\ : std_logic;
SIGNAL \inst2|inst2|1~0_combout\ : std_logic;
SIGNAL \inst2|inst2|1~q\ : std_logic;
SIGNAL \inst2|inst2|2~0_combout\ : std_logic;
SIGNAL \inst2|inst2|2~feeder_combout\ : std_logic;
SIGNAL \inst2|inst2|2~q\ : std_logic;
SIGNAL \inst2|inst2|2~clkctrl_outclk\ : std_logic;
SIGNAL \inst2|inst3|5~0_combout\ : std_logic;
SIGNAL \inst2|inst3|5~q\ : std_logic;
SIGNAL \inst2|inst3|3~0_combout\ : std_logic;
SIGNAL \inst2|inst3|3~feeder_combout\ : std_logic;
SIGNAL \inst2|inst3|3~q\ : std_logic;
SIGNAL \inst2|inst3|1~0_combout\ : std_logic;
SIGNAL \inst2|inst3|1~q\ : std_logic;
SIGNAL \inst2|inst3|2~0_combout\ : std_logic;
SIGNAL \inst2|inst3|2~feeder_combout\ : std_logic;
SIGNAL \inst2|inst3|2~q\ : std_logic;
SIGNAL \inst2|inst3|2~clkctrl_outclk\ : std_logic;
SIGNAL \inst2|inst4|5~0_combout\ : std_logic;
SIGNAL \inst2|inst4|5~q\ : std_logic;
SIGNAL \inst2|inst4|3~0_combout\ : std_logic;
SIGNAL \inst2|inst4|3~feeder_combout\ : std_logic;
SIGNAL \inst2|inst4|3~q\ : std_logic;
SIGNAL \inst2|inst4|1~0_combout\ : std_logic;
SIGNAL \inst2|inst4|1~q\ : std_logic;
SIGNAL \inst2|inst4|2~0_combout\ : std_logic;
SIGNAL \inst2|inst4|2~feeder_combout\ : std_logic;
SIGNAL \inst2|inst4|2~q\ : std_logic;
SIGNAL \inst2|inst4|2~clkctrl_outclk\ : std_logic;
SIGNAL \inst2|inst5|5~0_combout\ : std_logic;
SIGNAL \inst2|inst5|5~q\ : std_logic;
SIGNAL \inst2|inst5|3~0_combout\ : std_logic;
SIGNAL \inst2|inst5|3~feeder_combout\ : std_logic;
SIGNAL \inst2|inst5|3~q\ : std_logic;
SIGNAL \inst2|inst5|1~0_combout\ : std_logic;
SIGNAL \inst2|inst5|1~q\ : std_logic;
SIGNAL \inst2|inst5|2~0_combout\ : std_logic;
SIGNAL \inst2|inst5|2~feeder_combout\ : std_logic;
SIGNAL \inst2|inst5|2~q\ : std_logic;
SIGNAL \inst2|inst5|2~clkctrl_outclk\ : std_logic;
SIGNAL \inst2|inst6|5~0_combout\ : std_logic;
SIGNAL \inst2|inst6|5~q\ : std_logic;
SIGNAL \inst2|inst6|3~0_combout\ : std_logic;
SIGNAL \inst2|inst6|3~feeder_combout\ : std_logic;
SIGNAL \inst2|inst6|3~q\ : std_logic;
SIGNAL \inst2|inst6|1~0_combout\ : std_logic;
SIGNAL \inst2|inst6|1~q\ : std_logic;
SIGNAL \inst2|inst6|2~0_combout\ : std_logic;
SIGNAL \inst2|inst6|2~feeder_combout\ : std_logic;
SIGNAL \inst2|inst6|2~q\ : std_logic;
SIGNAL \inst2|inst6|2~clkctrl_outclk\ : std_logic;
SIGNAL \inst|count[2]~5_combout\ : std_logic;
SIGNAL \mov[0]~input_o\ : std_logic;
SIGNAL \mov[1]~input_o\ : std_logic;
SIGNAL \inst|count~2_combout\ : std_logic;
SIGNAL \inst|count~0_combout\ : std_logic;
SIGNAL \inst|count~3_combout\ : std_logic;
SIGNAL \inst|count~1_combout\ : std_logic;
SIGNAL \inst|Mux1~0_combout\ : std_logic;
SIGNAL \inst|Mux1~1_combout\ : std_logic;
SIGNAL \inst|Mux1~2_combout\ : std_logic;
SIGNAL \inst|Mux1~3_combout\ : std_logic;
SIGNAL \inst|Mux1~4_combout\ : std_logic;
SIGNAL \inst|count\ : std_logic_vector(0 TO 2);

BEGIN

o <= ww_o;
ww_clk <= clk;
ww_mov <= mov;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst2|inst|2~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst2|inst|2~q\);

\inst2|inst6|2~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst2|inst6|2~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\inst2|inst1|2~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst2|inst1|2~q\);

\inst2|inst3|2~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst2|inst3|2~q\);

\inst2|inst2|2~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst2|inst2|2~q\);

\inst2|inst4|2~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst2|inst4|2~q\);

\inst2|inst5|2~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst2|inst5|2~q\);

-- Location: IOOBUF_X33_Y11_N2
\o[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \o[4]~output_o\);

-- Location: IOOBUF_X33_Y10_N9
\o[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux1~1_combout\,
	devoe => ww_devoe,
	o => \o[3]~output_o\);

-- Location: IOOBUF_X33_Y14_N2
\o[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux1~2_combout\,
	devoe => ww_devoe,
	o => \o[2]~output_o\);

-- Location: IOOBUF_X33_Y12_N9
\o[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux1~3_combout\,
	devoe => ww_devoe,
	o => \o[1]~output_o\);

-- Location: IOOBUF_X33_Y12_N2
\o[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux1~4_combout\,
	devoe => ww_devoe,
	o => \o[0]~output_o\);

-- Location: IOIBUF_X16_Y0_N15
\clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G17
\clk~inputclkctrl\ : cycloneiv_clkctrl
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

-- Location: LCCOMB_X1_Y15_N14
\inst2|inst|5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst|5~0_combout\ = !\inst2|inst|5~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst|5~q\,
	combout => \inst2|inst|5~0_combout\);

-- Location: FF_X1_Y15_N15
\inst2|inst|5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|inst|5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|5~q\);

-- Location: LCCOMB_X1_Y15_N24
\inst2|inst|3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst|3~0_combout\ = \inst2|inst|3~q\ $ (((!\inst2|inst|2~q\ & \inst2|inst|5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|2~q\,
	datac => \inst2|inst|5~q\,
	datad => \inst2|inst|3~q\,
	combout => \inst2|inst|3~0_combout\);

-- Location: LCCOMB_X1_Y15_N20
\inst2|inst|3~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst|3~feeder_combout\ = \inst2|inst|3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|3~0_combout\,
	combout => \inst2|inst|3~feeder_combout\);

-- Location: FF_X1_Y15_N21
\inst2|inst|3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|inst|3~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|3~q\);

-- Location: LCCOMB_X1_Y15_N26
\inst2|inst|1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst|1~0_combout\ = \inst2|inst|1~q\ $ (((\inst2|inst|3~q\ & \inst2|inst|5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|3~q\,
	datac => \inst2|inst|1~q\,
	datad => \inst2|inst|5~q\,
	combout => \inst2|inst|1~0_combout\);

-- Location: FF_X1_Y15_N27
\inst2|inst|1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|inst|1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|1~q\);

-- Location: LCCOMB_X1_Y15_N28
\inst2|inst|2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst|2~0_combout\ = (\inst2|inst|2~q\ & (((!\inst2|inst|5~q\)))) # (!\inst2|inst|2~q\ & (\inst2|inst|3~q\ & (\inst2|inst|1~q\ & \inst2|inst|5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|2~q\,
	datab => \inst2|inst|3~q\,
	datac => \inst2|inst|1~q\,
	datad => \inst2|inst|5~q\,
	combout => \inst2|inst|2~0_combout\);

-- Location: LCCOMB_X1_Y15_N16
\inst2|inst|2~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst|2~feeder_combout\ = \inst2|inst|2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|2~0_combout\,
	combout => \inst2|inst|2~feeder_combout\);

-- Location: FF_X1_Y15_N17
\inst2|inst|2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|inst|2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|2~q\);

-- Location: CLKCTRL_G0
\inst2|inst|2~clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst2|inst|2~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst2|inst|2~clkctrl_outclk\);

-- Location: LCCOMB_X1_Y14_N20
\inst2|inst1|5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst1|5~0_combout\ = !\inst2|inst1|5~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst1|5~q\,
	combout => \inst2|inst1|5~0_combout\);

-- Location: FF_X1_Y14_N21
\inst2|inst1|5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|inst|2~clkctrl_outclk\,
	d => \inst2|inst1|5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst1|5~q\);

-- Location: LCCOMB_X1_Y14_N24
\inst2|inst1|3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst1|3~0_combout\ = \inst2|inst1|3~q\ $ (((!\inst2|inst1|2~q\ & \inst2|inst1|5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst1|2~q\,
	datac => \inst2|inst1|5~q\,
	datad => \inst2|inst1|3~q\,
	combout => \inst2|inst1|3~0_combout\);

-- Location: LCCOMB_X1_Y14_N18
\inst2|inst1|3~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst1|3~feeder_combout\ = \inst2|inst1|3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst1|3~0_combout\,
	combout => \inst2|inst1|3~feeder_combout\);

-- Location: FF_X1_Y14_N19
\inst2|inst1|3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|inst|2~clkctrl_outclk\,
	d => \inst2|inst1|3~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst1|3~q\);

-- Location: LCCOMB_X1_Y14_N30
\inst2|inst1|1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst1|1~0_combout\ = \inst2|inst1|1~q\ $ (((\inst2|inst1|3~q\ & \inst2|inst1|5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst1|3~q\,
	datac => \inst2|inst1|1~q\,
	datad => \inst2|inst1|5~q\,
	combout => \inst2|inst1|1~0_combout\);

-- Location: FF_X1_Y14_N31
\inst2|inst1|1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|inst|2~clkctrl_outclk\,
	d => \inst2|inst1|1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst1|1~q\);

-- Location: LCCOMB_X1_Y14_N28
\inst2|inst1|2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst1|2~0_combout\ = (\inst2|inst1|2~q\ & (((!\inst2|inst1|5~q\)))) # (!\inst2|inst1|2~q\ & (\inst2|inst1|3~q\ & (\inst2|inst1|1~q\ & \inst2|inst1|5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|2~q\,
	datab => \inst2|inst1|3~q\,
	datac => \inst2|inst1|1~q\,
	datad => \inst2|inst1|5~q\,
	combout => \inst2|inst1|2~0_combout\);

-- Location: LCCOMB_X1_Y14_N22
\inst2|inst1|2~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst1|2~feeder_combout\ = \inst2|inst1|2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst1|2~0_combout\,
	combout => \inst2|inst1|2~feeder_combout\);

-- Location: FF_X1_Y14_N23
\inst2|inst1|2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|inst|2~clkctrl_outclk\,
	d => \inst2|inst1|2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst1|2~q\);

-- Location: CLKCTRL_G3
\inst2|inst1|2~clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst2|inst1|2~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst2|inst1|2~clkctrl_outclk\);

-- Location: LCCOMB_X15_Y1_N30
\inst2|inst2|5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst2|5~0_combout\ = !\inst2|inst2|5~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst2|5~q\,
	combout => \inst2|inst2|5~0_combout\);

-- Location: FF_X15_Y1_N31
\inst2|inst2|5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|inst1|2~clkctrl_outclk\,
	d => \inst2|inst2|5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst2|5~q\);

-- Location: LCCOMB_X15_Y1_N28
\inst2|inst2|3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst2|3~0_combout\ = \inst2|inst2|3~q\ $ (((!\inst2|inst2|2~q\ & \inst2|inst2|5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst2|2~q\,
	datac => \inst2|inst2|5~q\,
	datad => \inst2|inst2|3~q\,
	combout => \inst2|inst2|3~0_combout\);

-- Location: LCCOMB_X15_Y1_N24
\inst2|inst2|3~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst2|3~feeder_combout\ = \inst2|inst2|3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst2|3~0_combout\,
	combout => \inst2|inst2|3~feeder_combout\);

-- Location: FF_X15_Y1_N25
\inst2|inst2|3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|inst1|2~clkctrl_outclk\,
	d => \inst2|inst2|3~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst2|3~q\);

-- Location: LCCOMB_X15_Y1_N26
\inst2|inst2|1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst2|1~0_combout\ = \inst2|inst2|1~q\ $ (((\inst2|inst2|3~q\ & \inst2|inst2|5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst2|3~q\,
	datac => \inst2|inst2|1~q\,
	datad => \inst2|inst2|5~q\,
	combout => \inst2|inst2|1~0_combout\);

-- Location: FF_X15_Y1_N27
\inst2|inst2|1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|inst1|2~clkctrl_outclk\,
	d => \inst2|inst2|1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst2|1~q\);

-- Location: LCCOMB_X15_Y1_N10
\inst2|inst2|2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst2|2~0_combout\ = (\inst2|inst2|2~q\ & (((!\inst2|inst2|5~q\)))) # (!\inst2|inst2|2~q\ & (\inst2|inst2|3~q\ & (\inst2|inst2|1~q\ & \inst2|inst2|5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst2|2~q\,
	datab => \inst2|inst2|3~q\,
	datac => \inst2|inst2|1~q\,
	datad => \inst2|inst2|5~q\,
	combout => \inst2|inst2|2~0_combout\);

-- Location: LCCOMB_X15_Y1_N20
\inst2|inst2|2~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst2|2~feeder_combout\ = \inst2|inst2|2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst2|2~0_combout\,
	combout => \inst2|inst2|2~feeder_combout\);

-- Location: FF_X15_Y1_N21
\inst2|inst2|2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|inst1|2~clkctrl_outclk\,
	d => \inst2|inst2|2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst2|2~q\);

-- Location: CLKCTRL_G16
\inst2|inst2|2~clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst2|inst2|2~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst2|inst2|2~clkctrl_outclk\);

-- Location: LCCOMB_X15_Y30_N10
\inst2|inst3|5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst3|5~0_combout\ = !\inst2|inst3|5~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst3|5~q\,
	combout => \inst2|inst3|5~0_combout\);

-- Location: FF_X15_Y30_N11
\inst2|inst3|5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|inst2|2~clkctrl_outclk\,
	d => \inst2|inst3|5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst3|5~q\);

-- Location: LCCOMB_X15_Y30_N2
\inst2|inst3|3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst3|3~0_combout\ = \inst2|inst3|3~q\ $ (((\inst2|inst3|5~q\ & !\inst2|inst3|2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst3|5~q\,
	datac => \inst2|inst3|2~q\,
	datad => \inst2|inst3|3~q\,
	combout => \inst2|inst3|3~0_combout\);

-- Location: LCCOMB_X15_Y30_N6
\inst2|inst3|3~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst3|3~feeder_combout\ = \inst2|inst3|3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst3|3~0_combout\,
	combout => \inst2|inst3|3~feeder_combout\);

-- Location: FF_X15_Y30_N7
\inst2|inst3|3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|inst2|2~clkctrl_outclk\,
	d => \inst2|inst3|3~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst3|3~q\);

-- Location: LCCOMB_X15_Y30_N4
\inst2|inst3|1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst3|1~0_combout\ = \inst2|inst3|1~q\ $ (((\inst2|inst3|3~q\ & \inst2|inst3|5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst3|3~q\,
	datac => \inst2|inst3|1~q\,
	datad => \inst2|inst3|5~q\,
	combout => \inst2|inst3|1~0_combout\);

-- Location: FF_X15_Y30_N5
\inst2|inst3|1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|inst2|2~clkctrl_outclk\,
	d => \inst2|inst3|1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst3|1~q\);

-- Location: LCCOMB_X15_Y30_N0
\inst2|inst3|2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst3|2~0_combout\ = (\inst2|inst3|2~q\ & (((!\inst2|inst3|5~q\)))) # (!\inst2|inst3|2~q\ & (\inst2|inst3|3~q\ & (\inst2|inst3|1~q\ & \inst2|inst3|5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst3|3~q\,
	datab => \inst2|inst3|2~q\,
	datac => \inst2|inst3|1~q\,
	datad => \inst2|inst3|5~q\,
	combout => \inst2|inst3|2~0_combout\);

-- Location: LCCOMB_X15_Y30_N18
\inst2|inst3|2~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst3|2~feeder_combout\ = \inst2|inst3|2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst3|2~0_combout\,
	combout => \inst2|inst3|2~feeder_combout\);

-- Location: FF_X15_Y30_N19
\inst2|inst3|2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|inst2|2~clkctrl_outclk\,
	d => \inst2|inst3|2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst3|2~q\);

-- Location: CLKCTRL_G11
\inst2|inst3|2~clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst2|inst3|2~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst2|inst3|2~clkctrl_outclk\);

-- Location: LCCOMB_X16_Y1_N30
\inst2|inst4|5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst4|5~0_combout\ = !\inst2|inst4|5~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst4|5~q\,
	combout => \inst2|inst4|5~0_combout\);

-- Location: FF_X16_Y1_N31
\inst2|inst4|5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|inst3|2~clkctrl_outclk\,
	d => \inst2|inst4|5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst4|5~q\);

-- Location: LCCOMB_X16_Y1_N10
\inst2|inst4|3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst4|3~0_combout\ = \inst2|inst4|3~q\ $ (((!\inst2|inst4|2~q\ & \inst2|inst4|5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst4|2~q\,
	datac => \inst2|inst4|5~q\,
	datad => \inst2|inst4|3~q\,
	combout => \inst2|inst4|3~0_combout\);

-- Location: LCCOMB_X16_Y1_N18
\inst2|inst4|3~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst4|3~feeder_combout\ = \inst2|inst4|3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst4|3~0_combout\,
	combout => \inst2|inst4|3~feeder_combout\);

-- Location: FF_X16_Y1_N19
\inst2|inst4|3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|inst3|2~clkctrl_outclk\,
	d => \inst2|inst4|3~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst4|3~q\);

-- Location: LCCOMB_X16_Y1_N26
\inst2|inst4|1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst4|1~0_combout\ = \inst2|inst4|1~q\ $ (((\inst2|inst4|3~q\ & \inst2|inst4|5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst4|3~q\,
	datac => \inst2|inst4|1~q\,
	datad => \inst2|inst4|5~q\,
	combout => \inst2|inst4|1~0_combout\);

-- Location: FF_X16_Y1_N27
\inst2|inst4|1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|inst3|2~clkctrl_outclk\,
	d => \inst2|inst4|1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst4|1~q\);

-- Location: LCCOMB_X16_Y1_N6
\inst2|inst4|2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst4|2~0_combout\ = (\inst2|inst4|2~q\ & (((!\inst2|inst4|5~q\)))) # (!\inst2|inst4|2~q\ & (\inst2|inst4|3~q\ & (\inst2|inst4|1~q\ & \inst2|inst4|5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst4|2~q\,
	datab => \inst2|inst4|3~q\,
	datac => \inst2|inst4|1~q\,
	datad => \inst2|inst4|5~q\,
	combout => \inst2|inst4|2~0_combout\);

-- Location: LCCOMB_X16_Y1_N28
\inst2|inst4|2~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst4|2~feeder_combout\ = \inst2|inst4|2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst4|2~0_combout\,
	combout => \inst2|inst4|2~feeder_combout\);

-- Location: FF_X16_Y1_N29
\inst2|inst4|2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|inst3|2~clkctrl_outclk\,
	d => \inst2|inst4|2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst4|2~q\);

-- Location: CLKCTRL_G18
\inst2|inst4|2~clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst2|inst4|2~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst2|inst4|2~clkctrl_outclk\);

-- Location: LCCOMB_X16_Y30_N20
\inst2|inst5|5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst5|5~0_combout\ = !\inst2|inst5|5~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst5|5~q\,
	combout => \inst2|inst5|5~0_combout\);

-- Location: FF_X16_Y30_N21
\inst2|inst5|5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|inst4|2~clkctrl_outclk\,
	d => \inst2|inst5|5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst5|5~q\);

-- Location: LCCOMB_X16_Y30_N18
\inst2|inst5|3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst5|3~0_combout\ = \inst2|inst5|3~q\ $ (((!\inst2|inst5|2~q\ & \inst2|inst5|5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst5|2~q\,
	datab => \inst2|inst5|5~q\,
	datad => \inst2|inst5|3~q\,
	combout => \inst2|inst5|3~0_combout\);

-- Location: LCCOMB_X16_Y30_N10
\inst2|inst5|3~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst5|3~feeder_combout\ = \inst2|inst5|3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst5|3~0_combout\,
	combout => \inst2|inst5|3~feeder_combout\);

-- Location: FF_X16_Y30_N11
\inst2|inst5|3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|inst4|2~clkctrl_outclk\,
	d => \inst2|inst5|3~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst5|3~q\);

-- Location: LCCOMB_X16_Y30_N14
\inst2|inst5|1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst5|1~0_combout\ = \inst2|inst5|1~q\ $ (((\inst2|inst5|3~q\ & \inst2|inst5|5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst5|3~q\,
	datac => \inst2|inst5|1~q\,
	datad => \inst2|inst5|5~q\,
	combout => \inst2|inst5|1~0_combout\);

-- Location: FF_X16_Y30_N15
\inst2|inst5|1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|inst4|2~clkctrl_outclk\,
	d => \inst2|inst5|1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst5|1~q\);

-- Location: LCCOMB_X16_Y30_N28
\inst2|inst5|2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst5|2~0_combout\ = (\inst2|inst5|2~q\ & (((!\inst2|inst5|5~q\)))) # (!\inst2|inst5|2~q\ & (\inst2|inst5|3~q\ & (\inst2|inst5|1~q\ & \inst2|inst5|5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst5|3~q\,
	datab => \inst2|inst5|2~q\,
	datac => \inst2|inst5|1~q\,
	datad => \inst2|inst5|5~q\,
	combout => \inst2|inst5|2~0_combout\);

-- Location: LCCOMB_X16_Y30_N12
\inst2|inst5|2~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst5|2~feeder_combout\ = \inst2|inst5|2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst5|2~0_combout\,
	combout => \inst2|inst5|2~feeder_combout\);

-- Location: FF_X16_Y30_N13
\inst2|inst5|2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|inst4|2~clkctrl_outclk\,
	d => \inst2|inst5|2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst5|2~q\);

-- Location: CLKCTRL_G12
\inst2|inst5|2~clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst2|inst5|2~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst2|inst5|2~clkctrl_outclk\);

-- Location: LCCOMB_X17_Y30_N10
\inst2|inst6|5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst6|5~0_combout\ = !\inst2|inst6|5~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst6|5~q\,
	combout => \inst2|inst6|5~0_combout\);

-- Location: FF_X17_Y30_N11
\inst2|inst6|5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|inst5|2~clkctrl_outclk\,
	d => \inst2|inst6|5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|5~q\);

-- Location: LCCOMB_X17_Y30_N24
\inst2|inst6|3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst6|3~0_combout\ = \inst2|inst6|3~q\ $ (((\inst2|inst6|5~q\ & !\inst2|inst6|2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst6|5~q\,
	datac => \inst2|inst6|2~q\,
	datad => \inst2|inst6|3~q\,
	combout => \inst2|inst6|3~0_combout\);

-- Location: LCCOMB_X17_Y30_N6
\inst2|inst6|3~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst6|3~feeder_combout\ = \inst2|inst6|3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst6|3~0_combout\,
	combout => \inst2|inst6|3~feeder_combout\);

-- Location: FF_X17_Y30_N7
\inst2|inst6|3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|inst5|2~clkctrl_outclk\,
	d => \inst2|inst6|3~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|3~q\);

-- Location: LCCOMB_X17_Y30_N30
\inst2|inst6|1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst6|1~0_combout\ = \inst2|inst6|1~q\ $ (((\inst2|inst6|3~q\ & \inst2|inst6|5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst6|3~q\,
	datac => \inst2|inst6|1~q\,
	datad => \inst2|inst6|5~q\,
	combout => \inst2|inst6|1~0_combout\);

-- Location: FF_X17_Y30_N31
\inst2|inst6|1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|inst5|2~clkctrl_outclk\,
	d => \inst2|inst6|1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|1~q\);

-- Location: LCCOMB_X17_Y30_N28
\inst2|inst6|2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst6|2~0_combout\ = (\inst2|inst6|2~q\ & (((!\inst2|inst6|5~q\)))) # (!\inst2|inst6|2~q\ & (\inst2|inst6|3~q\ & (\inst2|inst6|1~q\ & \inst2|inst6|5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst6|3~q\,
	datab => \inst2|inst6|2~q\,
	datac => \inst2|inst6|1~q\,
	datad => \inst2|inst6|5~q\,
	combout => \inst2|inst6|2~0_combout\);

-- Location: LCCOMB_X17_Y30_N26
\inst2|inst6|2~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst6|2~feeder_combout\ = \inst2|inst6|2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst6|2~0_combout\,
	combout => \inst2|inst6|2~feeder_combout\);

-- Location: FF_X17_Y30_N27
\inst2|inst6|2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|inst5|2~clkctrl_outclk\,
	d => \inst2|inst6|2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|2~q\);

-- Location: CLKCTRL_G14
\inst2|inst6|2~clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst2|inst6|2~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst2|inst6|2~clkctrl_outclk\);

-- Location: LCCOMB_X32_Y11_N2
\inst|count[2]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|count[2]~5_combout\ = !\inst|count\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|count\(2),
	combout => \inst|count[2]~5_combout\);

-- Location: IOIBUF_X33_Y10_N1
\mov[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mov(0),
	o => \mov[0]~input_o\);

-- Location: IOIBUF_X33_Y11_N8
\mov[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mov(1),
	o => \mov[1]~input_o\);

-- Location: LCCOMB_X32_Y11_N10
\inst|count~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|count~2_combout\ = \mov[0]~input_o\ $ (\mov[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mov[0]~input_o\,
	datad => \mov[1]~input_o\,
	combout => \inst|count~2_combout\);

-- Location: FF_X32_Y11_N3
\inst|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|inst6|2~clkctrl_outclk\,
	d => \inst|count[2]~5_combout\,
	ena => \inst|count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(2));

-- Location: LCCOMB_X32_Y11_N12
\inst|count~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|count~0_combout\ = (\mov[0]~input_o\) # (!\mov[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mov[0]~input_o\,
	datad => \mov[1]~input_o\,
	combout => \inst|count~0_combout\);

-- Location: LCCOMB_X32_Y11_N20
\inst|count~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|count~3_combout\ = \inst|count\(1) $ (\inst|count\(2) $ (((\mov[0]~input_o\) # (!\mov[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001000101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mov[1]~input_o\,
	datab => \mov[0]~input_o\,
	datac => \inst|count\(1),
	datad => \inst|count\(2),
	combout => \inst|count~3_combout\);

-- Location: FF_X32_Y11_N21
\inst|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|inst6|2~clkctrl_outclk\,
	d => \inst|count~3_combout\,
	ena => \inst|count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(1));

-- Location: LCCOMB_X32_Y11_N8
\inst|count~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|count~1_combout\ = \inst|count\(0) $ (((\inst|count~0_combout\ & (!\inst|count\(2) & \inst|count\(1))) # (!\inst|count~0_combout\ & (\inst|count\(2) & !\inst|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count~0_combout\,
	datab => \inst|count\(2),
	datac => \inst|count\(0),
	datad => \inst|count\(1),
	combout => \inst|count~1_combout\);

-- Location: FF_X32_Y11_N9
\inst|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|inst6|2~clkctrl_outclk\,
	d => \inst|count~1_combout\,
	ena => \inst|count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(0));

-- Location: LCCOMB_X32_Y11_N22
\inst|Mux1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Mux1~0_combout\ = (!\inst|count\(2) & (!\inst|count\(0) & !\inst|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(2),
	datac => \inst|count\(0),
	datad => \inst|count\(1),
	combout => \inst|Mux1~0_combout\);

-- Location: LCCOMB_X32_Y11_N24
\inst|Mux1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Mux1~1_combout\ = (\inst|count\(2) & (!\inst|count\(0) & \inst|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(2),
	datac => \inst|count\(0),
	datad => \inst|count\(1),
	combout => \inst|Mux1~1_combout\);

-- Location: LCCOMB_X32_Y11_N18
\inst|Mux1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Mux1~2_combout\ = (!\inst|count\(2) & (!\inst|count\(0) & \inst|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(2),
	datac => \inst|count\(0),
	datad => \inst|count\(1),
	combout => \inst|Mux1~2_combout\);

-- Location: LCCOMB_X32_Y11_N0
\inst|Mux1~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Mux1~3_combout\ = (\inst|count\(2) & (\inst|count\(0) & !\inst|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(2),
	datac => \inst|count\(0),
	datad => \inst|count\(1),
	combout => \inst|Mux1~3_combout\);

-- Location: LCCOMB_X32_Y11_N14
\inst|Mux1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Mux1~4_combout\ = (!\inst|count\(2) & (\inst|count\(0) & !\inst|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(2),
	datac => \inst|count\(0),
	datad => \inst|count\(1),
	combout => \inst|Mux1~4_combout\);

ww_o(4) <= \o[4]~output_o\;

ww_o(3) <= \o[3]~output_o\;

ww_o(2) <= \o[2]~output_o\;

ww_o(1) <= \o[1]~output_o\;

ww_o(0) <= \o[0]~output_o\;
END structure;


