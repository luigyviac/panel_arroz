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

-- DATE "02/27/2025 14:16:43"

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

ENTITY 	panel_arroz IS
    PORT (
	a : IN std_logic;
	b : IN std_logic;
	c : OUT std_logic;
	d : OUT std_logic;
	e : OUT std_logic
	);
END panel_arroz;

-- Design Ports Information
-- c	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF panel_arroz IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic;
SIGNAL ww_b : std_logic;
SIGNAL ww_c : std_logic;
SIGNAL ww_d : std_logic;
SIGNAL ww_e : std_logic;
SIGNAL \c~output_o\ : std_logic;
SIGNAL \d~output_o\ : std_logic;
SIGNAL \e~output_o\ : std_logic;
SIGNAL \a~input_o\ : std_logic;
SIGNAL \b~input_o\ : std_logic;
SIGNAL \c~0_combout\ : std_logic;
SIGNAL \d~0_combout\ : std_logic;
SIGNAL \ALT_INV_d~0_combout\ : std_logic;

BEGIN

ww_a <= a;
ww_b <= b;
c <= ww_c;
d <= ww_d;
e <= ww_e;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_d~0_combout\ <= NOT \d~0_combout\;

-- Location: IOOBUF_X0_Y20_N9
\c~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c~0_combout\,
	devoe => ww_devoe,
	o => \c~output_o\);

-- Location: IOOBUF_X0_Y22_N2
\d~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_d~0_combout\,
	devoe => ww_devoe,
	o => \d~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\e~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_d~0_combout\,
	devoe => ww_devoe,
	o => \e~output_o\);

-- Location: IOIBUF_X0_Y8_N22
\a~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a,
	o => \a~input_o\);

-- Location: IOIBUF_X0_Y21_N8
\b~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b,
	o => \b~input_o\);

-- Location: LCCOMB_X2_Y20_N16
\c~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \c~0_combout\ = (!\b~input_o\) # (!\a~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a~input_o\,
	datad => \b~input_o\,
	combout => \c~0_combout\);

-- Location: LCCOMB_X2_Y20_N26
\d~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \d~0_combout\ = (\a~input_o\) # (\b~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a~input_o\,
	datad => \b~input_o\,
	combout => \d~0_combout\);

ww_c <= \c~output_o\;

ww_d <= \d~output_o\;

ww_e <= \e~output_o\;
END structure;


