library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity g34_counter is
	port (	enable	: in	std_logic;
			reset	: in	std_logic;
			clk		: in	std_logic;
			count	: out	std_logic_vector (3 downto 0));
end g34_counter;

architecture a0 of g34_counter is
	signal temp: std_logic_vector(3 downto 0);
begin
	process (enable, reset, clk)
	begin
		if(reset = '0') then	-- 'temp' resets to 0000 only if 'reset' is 0
			temp <= "0000";
		elsif(clk'event and clk = '1') then	-- Only at the positive edge of 'Clk
			if (enable = '1') then	-- 'temp' counts up only if 'enable' is 1
				if (temp = "1001") then
					temp <= "0000";
				else
					temp <= temp + "0001";	-- Adds 1 to 'temp'. If 'temp' = 1111, it becomes 0000
				end if;
			end if;
		end if;
	end process;
	count <= temp;
end a0;