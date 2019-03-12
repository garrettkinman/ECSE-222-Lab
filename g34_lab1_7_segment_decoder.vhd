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