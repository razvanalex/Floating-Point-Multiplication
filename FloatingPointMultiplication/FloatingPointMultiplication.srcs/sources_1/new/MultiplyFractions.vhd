library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity MultiplyFractions is
	Port ( 
		A, B: in std_logic_vector(22 downto 0);
		As, Bs: in std_logic;
		result: out std_logic_vector(22 downto 0);
		Rs: out std_logic;
	);
end MultiplyFractions;


architecture Behavioral of MultiplyFractions is

begin
	Rs <= As xor Bs;
	
	process (A, B)
	begin
		if B(0) = '1' then
			
		end if;
		
	end process;
	
end Behavioral;
