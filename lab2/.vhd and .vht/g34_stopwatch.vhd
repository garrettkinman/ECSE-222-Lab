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
	signal counter0_en		: std_logic;
	signal counter1_en		: std_logic;
	signal counter2_en		: std_logic;
	signal counter3_en		: std_logic;
	signal counter4_en		: std_logic;
	signal counter5_en		: std_logic;
	
	-- determine reset for counter 3
	-- dependent upon reset and counter3_out
	signal counter3_reset	: std_logic;
	
	-- carry divided clock from clock divider
	signal divided_clk		: std_logic;
	
	-- enable clock divider
	signal clock_divider_en	: std_logic;
	
	-- TODO: process
	-- TODO: initialize components
	
begin
	
	-- TODO: counter 3 can only count up to 6
	--			since 60 seconds in a minute
	
	-- clock divider
	clock_divider			: g34_clock_divider
									port map (clock_divider_en, reset, clk, counter0_en);
	
	-- counters
	counter0					: g34_counter
									port map (counter0_en, reset, divided_clk, counter0_out);
	counter1					: g34_counter
									port map (counter1_en, reset, divided_clk, counter1_out);
	counter2					: g34_counter
									port map (counter2_en, reset, divided_clk, counter2_out);
	counter3					: g34_counter
									port map (counter3_en, counter3_reset, divided_clk, counter3_out);
	counter4					: g34_counter
									port map (counter4_en, reset, divided_clk, counter4_out);
	counter5					: g34_counter
									port map (counter5_en, reset, divided_clk, counter5_out);
	
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
	

end a2;