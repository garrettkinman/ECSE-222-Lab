library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity g34_counter is
	port (	enable	: in	std_logic;
				reset		: in	std_logic;
				clk		: in	std_logic;
				count		: out	std_logic_vector (3 downto 0));
end g34_counter;


architecture a0 of g34_counter is
	signal s0 : std_logic_vector (3 downto 0);

begin

process (enable, reset)
begin
	if (reset = '0') then	-- if reset is 0, sets output to 0
		s0 <= "0000";
	elseif (enable and clk = '1')	-- only counts up when enable and clk are 1
		s0 <= s0 + 1;					-- else, output is unchanged
	end if;
end process;

	count <= s0;
end a0;