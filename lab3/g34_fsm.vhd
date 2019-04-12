library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity g34_fsm is
	port (	enable		: in	std_logic;
				direction	: in	std_logic;
				reset			: in	std_logic;
				clk			: in	std_logic;
				count			: out	std_logic_vector (3 downto 0));
end g34_fsm;