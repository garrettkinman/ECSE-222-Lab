library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;


entity g34_adder is
	port (	A, B				: in std_logic_vector (4 downto 0);
				decoded_A		: out std_logic_vector (13 downto 0);
				decoded_B		: out std_logic_vector (13 downto 0);
				decoded_AplusB	: out std_logic_vector (13 downto 0));
end g34_adder;


architecture a1 of g34_adder is
	
	signal A_encoded			: std_logic_vector (7 downto 0);
	signal B_encoded			: std_logic_vector (7 downto 0);
	signal AplusB_encoded	: std_logic_vector (7 downto 0);
	signal decoded				: std_logic_vector (41 downto 0);
	
	component g34_7_segment_decoder is
		port (	code 		: in std_logic_vector (3 downto 0);
					segments	: out std_logic_vector (6 downto 0));
	end component;
				
begin	
	A_encoded <= "000" & A (4 downto 0);	-- copy over A with leading zeros
	B_encoded <= "000" & B (4 downto 0);	-- copy over B with leading zeros
	AplusB_encoded <= std_logic_vector (unsigned (A_encoded) + unsigned (B_encoded));	-- sum A_encoded and B_encoded

	sd_A_left			: g34_7_segment_decoder
									port map (A_encoded (7 downto 4), decoded (41 downto 35));
	sd_A_right			: g34_7_segment_decoder
									port map (A_encoded (3 downto 0), decoded (34 downto 28));
	sd_B_left			: g34_7_segment_decoder
									port map (B_encoded (7 downto 4), decoded (27 downto 21));
	sd_B_right			: g34_7_segment_decoder
									port map (B_encoded (3 downto 0), decoded (20 downto 14));
	sd_AplusB_left		: g34_7_segment_decoder
									port map (AplusB_encoded (7 downto 4), decoded (13 downto 7));
	sd_AplusB_right	: g34_7_segment_decoder
									port map (AplusB_encoded (3 downto 0), decoded (6 downto 0));

	decoded_A <= decoded (41 downto 28);	-- copy over from decoded
	decoded_B <= decoded (27 downto 14);	-- copy over from decoded
	decoded_AplusB <= decoded (13 downto 0);	-- copy over from decoded
	
end a1;

library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;


entity g34_7_segment_decoder is
	port (	code 		: in std_logic_vector (3 downto 0);
				segments	: out std_logic_vector (6 downto 0));
end g34_7_segment_decoder;


architecture a0 of g34_7_segment_decoder is
	signal s7_segments : std_logic_vector (6 downto 0);
begin
	my_case : process(code, s7_segments)
	begin
		case code is
			when "0000" => s7_segments <= "1000000"; -- '0'
			when "0001" => s7_segments <= "1111001"; -- '1'
			when "0010" => s7_segments <= "0100100"; -- '2'
			when "0011" => s7_segments <= "0110000"; -- '3'
			when "0100" => s7_segments <= "0011001"; -- '4'
			when "0101" => s7_segments <= "0010010"; -- '5'
			when "0110" => s7_segments <= "0000010"; -- '6'
			when "0111" => s7_segments <= "1111000"; -- '7'
			when "1000" => s7_segments <= "0000000"; -- '8'
			when "1001" => s7_segments <= "0010000"; -- '9'
			when "1010" => s7_segments <= "0001000"; -- 'A'
			when "1011" => s7_segments <= "0000011"; -- 'B'
			when "1100" => s7_segments <= "1000110"; -- 'C'
			when "1101" => s7_segments <= "0100001"; -- 'D'
			when "1110" => s7_segments <= "0000110"; -- 'E'
			when "1111" => s7_segments <= "0001110"; -- 'F'
		end case;
	end process my_case;
	segments <= s7_segments;
end a0;