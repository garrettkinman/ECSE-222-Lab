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
	
	component g34_clock_divider is
		port (	enable	: in	std_logic;
					reset		: in	std_logic;
					clk		: in	std_logic;
					en_out	: out	std_logic);
	end component;
	
	component g34_7_segment_decoder is
		port (	code 			: in std_logic_vector (3 downto 0);
				segments			: out std_logic_vector (6 downto 0));
	end component;
	
	-- signal to remember start and stop
	signal enable			: std_logic;
	
	-- signal to carry output of state machine
	signal fsm_out			: std_logic_vector (3 downto 0);
	
	-- signals to carry the tens place and the ones place of the number, respectively
	signal tens				: std_logic_vector (3 downto 0);
	signal ones				: std_logic_vector (3 downto 0);
	
	-- signal to carry the divided clock
	signal divided_clk	: std_logic;
	
begin

	clk_divider		: g34_clock_divider
							port map (enable, reset, clk, divided_clk);
							
	display_left	: g34_7_segment_decoder
							port map (tens, hex1);

	display_right	: g34_7_segment_decoder
							port map (ones, hex0);
							
	fsm				: g34_fsm
							port map (enable, direction, reset, divided_clk, fsm_out);
	

-- process that will remember button press for start or stop	
enable_multi_mode_counter	: process (enable)
begin
	if (start = '0') then
		enable <= '1';
	elsif (stop = '0') then
		enable <= '0';
	end if;
end process;


-- process that places splits fsm_out into tens and ones appropriately
-- anything 1-9 goes into ones unchanged
-- anything 10-15 has 0001 into tens and remaining value put into ones
set_tens_and_ones	: process (fsm_out)
begin
	if reset = '0' then
		tens <= "0000";
		ones <= "0000";
	elsif (enable = '1') then
		case fsm_out is
			when "1010" =>
				tens <= "0001";
				ones <= "0000";
			when "1011" =>
				tens <= "0001";
				ones <= "0001";
			when "1100" =>
				tens <= "0001";
				ones <= "0010";
			when "1101" =>
				tens <= "0001";
				ones <= "0011";
			when "1110" =>
				tens <= "0001";
				ones <= "0100";
			when "1111" =>
				tens <= "0001";
				ones <= "0101";
			when others =>
				tens <= "0000";
				ones <= fsm_out;
		end case;
	end if;
end process;

end behavior;
	