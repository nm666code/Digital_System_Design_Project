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

-- DATE "06/11/2022 17:12:14"

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

ENTITY 	doorswitch IS
    PORT (
	is_clean : IN std_logic;
	clk : IN std_logic;
	setOpen : BUFFER std_logic;
	setClose : BUFFER std_logic
	);
END doorswitch;

-- Design Ports Information
-- is_clean	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- setOpen	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- setClose	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF doorswitch IS
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
SIGNAL ww_clk : std_logic;
SIGNAL ww_setOpen : std_logic;
SIGNAL ww_setClose : std_logic;
SIGNAL \is_clean~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \setOpen~output_o\ : std_logic;
SIGNAL \setClose~output_o\ : std_logic;

BEGIN

ww_is_clean <= is_clean;
ww_clk <= clk;
setOpen <= ww_setOpen;
setClose <= ww_setClose;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X29_Y0_N2
\setOpen~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \setOpen~output_o\);

-- Location: IOOBUF_X12_Y31_N2
\setClose~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \setClose~output_o\);

-- Location: IOIBUF_X10_Y0_N8
\is_clean~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_is_clean,
	o => \is_clean~input_o\);

-- Location: IOIBUF_X33_Y28_N8
\clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

ww_setOpen <= \setOpen~output_o\;

ww_setClose <= \setClose~output_o\;
END structure;


