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

begin

process (enable, reset, clk)
begin
	if (reset = '0') then	-- if reset is 0, sets output to 0
		count <= "0000";
	elseif ((enable = '1') and (rising_edge(clk)))	then	-- only counts up when enabled and on rising edge of clk
		while (count < 10) loop										-- loops up to 10
			count <= count + 1;
		end loop;
		
		-- needs to reset somehow to 0 when count hits 10
		
	end if;
end process;

end a0;