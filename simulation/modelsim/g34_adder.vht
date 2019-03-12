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
-- Generated on "03/12/2019 02:50:02"
                                                            
-- Vhdl Test Bench template for design  :  g34_adder
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY g34_adder_vhd_tst IS
END g34_adder_vhd_tst;
ARCHITECTURE g34_adder_arch OF g34_adder_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL B : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL decoded_A : STD_LOGIC_VECTOR(13 DOWNTO 0);
SIGNAL decoded_AplusB : STD_LOGIC_VECTOR(13 DOWNTO 0);
SIGNAL decoded_B : STD_LOGIC_VECTOR(13 DOWNTO 0);
COMPONENT g34_adder
	PORT (
	A : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	B : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	decoded_A : OUT STD_LOGIC_VECTOR(13 DOWNTO 0);
	decoded_AplusB : OUT STD_LOGIC_VECTOR(13 DOWNTO 0);
	decoded_B : OUT STD_LOGIC_VECTOR(13 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : g34_adder
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	B => B,
	decoded_A => decoded_A,
	decoded_AplusB => decoded_AplusB,
	decoded_B => decoded_B
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END g34_adder_arch;
