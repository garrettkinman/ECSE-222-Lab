-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.0.0 Build 614 04/24/2018 SJ Lite Edition"

-- DATE "03/12/2019 01:02:39"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	g34_adder IS
    PORT (
	A : IN std_logic_vector(4 DOWNTO 0);
	B : IN std_logic_vector(4 DOWNTO 0);
	decoded_A : OUT std_logic_vector(13 DOWNTO 0);
	decoded_B : OUT std_logic_vector(13 DOWNTO 0);
	decoded_AplusB : OUT std_logic_vector(13 DOWNTO 0)
	);
END g34_adder;

-- Design Ports Information
-- decoded_A[0]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_A[1]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_A[2]	=>  Location: PIN_AJ17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_A[3]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_A[4]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_A[5]	=>  Location: PIN_AH20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_A[6]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_A[7]	=>  Location: PIN_AK22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_A[8]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_A[9]	=>  Location: PIN_AJ24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_A[10]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_A[11]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_A[12]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_A[13]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_B[0]	=>  Location: PIN_AK14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_B[1]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_B[2]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_B[3]	=>  Location: PIN_AJ16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_B[4]	=>  Location: PIN_AK19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_B[5]	=>  Location: PIN_AG16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_B[6]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_B[7]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_B[8]	=>  Location: PIN_F6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_B[9]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_B[10]	=>  Location: PIN_AH15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_B[11]	=>  Location: PIN_AJ14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_B[12]	=>  Location: PIN_AJ12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_B[13]	=>  Location: PIN_AG15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_AplusB[0]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_AplusB[1]	=>  Location: PIN_AJ20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_AplusB[2]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_AplusB[3]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_AplusB[4]	=>  Location: PIN_AJ19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_AplusB[5]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_AplusB[6]	=>  Location: PIN_AJ21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_AplusB[7]	=>  Location: PIN_AH24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_AplusB[8]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_AplusB[9]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_AplusB[10]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_AplusB[11]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_AplusB[12]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_AplusB[13]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AG20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_AK16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_AK18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF g34_adder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_decoded_A : std_logic_vector(13 DOWNTO 0);
SIGNAL ww_decoded_B : std_logic_vector(13 DOWNTO 0);
SIGNAL ww_decoded_AplusB : std_logic_vector(13 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \sd_A_right|Mux6~0_combout\ : std_logic;
SIGNAL \sd_A_right|Mux5~0_combout\ : std_logic;
SIGNAL \sd_A_right|Mux4~0_combout\ : std_logic;
SIGNAL \sd_A_right|Mux3~0_combout\ : std_logic;
SIGNAL \sd_A_right|Mux2~0_combout\ : std_logic;
SIGNAL \sd_A_right|Mux1~0_combout\ : std_logic;
SIGNAL \sd_A_right|Mux0~0_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \sd_B_right|Mux6~0_combout\ : std_logic;
SIGNAL \sd_B_right|Mux5~0_combout\ : std_logic;
SIGNAL \sd_B_right|Mux4~0_combout\ : std_logic;
SIGNAL \sd_B_right|Mux3~0_combout\ : std_logic;
SIGNAL \sd_B_right|Mux2~0_combout\ : std_logic;
SIGNAL \sd_B_right|Mux1~0_combout\ : std_logic;
SIGNAL \sd_B_right|Mux0~0_combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \sd_AplusB_right|Mux6~0_combout\ : std_logic;
SIGNAL \sd_AplusB_right|Mux5~0_combout\ : std_logic;
SIGNAL \sd_AplusB_right|Mux4~0_combout\ : std_logic;
SIGNAL \sd_AplusB_right|Mux3~0_combout\ : std_logic;
SIGNAL \sd_AplusB_right|Mux2~0_combout\ : std_logic;
SIGNAL \sd_AplusB_right|Mux1~0_combout\ : std_logic;
SIGNAL \sd_AplusB_right|Mux0~0_combout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \sd_AplusB_left|Mux1~0_combout\ : std_logic;
SIGNAL \sd_AplusB_left|Mux1~1_combout\ : std_logic;
SIGNAL \sd_AplusB_left|Mux1~2_combout\ : std_logic;
SIGNAL \ALT_INV_B[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[0]~input_o\ : std_logic;
SIGNAL \sd_AplusB_right|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \sd_B_right|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \sd_A_right|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~1_sumout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
decoded_A <= ww_decoded_A;
decoded_B <= ww_decoded_B;
decoded_AplusB <= ww_decoded_AplusB;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_B[4]~input_o\ <= NOT \B[4]~input_o\;
\ALT_INV_B[3]~input_o\ <= NOT \B[3]~input_o\;
\ALT_INV_B[2]~input_o\ <= NOT \B[2]~input_o\;
\ALT_INV_B[1]~input_o\ <= NOT \B[1]~input_o\;
\ALT_INV_B[0]~input_o\ <= NOT \B[0]~input_o\;
\ALT_INV_A[4]~input_o\ <= NOT \A[4]~input_o\;
\ALT_INV_A[3]~input_o\ <= NOT \A[3]~input_o\;
\ALT_INV_A[2]~input_o\ <= NOT \A[2]~input_o\;
\ALT_INV_A[1]~input_o\ <= NOT \A[1]~input_o\;
\ALT_INV_A[0]~input_o\ <= NOT \A[0]~input_o\;
\sd_AplusB_right|ALT_INV_Mux0~0_combout\ <= NOT \sd_AplusB_right|Mux0~0_combout\;
\sd_B_right|ALT_INV_Mux0~0_combout\ <= NOT \sd_B_right|Mux0~0_combout\;
\sd_A_right|ALT_INV_Mux0~0_combout\ <= NOT \sd_A_right|Mux0~0_combout\;
\ALT_INV_Add0~21_sumout\ <= NOT \Add0~21_sumout\;
\ALT_INV_Add0~17_sumout\ <= NOT \Add0~17_sumout\;
\ALT_INV_Add0~13_sumout\ <= NOT \Add0~13_sumout\;
\ALT_INV_Add0~9_sumout\ <= NOT \Add0~9_sumout\;
\ALT_INV_Add0~5_sumout\ <= NOT \Add0~5_sumout\;
\ALT_INV_Add0~1_sumout\ <= NOT \Add0~1_sumout\;

-- Location: IOOBUF_X56_Y0_N19
\decoded_A[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sd_A_right|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_decoded_A(0));

-- Location: IOOBUF_X50_Y0_N59
\decoded_A[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sd_A_right|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_decoded_A(1));

-- Location: IOOBUF_X58_Y0_N42
\decoded_A[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sd_A_right|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_decoded_A(2));

-- Location: IOOBUF_X50_Y0_N42
\decoded_A[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sd_A_right|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_decoded_A(3));

-- Location: IOOBUF_X52_Y0_N36
\decoded_A[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sd_A_right|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_decoded_A(4));

-- Location: IOOBUF_X54_Y0_N19
\decoded_A[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sd_A_right|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_decoded_A(5));

-- Location: IOOBUF_X56_Y0_N53
\decoded_A[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sd_A_right|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_decoded_A(6));

-- Location: IOOBUF_X68_Y0_N53
\decoded_A[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \A[4]~input_o\,
	devoe => ww_devoe,
	o => ww_decoded_A(7));

-- Location: IOOBUF_X14_Y81_N36
\decoded_A[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_decoded_A(8));

-- Location: IOOBUF_X74_Y0_N76
\decoded_A[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_decoded_A(9));

-- Location: IOOBUF_X66_Y0_N59
\decoded_A[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \A[4]~input_o\,
	devoe => ww_devoe,
	o => ww_decoded_A(10));

-- Location: IOOBUF_X60_Y0_N2
\decoded_A[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \A[4]~input_o\,
	devoe => ww_devoe,
	o => ww_decoded_A(11));

-- Location: IOOBUF_X68_Y0_N2
\decoded_A[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \A[4]~input_o\,
	devoe => ww_devoe,
	o => ww_decoded_A(12));

-- Location: IOOBUF_X2_Y0_N42
\decoded_A[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_decoded_A(13));

-- Location: IOOBUF_X40_Y0_N53
\decoded_B[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sd_B_right|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_decoded_B(0));

-- Location: IOOBUF_X54_Y0_N2
\decoded_B[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sd_B_right|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_decoded_B(1));

-- Location: IOOBUF_X56_Y0_N2
\decoded_B[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sd_B_right|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_decoded_B(2));

-- Location: IOOBUF_X54_Y0_N36
\decoded_B[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sd_B_right|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_decoded_B(3));

-- Location: IOOBUF_X60_Y0_N53
\decoded_B[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sd_B_right|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_decoded_B(4));

-- Location: IOOBUF_X50_Y0_N76
\decoded_B[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sd_B_right|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_decoded_B(5));

-- Location: IOOBUF_X56_Y0_N36
\decoded_B[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sd_B_right|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_decoded_B(6));

-- Location: IOOBUF_X40_Y0_N19
\decoded_B[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \B[4]~input_o\,
	devoe => ww_devoe,
	o => ww_decoded_B(7));

-- Location: IOOBUF_X2_Y81_N93
\decoded_B[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_decoded_B(8));

-- Location: IOOBUF_X70_Y0_N36
\decoded_B[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_decoded_B(9));

-- Location: IOOBUF_X38_Y0_N19
\decoded_B[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \B[4]~input_o\,
	devoe => ww_devoe,
	o => ww_decoded_B(10));

-- Location: IOOBUF_X40_Y0_N36
\decoded_B[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \B[4]~input_o\,
	devoe => ww_devoe,
	o => ww_decoded_B(11));

-- Location: IOOBUF_X38_Y0_N53
\decoded_B[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \B[4]~input_o\,
	devoe => ww_devoe,
	o => ww_decoded_B(12));

-- Location: IOOBUF_X38_Y0_N2
\decoded_B[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_decoded_B(13));

-- Location: IOOBUF_X66_Y0_N93
\decoded_AplusB[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sd_AplusB_right|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_decoded_AplusB(0));

-- Location: IOOBUF_X62_Y0_N36
\decoded_AplusB[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sd_AplusB_right|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_decoded_AplusB(1));

-- Location: IOOBUF_X66_Y0_N76
\decoded_AplusB[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sd_AplusB_right|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_decoded_AplusB(2));

-- Location: IOOBUF_X66_Y0_N42
\decoded_AplusB[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sd_AplusB_right|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_decoded_AplusB(3));

-- Location: IOOBUF_X60_Y0_N36
\decoded_AplusB[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sd_AplusB_right|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_decoded_AplusB(4));

-- Location: IOOBUF_X64_Y0_N2
\decoded_AplusB[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sd_AplusB_right|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_decoded_AplusB(5));

-- Location: IOOBUF_X62_Y0_N53
\decoded_AplusB[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sd_AplusB_right|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_decoded_AplusB(6));

-- Location: IOOBUF_X64_Y0_N53
\decoded_AplusB[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sd_AplusB_left|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_decoded_AplusB(7));

-- Location: IOOBUF_X70_Y0_N2
\decoded_AplusB[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_decoded_AplusB(8));

-- Location: IOOBUF_X62_Y0_N2
\decoded_AplusB[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sd_AplusB_left|Mux1~1_combout\,
	devoe => ww_devoe,
	o => ww_decoded_AplusB(9));

-- Location: IOOBUF_X64_Y0_N36
\decoded_AplusB[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sd_AplusB_left|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_decoded_AplusB(10));

-- Location: IOOBUF_X58_Y0_N76
\decoded_AplusB[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~17_sumout\,
	devoe => ww_devoe,
	o => ww_decoded_AplusB(11));

-- Location: IOOBUF_X64_Y0_N19
\decoded_AplusB[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sd_AplusB_left|Mux1~2_combout\,
	devoe => ww_devoe,
	o => ww_decoded_AplusB(12));

-- Location: IOOBUF_X60_Y0_N19
\decoded_AplusB[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Add0~21_sumout\,
	devoe => ww_devoe,
	o => ww_decoded_AplusB(13));

-- Location: IOIBUF_X52_Y0_N1
\A[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X52_Y0_N18
\A[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X58_Y0_N92
\A[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X62_Y0_N18
\A[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LABCELL_X55_Y1_N48
\sd_A_right|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sd_A_right|Mux6~0_combout\ = ( \A[0]~input_o\ & ( (!\A[3]~input_o\ & (!\A[1]~input_o\ & !\A[2]~input_o\)) # (\A[3]~input_o\ & (!\A[1]~input_o\ $ (!\A[2]~input_o\))) ) ) # ( !\A[0]~input_o\ & ( (!\A[3]~input_o\ & (!\A[1]~input_o\ & \A[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100010010100100101001001010010010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[3]~input_o\,
	datab => \ALT_INV_A[1]~input_o\,
	datac => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \sd_A_right|Mux6~0_combout\);

-- Location: LABCELL_X55_Y1_N51
\sd_A_right|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sd_A_right|Mux5~0_combout\ = ( \A[0]~input_o\ & ( (!\A[3]~input_o\ & (!\A[1]~input_o\ & \A[2]~input_o\)) # (\A[3]~input_o\ & (\A[1]~input_o\)) ) ) # ( !\A[0]~input_o\ & ( (\A[2]~input_o\ & ((\A[1]~input_o\) # (\A[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000111000001110000011100011001000110010001100100011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[3]~input_o\,
	datab => \ALT_INV_A[1]~input_o\,
	datac => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \sd_A_right|Mux5~0_combout\);

-- Location: LABCELL_X55_Y1_N27
\sd_A_right|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sd_A_right|Mux4~0_combout\ = ( \A[0]~input_o\ & ( (\A[3]~input_o\ & (\A[1]~input_o\ & \A[2]~input_o\)) ) ) # ( !\A[0]~input_o\ & ( (!\A[3]~input_o\ & (\A[1]~input_o\ & !\A[2]~input_o\)) # (\A[3]~input_o\ & ((\A[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010100100101001001010010010100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[3]~input_o\,
	datab => \ALT_INV_A[1]~input_o\,
	datac => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \sd_A_right|Mux4~0_combout\);

-- Location: LABCELL_X55_Y1_N33
\sd_A_right|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sd_A_right|Mux3~0_combout\ = ( \A[0]~input_o\ & ( (!\A[1]~input_o\ & (!\A[3]~input_o\ & !\A[2]~input_o\)) # (\A[1]~input_o\ & ((\A[2]~input_o\))) ) ) # ( !\A[0]~input_o\ & ( (!\A[3]~input_o\ & (!\A[1]~input_o\ & \A[2]~input_o\)) # (\A[3]~input_o\ & 
-- (\A[1]~input_o\ & !\A[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110100000000001011010000010100000000011111010000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[3]~input_o\,
	datac => \ALT_INV_A[1]~input_o\,
	datad => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \sd_A_right|Mux3~0_combout\);

-- Location: LABCELL_X55_Y1_N24
\sd_A_right|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sd_A_right|Mux2~0_combout\ = ( \A[0]~input_o\ & ( (!\A[3]~input_o\) # ((!\A[1]~input_o\ & !\A[2]~input_o\)) ) ) # ( !\A[0]~input_o\ & ( (!\A[3]~input_o\ & (!\A[1]~input_o\ & \A[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100011101010111010101110101011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[3]~input_o\,
	datab => \ALT_INV_A[1]~input_o\,
	datac => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \sd_A_right|Mux2~0_combout\);

-- Location: LABCELL_X55_Y1_N36
\sd_A_right|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sd_A_right|Mux1~0_combout\ = ( \A[0]~input_o\ & ( !\A[3]~input_o\ $ (((!\A[1]~input_o\ & \A[2]~input_o\))) ) ) # ( !\A[0]~input_o\ & ( (!\A[3]~input_o\ & (\A[1]~input_o\ & !\A[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000010100110101001101010011010100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[3]~input_o\,
	datab => \ALT_INV_A[1]~input_o\,
	datac => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \sd_A_right|Mux1~0_combout\);

-- Location: LABCELL_X55_Y1_N39
\sd_A_right|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sd_A_right|Mux0~0_combout\ = ( \A[0]~input_o\ & ( (!\A[1]~input_o\ $ (!\A[2]~input_o\)) # (\A[3]~input_o\) ) ) # ( !\A[0]~input_o\ & ( (!\A[3]~input_o\ $ (!\A[2]~input_o\)) # (\A[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111101101111011011110110111101101111101011111010111110101111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[3]~input_o\,
	datab => \ALT_INV_A[1]~input_o\,
	datac => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \sd_A_right|Mux0~0_combout\);

-- Location: IOIBUF_X68_Y0_N18
\A[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X50_Y0_N92
\B[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X54_Y0_N52
\B[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X58_Y0_N58
\B[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X52_Y0_N52
\B[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LABCELL_X55_Y1_N42
\sd_B_right|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sd_B_right|Mux6~0_combout\ = ( \B[3]~input_o\ & ( (\B[0]~input_o\ & (!\B[1]~input_o\ $ (!\B[2]~input_o\))) ) ) # ( !\B[3]~input_o\ & ( (!\B[1]~input_o\ & (!\B[0]~input_o\ $ (!\B[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010010001000010001001000100000010001010001000001000101000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \sd_B_right|Mux6~0_combout\);

-- Location: LABCELL_X55_Y1_N45
\sd_B_right|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sd_B_right|Mux5~0_combout\ = ( \B[3]~input_o\ & ( (!\B[0]~input_o\ & ((\B[2]~input_o\))) # (\B[0]~input_o\ & (\B[1]~input_o\)) ) ) # ( !\B[3]~input_o\ & ( (\B[2]~input_o\ & (!\B[0]~input_o\ $ (!\B[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011010000000000101101000000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \sd_B_right|Mux5~0_combout\);

-- Location: LABCELL_X55_Y1_N18
\sd_B_right|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sd_B_right|Mux4~0_combout\ = ( \B[3]~input_o\ & ( (\B[2]~input_o\ & ((!\B[0]~input_o\) # (\B[1]~input_o\))) ) ) # ( !\B[3]~input_o\ & ( (!\B[0]~input_o\ & (\B[1]~input_o\ & !\B[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000000001000100000000000000000101110110000000010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \sd_B_right|Mux4~0_combout\);

-- Location: LABCELL_X55_Y1_N21
\sd_B_right|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sd_B_right|Mux3~0_combout\ = ( \B[3]~input_o\ & ( (\B[1]~input_o\ & (!\B[0]~input_o\ $ (\B[2]~input_o\))) ) ) # ( !\B[3]~input_o\ & ( (!\B[0]~input_o\ & (!\B[1]~input_o\ & \B[2]~input_o\)) # (\B[0]~input_o\ & (!\B[1]~input_o\ $ (\B[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000010100101010100001010010100001010000001010000101000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \sd_B_right|Mux3~0_combout\);

-- Location: LABCELL_X55_Y1_N54
\sd_B_right|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sd_B_right|Mux2~0_combout\ = ( \B[3]~input_o\ & ( (\B[0]~input_o\ & (!\B[1]~input_o\ & !\B[2]~input_o\)) ) ) # ( !\B[3]~input_o\ & ( ((!\B[1]~input_o\ & \B[2]~input_o\)) # (\B[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111011101010101011101110101000100000000000100010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \sd_B_right|Mux2~0_combout\);

-- Location: LABCELL_X55_Y1_N57
\sd_B_right|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sd_B_right|Mux1~0_combout\ = ( \B[3]~input_o\ & ( (\B[0]~input_o\ & (!\B[1]~input_o\ & \B[2]~input_o\)) ) ) # ( !\B[3]~input_o\ & ( (!\B[0]~input_o\ & (\B[1]~input_o\ & !\B[2]~input_o\)) # (\B[0]~input_o\ & ((!\B[2]~input_o\) # (\B[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000101110001011100010111000100000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \sd_B_right|Mux1~0_combout\);

-- Location: LABCELL_X55_Y1_N30
\sd_B_right|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sd_B_right|Mux0~0_combout\ = ( \B[1]~input_o\ & ( ((!\B[0]~input_o\) # (!\B[2]~input_o\)) # (\B[3]~input_o\) ) ) # ( !\B[1]~input_o\ & ( (!\B[3]~input_o\ & ((\B[2]~input_o\))) # (\B[3]~input_o\ & ((!\B[2]~input_o\) # (\B[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001111001100111100111111111111111100111111111111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \sd_B_right|Mux0~0_combout\);

-- Location: IOIBUF_X38_Y0_N35
\B[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LABCELL_X55_Y1_N0
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( \B[0]~input_o\ ) + ( \A[0]~input_o\ ) + ( !VCC ))
-- \Add0~2\ = CARRY(( \B[0]~input_o\ ) + ( \A[0]~input_o\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[0]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	cin => GND,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: LABCELL_X55_Y1_N3
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( \B[1]~input_o\ ) + ( \A[1]~input_o\ ) + ( \Add0~2\ ))
-- \Add0~6\ = CARRY(( \B[1]~input_o\ ) + ( \A[1]~input_o\ ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[1]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	cin => \Add0~2\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: LABCELL_X55_Y1_N6
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( \B[2]~input_o\ ) + ( \A[2]~input_o\ ) + ( \Add0~6\ ))
-- \Add0~10\ = CARRY(( \B[2]~input_o\ ) + ( \A[2]~input_o\ ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_A[2]~input_o\,
	cin => \Add0~6\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: LABCELL_X55_Y1_N9
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( \B[3]~input_o\ ) + ( \A[3]~input_o\ ) + ( \Add0~10\ ))
-- \Add0~14\ = CARRY(( \B[3]~input_o\ ) + ( \A[3]~input_o\ ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[3]~input_o\,
	datac => \ALT_INV_B[3]~input_o\,
	cin => \Add0~10\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: LABCELL_X61_Y1_N30
\sd_AplusB_right|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sd_AplusB_right|Mux6~0_combout\ = ( !\Add0~9_sumout\ & ( \Add0~5_sumout\ & ( (\Add0~1_sumout\ & \Add0~13_sumout\) ) ) ) # ( \Add0~9_sumout\ & ( !\Add0~5_sumout\ & ( !\Add0~1_sumout\ $ (\Add0~13_sumout\) ) ) ) # ( !\Add0~9_sumout\ & ( !\Add0~5_sumout\ & ( 
-- (\Add0~1_sumout\ & !\Add0~13_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000110011000011001100000000001100110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add0~1_sumout\,
	datad => \ALT_INV_Add0~13_sumout\,
	datae => \ALT_INV_Add0~9_sumout\,
	dataf => \ALT_INV_Add0~5_sumout\,
	combout => \sd_AplusB_right|Mux6~0_combout\);

-- Location: LABCELL_X61_Y1_N39
\sd_AplusB_right|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sd_AplusB_right|Mux5~0_combout\ = ( \Add0~9_sumout\ & ( \Add0~5_sumout\ & ( (!\Add0~1_sumout\) # (\Add0~13_sumout\) ) ) ) # ( !\Add0~9_sumout\ & ( \Add0~5_sumout\ & ( (\Add0~13_sumout\ & \Add0~1_sumout\) ) ) ) # ( \Add0~9_sumout\ & ( !\Add0~5_sumout\ & ( 
-- !\Add0~13_sumout\ $ (!\Add0~1_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001111000011110000000011000000111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add0~13_sumout\,
	datac => \ALT_INV_Add0~1_sumout\,
	datae => \ALT_INV_Add0~9_sumout\,
	dataf => \ALT_INV_Add0~5_sumout\,
	combout => \sd_AplusB_right|Mux5~0_combout\);

-- Location: LABCELL_X61_Y1_N12
\sd_AplusB_right|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sd_AplusB_right|Mux4~0_combout\ = ( \Add0~9_sumout\ & ( \Add0~5_sumout\ & ( \Add0~13_sumout\ ) ) ) # ( !\Add0~9_sumout\ & ( \Add0~5_sumout\ & ( (!\Add0~1_sumout\ & !\Add0~13_sumout\) ) ) ) # ( \Add0~9_sumout\ & ( !\Add0~5_sumout\ & ( (!\Add0~1_sumout\ & 
-- \Add0~13_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001100110011001100000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add0~1_sumout\,
	datad => \ALT_INV_Add0~13_sumout\,
	datae => \ALT_INV_Add0~9_sumout\,
	dataf => \ALT_INV_Add0~5_sumout\,
	combout => \sd_AplusB_right|Mux4~0_combout\);

-- Location: LABCELL_X61_Y1_N51
\sd_AplusB_right|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sd_AplusB_right|Mux3~0_combout\ = ( \Add0~9_sumout\ & ( \Add0~5_sumout\ & ( \Add0~1_sumout\ ) ) ) # ( !\Add0~9_sumout\ & ( \Add0~5_sumout\ & ( (\Add0~13_sumout\ & !\Add0~1_sumout\) ) ) ) # ( \Add0~9_sumout\ & ( !\Add0~5_sumout\ & ( (!\Add0~13_sumout\ & 
-- !\Add0~1_sumout\) ) ) ) # ( !\Add0~9_sumout\ & ( !\Add0~5_sumout\ & ( (!\Add0~13_sumout\ & \Add0~1_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100110000001100000000110000001100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add0~13_sumout\,
	datac => \ALT_INV_Add0~1_sumout\,
	datae => \ALT_INV_Add0~9_sumout\,
	dataf => \ALT_INV_Add0~5_sumout\,
	combout => \sd_AplusB_right|Mux3~0_combout\);

-- Location: LABCELL_X61_Y1_N24
\sd_AplusB_right|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sd_AplusB_right|Mux2~0_combout\ = ( \Add0~9_sumout\ & ( \Add0~5_sumout\ & ( (\Add0~1_sumout\ & !\Add0~13_sumout\) ) ) ) # ( !\Add0~9_sumout\ & ( \Add0~5_sumout\ & ( (\Add0~1_sumout\ & !\Add0~13_sumout\) ) ) ) # ( \Add0~9_sumout\ & ( !\Add0~5_sumout\ & ( 
-- !\Add0~13_sumout\ ) ) ) # ( !\Add0~9_sumout\ & ( !\Add0~5_sumout\ & ( \Add0~1_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011111111110000000000110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add0~1_sumout\,
	datad => \ALT_INV_Add0~13_sumout\,
	datae => \ALT_INV_Add0~9_sumout\,
	dataf => \ALT_INV_Add0~5_sumout\,
	combout => \sd_AplusB_right|Mux2~0_combout\);

-- Location: LABCELL_X61_Y1_N3
\sd_AplusB_right|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sd_AplusB_right|Mux1~0_combout\ = ( \Add0~9_sumout\ & ( \Add0~5_sumout\ & ( (!\Add0~13_sumout\ & \Add0~1_sumout\) ) ) ) # ( !\Add0~9_sumout\ & ( \Add0~5_sumout\ & ( !\Add0~13_sumout\ ) ) ) # ( \Add0~9_sumout\ & ( !\Add0~5_sumout\ & ( (\Add0~13_sumout\ & 
-- \Add0~1_sumout\) ) ) ) # ( !\Add0~9_sumout\ & ( !\Add0~5_sumout\ & ( (!\Add0~13_sumout\ & \Add0~1_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000000110000001111001100110011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add0~13_sumout\,
	datac => \ALT_INV_Add0~1_sumout\,
	datae => \ALT_INV_Add0~9_sumout\,
	dataf => \ALT_INV_Add0~5_sumout\,
	combout => \sd_AplusB_right|Mux1~0_combout\);

-- Location: LABCELL_X61_Y1_N6
\sd_AplusB_right|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sd_AplusB_right|Mux0~0_combout\ = ( \Add0~9_sumout\ & ( \Add0~5_sumout\ & ( (!\Add0~1_sumout\) # (\Add0~13_sumout\) ) ) ) # ( !\Add0~9_sumout\ & ( \Add0~5_sumout\ ) ) # ( \Add0~9_sumout\ & ( !\Add0~5_sumout\ & ( (!\Add0~13_sumout\) # (\Add0~1_sumout\) ) 
-- ) ) # ( !\Add0~9_sumout\ & ( !\Add0~5_sumout\ & ( \Add0~13_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111111110011001111111111111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add0~1_sumout\,
	datad => \ALT_INV_Add0~13_sumout\,
	datae => \ALT_INV_Add0~9_sumout\,
	dataf => \ALT_INV_Add0~5_sumout\,
	combout => \sd_AplusB_right|Mux0~0_combout\);

-- Location: LABCELL_X55_Y1_N12
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( \B[4]~input_o\ ) + ( \A[4]~input_o\ ) + ( \Add0~14\ ))
-- \Add0~18\ = CARRY(( \B[4]~input_o\ ) + ( \A[4]~input_o\ ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_A[4]~input_o\,
	cin => \Add0~14\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: LABCELL_X55_Y1_N15
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( GND ) + ( GND ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Add0~18\,
	sumout => \Add0~21_sumout\);

-- Location: LABCELL_X61_Y1_N45
\sd_AplusB_left|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sd_AplusB_left|Mux1~0_combout\ = ( !\Add0~21_sumout\ & ( \Add0~17_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_Add0~21_sumout\,
	dataf => \ALT_INV_Add0~17_sumout\,
	combout => \sd_AplusB_left|Mux1~0_combout\);

-- Location: LABCELL_X61_Y1_N21
\sd_AplusB_left|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \sd_AplusB_left|Mux1~1_combout\ = ( \Add0~21_sumout\ & ( !\Add0~17_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_Add0~21_sumout\,
	dataf => \ALT_INV_Add0~17_sumout\,
	combout => \sd_AplusB_left|Mux1~1_combout\);

-- Location: LABCELL_X61_Y1_N54
\sd_AplusB_left|Mux1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \sd_AplusB_left|Mux1~2_combout\ = ( \Add0~21_sumout\ & ( \Add0~17_sumout\ ) ) # ( !\Add0~21_sumout\ & ( \Add0~17_sumout\ ) ) # ( \Add0~21_sumout\ & ( !\Add0~17_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_Add0~21_sumout\,
	dataf => \ALT_INV_Add0~17_sumout\,
	combout => \sd_AplusB_left|Mux1~2_combout\);

-- Location: MLABCELL_X47_Y62_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


