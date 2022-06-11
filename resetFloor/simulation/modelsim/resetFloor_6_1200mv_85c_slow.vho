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

-- DATE "06/11/2022 19:09:33"

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

ENTITY 	resetFloor IS
    PORT (
	is_clean : IN std_logic;
	next_floor : IN std_logic_vector(2 DOWNTO 0);
	reset_floor : OUT std_logic_vector(4 DOWNTO 0)
	);
END resetFloor;

-- Design Ports Information
-- reset_floor[0]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_floor[1]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_floor[2]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_floor[3]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_floor[4]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_floor[2]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_floor[0]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_floor[1]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- is_clean	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF resetFloor IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_is_clean : std_logic;
SIGNAL ww_next_floor : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_reset_floor : std_logic_vector(4 DOWNTO 0);
SIGNAL \is_clean~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset_floor[0]~output_o\ : std_logic;
SIGNAL \reset_floor[1]~output_o\ : std_logic;
SIGNAL \reset_floor[2]~output_o\ : std_logic;
SIGNAL \reset_floor[3]~output_o\ : std_logic;
SIGNAL \reset_floor[4]~output_o\ : std_logic;
SIGNAL \next_floor[0]~input_o\ : std_logic;
SIGNAL \next_floor[2]~input_o\ : std_logic;
SIGNAL \next_floor[1]~input_o\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \is_clean~input_o\ : std_logic;
SIGNAL \is_clean~inputclkctrl_outclk\ : std_logic;
SIGNAL \reset_floor[0]$latch~combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \reset_floor[1]$latch~combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \reset_floor[2]$latch~combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \reset_floor[3]$latch~combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \reset_floor[4]$latch~combout\ : std_logic;

BEGIN

ww_is_clean <= is_clean;
ww_next_floor <= next_floor;
reset_floor <= ww_reset_floor;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\is_clean~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \is_clean~input_o\);

-- Location: IOOBUF_X12_Y0_N9
\reset_floor[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reset_floor[0]$latch~combout\,
	devoe => ww_devoe,
	o => \reset_floor[0]~output_o\);

-- Location: IOOBUF_X8_Y0_N9
\reset_floor[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reset_floor[1]$latch~combout\,
	devoe => ww_devoe,
	o => \reset_floor[1]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\reset_floor[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reset_floor[2]$latch~combout\,
	devoe => ww_devoe,
	o => \reset_floor[2]~output_o\);

-- Location: IOOBUF_X10_Y0_N9
\reset_floor[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reset_floor[3]$latch~combout\,
	devoe => ww_devoe,
	o => \reset_floor[3]~output_o\);

-- Location: IOOBUF_X8_Y0_N2
\reset_floor[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reset_floor[4]$latch~combout\,
	devoe => ww_devoe,
	o => \reset_floor[4]~output_o\);

-- Location: IOIBUF_X12_Y0_N1
\next_floor[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_next_floor(0),
	o => \next_floor[0]~input_o\);

-- Location: IOIBUF_X22_Y0_N8
\next_floor[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_next_floor(2),
	o => \next_floor[2]~input_o\);

-- Location: IOIBUF_X29_Y0_N1
\next_floor[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_next_floor(1),
	o => \next_floor[1]~input_o\);

-- Location: LCCOMB_X11_Y1_N16
\Mux4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (!\next_floor[0]~input_o\ & (!\next_floor[2]~input_o\ & !\next_floor[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \next_floor[0]~input_o\,
	datab => \next_floor[2]~input_o\,
	datac => \next_floor[1]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: IOIBUF_X16_Y0_N15
\is_clean~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_is_clean,
	o => \is_clean~input_o\);

-- Location: CLKCTRL_G17
\is_clean~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \is_clean~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \is_clean~inputclkctrl_outclk\);

-- Location: LCCOMB_X11_Y1_N18
\reset_floor[0]$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reset_floor[0]$latch~combout\ = (GLOBAL(\is_clean~inputclkctrl_outclk\) & (\Mux4~0_combout\)) # (!GLOBAL(\is_clean~inputclkctrl_outclk\) & ((\reset_floor[0]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux4~0_combout\,
	datac => \is_clean~inputclkctrl_outclk\,
	datad => \reset_floor[0]$latch~combout\,
	combout => \reset_floor[0]$latch~combout\);

-- Location: LCCOMB_X11_Y1_N10
\Mux3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\next_floor[0]~input_o\ & (!\next_floor[2]~input_o\ & !\next_floor[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \next_floor[0]~input_o\,
	datab => \next_floor[2]~input_o\,
	datac => \next_floor[1]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X11_Y1_N20
\reset_floor[1]$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reset_floor[1]$latch~combout\ = (GLOBAL(\is_clean~inputclkctrl_outclk\) & (\Mux3~0_combout\)) # (!GLOBAL(\is_clean~inputclkctrl_outclk\) & ((\reset_floor[1]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~0_combout\,
	datab => \reset_floor[1]$latch~combout\,
	datad => \is_clean~inputclkctrl_outclk\,
	combout => \reset_floor[1]$latch~combout\);

-- Location: LCCOMB_X11_Y1_N12
\Mux2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (!\next_floor[0]~input_o\ & (!\next_floor[2]~input_o\ & \next_floor[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \next_floor[0]~input_o\,
	datab => \next_floor[2]~input_o\,
	datac => \next_floor[1]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X11_Y1_N22
\reset_floor[2]$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reset_floor[2]$latch~combout\ = (GLOBAL(\is_clean~inputclkctrl_outclk\) & (\Mux2~0_combout\)) # (!GLOBAL(\is_clean~inputclkctrl_outclk\) & ((\reset_floor[2]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datac => \reset_floor[2]$latch~combout\,
	datad => \is_clean~inputclkctrl_outclk\,
	combout => \reset_floor[2]$latch~combout\);

-- Location: LCCOMB_X11_Y1_N30
\Mux1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\next_floor[0]~input_o\ & (!\next_floor[2]~input_o\ & \next_floor[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \next_floor[0]~input_o\,
	datab => \next_floor[2]~input_o\,
	datac => \next_floor[1]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X11_Y1_N8
\reset_floor[3]$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reset_floor[3]$latch~combout\ = (GLOBAL(\is_clean~inputclkctrl_outclk\) & (\Mux1~0_combout\)) # (!GLOBAL(\is_clean~inputclkctrl_outclk\) & ((\reset_floor[3]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~0_combout\,
	datac => \reset_floor[3]$latch~combout\,
	datad => \is_clean~inputclkctrl_outclk\,
	combout => \reset_floor[3]$latch~combout\);

-- Location: LCCOMB_X11_Y1_N24
\Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (!\next_floor[0]~input_o\ & (\next_floor[2]~input_o\ & !\next_floor[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \next_floor[0]~input_o\,
	datab => \next_floor[2]~input_o\,
	datac => \next_floor[1]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X11_Y1_N26
\reset_floor[4]$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reset_floor[4]$latch~combout\ = (GLOBAL(\is_clean~inputclkctrl_outclk\) & (\Mux0~0_combout\)) # (!GLOBAL(\is_clean~inputclkctrl_outclk\) & ((\reset_floor[4]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux0~0_combout\,
	datac => \reset_floor[4]$latch~combout\,
	datad => \is_clean~inputclkctrl_outclk\,
	combout => \reset_floor[4]$latch~combout\);

ww_reset_floor(0) <= \reset_floor[0]~output_o\;

ww_reset_floor(1) <= \reset_floor[1]~output_o\;

ww_reset_floor(2) <= \reset_floor[2]~output_o\;

ww_reset_floor(3) <= \reset_floor[3]~output_o\;

ww_reset_floor(4) <= \reset_floor[4]~output_o\;
END structure;


