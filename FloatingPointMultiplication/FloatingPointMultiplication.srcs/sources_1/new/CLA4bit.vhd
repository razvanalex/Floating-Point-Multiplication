library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity CLA4bits is
	Port (
		a, b: in std_logic_vector(3 downto 0);
		cin: in std_logic;
		sum: out std_logic_vector(3 downto 0);
		pg, gg, cout: out std_logic
	);
end CLA4bits;


architecture Behavioral of CLA4bits is   
    component ModulePG is
        Port (
            a, b: in std_logic;
            p, g: out std_logic
        );
    end component;
    
	signal c, g, p: std_logic_vector(3 downto 0);
	signal tmp_pg, tmp_gg: std_logic;
begin
    -- Compute Ps and Gs
	pg0: ModulePG port map (a => a(0), b => b(0), p => p(0), g => g(0));
	pg1: ModulePG port map (a => a(1), b => b(1), p => p(1), g => g(1));
	pg2: ModulePG port map (a => a(2), b => b(2), p => p(2), g => g(2));
	pg3: ModulePG port map (a => a(3), b => b(3), p => p(3), g => g(3));
	
	-- Compute carries 
	c(0) <= cin;
	c(1) <= g(0) or (p(0) and cin);
	c(2) <= g(1) or (p(1) and g(0)) or (p(1) and p(0) and cin);
	c(3) <= g(2) or (p(2) and g(1)) or (p(2) and p(1) and g(0)) or (p(2) and p(1) and p(0) and cin);
	
	-- Compute the sum
	sum <= p xor c;

	-- Set propagation group and generate group
	tmp_pg <= and p; -- Warning: This will work only with VHDL-2008
	tmp_gg <= g(3) or (p(3) and g(2)) or (p(3) and p(2) and g(1)) or (p(3) and p(2) and p(1) and g(0));
	pg <= tmp_pg;
	gg <= tmp_gg;
	
	-- Set carry out
	cout <= tmp_gg or (tmp_pg and cin);
end Behavioral;
