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

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "04/08/2019 20:41:20"
                                                            
-- Vhdl Test Bench template for design  :  g34_clock_divider
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY g34_clock_divider_vhd_tst IS
END g34_clock_divider_vhd_tst;

ARCHITECTURE g34_clock_divider_arch OF g34_clock_divider_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL en_out : STD_LOGIC;
SIGNAL enable : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
COMPONENT g34_clock_divider
	PORT (
		clk : IN STD_LOGIC;
		en_out : OUT STD_LOGIC;
		enable : IN STD_LOGIC;
		reset : IN STD_LOGIC
	);
END COMPONENT;

BEGIN
	i1 : g34_clock_divider
	PORT MAP (
-- list connections between master ports and signals
		clk => clk,
		en_out => en_out,
		enable => enable,
		reset => reset
	);
	
-- Clock definition.
clock_process :process
	begin
	clk <= '0';
	wait for 10 ns;
	clk <= '1';
	wait for 10 ns;
end process;

-- Processing.
stim_proc: process
begin
	reset <= '0'; -- Initial conditions.
	enable <= '0';
	wait for 100 ns;
	reset <= '1'; -- Down to work!
	enable <= '1';
       wait;
end process;                                         
END g34_clock_divider_arch;
