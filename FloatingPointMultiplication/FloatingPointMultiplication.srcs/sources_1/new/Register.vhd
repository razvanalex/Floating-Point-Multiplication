library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Register64bits is
    Port ( 
        clk, clear, load: in std_logic;
		d: in std_logic_vector(63 downto 0);
		q: out std_logic_vector(63 downto 0)
    );
end Register64bits;


architecture Behavioral of Register64bits is
begin
	process (clk, clear)
	begin
		if clear = '1' then
			q <= d xor d;
		elsif rising_edge(clk) then
			if load = '1' then
				q <= d;
			end if;
		end if;
	end process;
end Behavioral;
