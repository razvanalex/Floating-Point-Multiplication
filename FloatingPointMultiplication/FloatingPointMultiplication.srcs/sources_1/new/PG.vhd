library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity ModulePG is
	Port (
		a, b: in std_logic;
		p, g: out std_logic
	);
end ModulePG;


architecture Behavioral of ModulePG is
begin
	p <= a xor b;
	g <= a and b;
end Behavioral;
