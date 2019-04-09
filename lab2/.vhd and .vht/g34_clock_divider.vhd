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

	signal s1 	: integer range 499999 downto 0;
	signal temp	: std_logic;
	
begin

process (enable, reset, clk)
begin
	if (reset = '0') then		
		temp <= '0';			-- temp is reset to 0 when reset = 0
		s1 <= 499999;										-- starts counting down from 499,999
	elsif ((enable = '1') and (rising_edge(clk))) then	-- triggers only when enabled and on rising edge of clk
		if (s1 = 0) then								-- when reaches 0, temp will be 1 and countdown will be reset
			s1 <= 499999;
			temp <= '1', '0' after 20 ns;				-- temp pulse is 20 ns long
		else
			s1 <= s1 - 1;		-- s1 is decreased by 1
		end if;
	end if;
end process;
	
	en_out <= temp;

end a1;