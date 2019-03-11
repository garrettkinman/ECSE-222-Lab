library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity g34_7_segment_decoder is
	port (	code 		: in std_logic_vector (3 downto 0);
		segments	: out std_logic_vector (6 downto 0));
end g34_7_segment_decoder;



architecture a0 of g34_7_segment_decoder is
	signal 7_segments : std_logic_vector (6 downto 0);
begin
	case code is
		when "0000" => 7_segments <= "1000000"; -- '0'
		when "0001" => 7_segments <= "1111001"; -- '1'
		when "0010" => 7_segments <= "0100100"; -- '2'
		when "0011" => 7_segments <= "0110000"; -- '3'
		when "0100" => 7_segments <= "0011001"; -- '4'
		when "0101" => 7_segments <= "0010010"; -- '5'
		when "0110" => 7_segments <= "0000010"; -- '6'
		when "0111" => 7_segments <= "1111000"; -- '7'
		when "1000" => 7_segments <= "0000000"; -- '8'
		when "1001" => 7_segments <= "0010000"; -- '9'
		when "1010" => 7_segments <= "0001000"; -- 'A'
		when "1011" => 7_segments <= "0000011"; -- 'B'
		when "1100" => 7_segments <= "1000110"; -- 'C'
		when "1101" => 7_segments <= "0100001"; -- 'D'
		when "1110" => 7_segments <= "0000110"; -- 'E'
		when "1111" => 7_segments <= "0001110"; -- 'F'
	end case;
	segments <= 7_segments;
end a0;		


entity g34_adder is
	port (	A, B		: in std_logic_vector (4 downto 0);
		decoded_A	: out std_logic_vector (13 downto 0);
		decoded_B	: out std_logic_vector (13 downto 0);
		decoded_AplusB	: out std_logic_vector (13 downto 0));
end g34_adder;