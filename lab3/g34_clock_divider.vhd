library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity g34_clock_divider is
	port (	enable	: in	std_logic;
			reset	: in	std_logic;
			clk		: in	std_logic;
			en_out	: out	std_logic);
end g34_clock_divider;


architecture a1 of g34_clock_divider is

	signal s1 	: integer range 49999999 downto 0;
	signal temp	: std_logic;
	
begin

process (enable, reset, clk)
begin
	if (reset = '0') then		
		temp <= '0';			-- temp is reset to 0 when reset = 0
		s1 <= 49999999;										-- starts counting down from 499,999
	elsif (clk'event and clk = '1') then	-- triggers only when enabled and on rising edge of clk
		if (enable = '1') then
			if (s1 = 0) then								-- when reaches 0, temp will be 1 and countdown will be reset
				s1 <= 49999999;
				temp <= '1';				-- temp pulse is 20 ns long
			else
				s1 <= s1 - 1;		-- s1 is decreased by 1
				temp <= '0';
			end if;
		end if;
	end if;
end process;
	
	en_out <= temp;

end a1;