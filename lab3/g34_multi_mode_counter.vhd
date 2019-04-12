library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity g34_multi_mode_counter is
	port (	start			: in	std_logic;
				stop			: in	std_logic;
				direction	: in	std_logic;
				reset			: in	std_logic;
				clk			: in	std_logic;
				hex0			: out	std_logic_vector (6 downto 0);
				hex1			: out	std_logic_vector (6 downto 0));
end g34_multi_mode_counter;

architecture behavior of g34_multi_mode_counter is

	component g34_fsm is
		port (	enable		: in	std_logic;
					direction	: in	std_logic;
					reset			: in	std_logic;
					clk			: in	std_logic;
					count			: out	std_logic_vector (3 downto 0));
	end component;
	
	component g34_counter is
		port (	enable		: in	std_logic;
				reset				: in	std_logic;
				clk				: in	std_logic;
				count				: out	std_logic_vector (3 downto 0));
	end component;
	
	component g34_7_segment_decoder is
		port (	code 			: in std_logic_vector (3 downto 0);
				segments			: out std_logic_vector (6 downto 0));
	end component;
	
	-- signals to remember start, stop, and reset
	signal en	: std_logic;
	signal rst	: std_logic;
	