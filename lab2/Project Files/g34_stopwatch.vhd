library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity g34_stopwatch is
	port (	start	: in	std_logic;
				stop	: in	std_logic;
				reset	: in	std_logic;
				clk	: in	std_logic;
				hex0	: out	std_logic_vector (6 downto 0);
				hex1	: out	std_logic_vector (6 downto 0);
				hex2	: out	std_logic_vector (6 downto 0);
				hex3	: out	std_logic_vector (6 downto 0);
				hex4	: out	std_logic_vector (6 downto 0);
				hex5	: out	std_logic_vector (6 downto 0));
end g34_stopwatch


architecture a2 of g34_stopwatch is
	-- TODO: signals

	component g34_clock_divider is
		port (	enable	: in	std_logic;
					reset		: in	std_logic;
					clk		: in	std_logic;
					en_out	: out	std_logic);
	end component;
	
	component g34_counter is
		port (	enable	: in	std_logic;
					reset		: in	std_logic;
					clk		: in	std_logic;
					count		: out	std_logic_vector (3 downto 0));
	end component;
	
	component g34_7_segment_decoder is
		port (	code 		: in std_logic_vector (3 downto 0);
					segments	: out std_logic_vector (6 downto 0));
	end component;
	
	-- TODO: process
	-- TODO: initialize components

end a2;