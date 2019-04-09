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
-- Generated on "04/08/2019 17:20:15"
                                                            
-- Vhdl Test Bench template for design  :  g34_counter
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;
use IEEE.STD_LOGIC_ARITH.ALL;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;                               

ENTITY g34_counter_vhd_tst IS
END g34_counter_vhd_tst;

ARCHITECTURE g34_counter_arch OF g34_counter_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL count : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL enable : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
COMPONENT g34_counter
	PORT (
		clk : IN STD_LOGIC;
		count : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		enable : IN STD_LOGIC;
		reset : IN STD_LOGIC
	);
END COMPONENT;

BEGIN
	i1 : g34_counter
	PORT MAP (
-- list connections between master ports and signals
		clk => clk,
		count => count,
		enable => enable,
		reset => reset
	); 
             
clock_process : process
begin
     clk <= '0';
     wait for 10 ns;
     clk <= '1';
     wait for 10 ns;
end process;

-- Stimulus process
stim_proc: process
begin        
   -- hold reset state for 100 ns.
	enable <= '1';
	reset <= '0';
	wait for 20 ns;
   
	enable <= '1';
	reset <= '1';
	wait for 100 ns;
	
	enable <= '0';
	reset <= '1';
	wait for 20 ns;
	
	enable <= '1';
	reset <= '1';
	wait for 60 ns;
	
	enable <= '1';
	reset <= '0';
	wait for 20 ns;
	
	enable <= '1';
	reset <= '1';
	wait for 20 ns;
	
	wait;
end process;
                                   
END g34_counter_arch;
