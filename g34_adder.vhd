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
									port map (A_encoded (4 downto 0), decoded (34 downto 28));
	sd_B_left			: g34_7_segment_decoder
									port map (B_encoded (7 downto 4), decoded (27 downto 21));
	sd_B_right			: g34_7_segment_decoder
									port map (B_encoded (3 downto 0), decoded (20 downto 14));
	sd_AplusB_left	: g34_7_segment_decoder
									port map (AplusB_encoded (7 downto 4), decoded (13 downto 7));
	sd_AplusB_right	: g34_7_segment_decoder
									port map (AplusB_encoded (3 downto 0), decoded (6 downto 0));

	decoded_A <= decoded (41 downto 28);	-- copy over from decoded
	decoded_B <= decoded (27 downto 14);	-- copy over from decoded
	decoded_AplusB <= decoded (13 downto 0);	-- copy over from decoded
	
end a1;