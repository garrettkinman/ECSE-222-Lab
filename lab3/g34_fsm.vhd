library ieee;
use ieee.std_logic_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.all;
use ieee.numeric_std.all;

entity g34_fsm is
	port (	enable		: in	std_logic;
				direction	: in	std_logic;
				reset			: in	std_logic;
				clk			: in	std_logic;
				count			: out	std_logic_vector (3 downto 0));
end g34_fsm;

ARCHITECTURE Behavior OF g34_fsm IS
	TYPE State_type IS (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O);
	SIGNAL y : State_type;
BEGIN
	PROCESS ( reset, clk )
	BEGIN
		IF reset = '0' THEN
			y <= A;
		ELSIF (clk'event AND clk = '1') THEN
			if enable = '1' then
				CASE y IS
					WHEN A =>
						IF direction = '0' THEN
							y <= O;
						ELSE
							y <= B;
						END IF;
					WHEN B =>
						IF direction = '0' THEN
							y <= A;
						ELSE
							y <= C;
						END IF;
					WHEN C =>
						IF direction = '0' THEN
							y <= B;
						ELSE
							y <= D;
						END IF;
					WHEN D =>
						IF direction = '0' THEN
							y <= C;
						ELSE
							y <= E;
						END IF;
					
					WHEN E =>
						IF direction = '0' THEN
							y <= D;
						ELSE
							y <= F;
						END IF;
					
					WHEN F =>
						IF direction = '0' THEN
							y <= E;
						ELSE
							y <= G;
						END IF;
					
					WHEN G =>
						IF direction = '0' THEN
							y <= F;
						ELSE
							y <= H;
						END IF;
					
					WHEN H =>
						IF direction = '0' THEN
							y <= G;
						ELSE
							y <= I;
						END IF;
					
					WHEN I =>
						IF direction = '0' THEN
							y <= H;
						ELSE
							y <= J;
						END IF;
					
					WHEN J =>
						IF direction = '0' THEN
							y <= I;
						ELSE
							y <= K;
						END IF;
					
					WHEN K =>
						IF direction = '0' THEN
							y <= J;
						ELSE
							y <= L;
						END IF;
					WHEN L =>
						IF direction = '0' THEN
							y <= K;
						ELSE
							y <= M;
						END IF;
					WHEN M =>
						IF direction = '0' THEN
							y <= L;
						ELSE
							y <= N;
						END IF;
					WHEN N =>
						IF direction = '0' THEN
							y <= M;
						ELSE
							y <= O;
						END IF;
					WHEN O =>
						IF direction = '0' THEN
							y <= N;
						ELSE
							y <= A;
						END IF;
				END CASE;
			end if;
		END IF;
	END PROCESS;
	
	PROCESS ( y )
	BEGIN
		case y is
			when A => count <= "0001";	-- 1
			when B => count <= "0010";	-- 2
			when C => count <= "0100";	-- 4
			when D => count <= "1000";	-- 8
			when E => count <= "0011";	-- 3
			when F => count <= "0110";	-- 6
			when G => count <= "1100";	-- 12
			when H => count <= "1011";	-- 11
			when I => count <= "0101";	-- 5
			when J => count <= "1010";	-- 10
			when K => count <= "0111";	-- 7
			when L => count <= "1110";	-- 14
			when M => count <= "1111";	-- 15
			when N => count <= "1101";	-- 13
			when O => count <= "1001";	-- 9
			when others => count <= "0000"; -- for any other cases
		end case;
	END PROCESS;
	
END Behavior;