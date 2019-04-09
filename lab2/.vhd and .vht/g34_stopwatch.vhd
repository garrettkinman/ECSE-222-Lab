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
	
	-- carry outputs from counters to 7-segment decoders
	signal counter0_out		: std_logic_vector (3 downto 0);
	signal counter1_out		: std_logic_vector (3 downto 0);
	signal counter2_out		: std_logic_vector (3 downto 0);
	signal counter3_out		: std_logic_vector (3 downto 0);
	signal counter4_out		: std_logic_vector (3 downto 0);
	signal counter5_out		: std_logic_vector (3 downto 0);
	
	-- enable for counter 0 comes from clock divider
	-- determine enable for counters 1-5
	-- dependent upon output of previous counter
	signal counter0_clk		: std_logic;
	signal counter1_clk		: std_logic;
	signal counter2_clk		: std_logic;
	signal counter3_clk		: std_logic;
	signal counter4_clk		: std_logic;
	signal counter5_clk		: std_logic;
	
	-- determine reset for counter 3
	-- dependent upon reset and counter3_out
	signal counter3_reset	: std_logic;
	
	-- carry divided clock from clock divider
	signal divided_clk		: std_logic;
	
	-- enable clock divider
	signal clock_divider_en	: std_logic;
	
	
begin
	
	-- TODO: IF START HIT, STAY ENABLED UNTIL HIT STOP
	-- TODO: IF STOP HIT, STAY DISABLED UNTIL HIT START
	-- TODO: BUTTONS OUTPUT 1 WHEN NOT PRESSED, 0 WHEN PRESSED; IMPLEMENT THIS
	
	-- clock divider
	clock_divider			: g34_clock_divider
									port map (clock_divider_en, reset, clk, counter0_clk);
	
	-- counters
	counter0					: g34_counter
									port map (enable, reset, counter0_clk, counter0_out);
	counter1					: g34_counter
									port map (enable, reset, counter1_clk, counter1_out);
	counter2					: g34_counter
									port map (enable, reset, counter2_clk, counter2_out);
	counter3					: g34_counter
									port map (enable, counter3_reset, counter3_clk, counter3_out);
	counter4					: g34_counter
									port map (enable, reset, counter4_clk, counter4_out);
	counter5					: g34_counter
									port map (enable, reset, counter5_clk, counter5_out);
	
	-- 7-segment decoders
	centiseconds_right	: g34_7_segment_decoder
									port map (counter0_out, hex0);
	centiseconds_left		: g34_7_segment_decoder
									port map (counter1_out, hex1);
	seconds_right			: g34_7_segment_decoder
									port map (counter2_out, hex2);
	seconds_left			: g34_7_segment_decoder
									port map (counter3_out, hex3);
	minutes_right			: g34_7_segment_decoder
									port map (counter4_out, hex4);
	minutes_left			: g34_7_segment_decoder
									port map (counter5_out, hex5);

-- control clk for counter 1
-- when c0 goes to 0, give c1_clk pulse
c1_clk	: process (counter0_out)
begin
	if (counter0_out'event and counter0_out = "0000") then
		c1_clk <= '1', '0' after 20 ns;
	end if;
end process;

-- control clk for counter 2
-- when c1 goes to 0, give c2_clk pulse
c2_clk	: process (counter1_out)
begin
	if (counter0_out'event and counter0_out = "0000") then
		c1_clk <= '1', '0' after 20 ns;
	end if;
end process;

-- control clk for counter 3
-- when c2 goes to 0, give c3_clk pulse
c3_clk	: process (counter2_out)
begin
	if (counter0_out'event and counter0_out = "0000") then
		c1_clk <= '1', '0' after 20 ns;
	end if;
end process;

-- control clk for counter 4
-- when c3 goes to 6, give c4_clk pulse
-- (6 because there are 60 seconds in a minute)
c4_clk	: process (counter3_out)
begin
	if (counter3_out'event and counter3_out = "0110") then
		c1_clk <= '1', '0' after 20 ns;
	end if;
end process;

-- control clk for counter 5
-- when c4 goes to 0, give c5_clk pulse
c5_clk	: process (counter4_out)
begin
	if (counter4_out'event and counter4_out = "0000") then
		c1_clk <= '1', '0' after 20 ns;
	end if;
end process;

-- reset counter 3 if reset or hits 6
-- TODO: MAYBE CHANGE THIS
c3_reset	: process
begin
	counter3_reset <= (reset or (counter3_out'event and counter3_out = "0110"));
end process;

end a2;