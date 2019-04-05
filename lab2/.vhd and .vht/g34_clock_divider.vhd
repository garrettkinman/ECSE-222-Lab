library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity g34_clock_divider is
	port (	enable	: in	std_logic;
				reset		: in	std_logic;
				clk		: in	std_logic;
				en_out	: out	std_logic);
end g34_clock_divider;


architecture a1 of g34_clock_divider is
	-- TODO: architecture
	-- TODO: process

	signal s1 : standard_logic_vector (18 downto 0);
	
begin

process (enable, reset, clk)
	if (reset = '0') then
		s1 <= "1111010000100100000" - 1;					-- starts counting down from 499,999
	elseif ((enable = '1') and (rising_edge(clk)))	-- triggers only when enabled and on rising edge of clk
		while (s1 >= 0) loop									-- loops down to 0
			s1 <= s1 - 1;
		end loop;
	end if;
end process;
	
	if (s1 = "0000000000000000000") then
		en_out <= '1';
	else
		en_out <= '0';
	end if;
end a1;