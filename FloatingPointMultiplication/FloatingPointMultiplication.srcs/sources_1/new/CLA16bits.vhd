library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity CLA16bits is
	Port ( 
		a, b: in std_logic_vector(15 downto 0);
		cin: in std_logic;
		sum : out std_logic_vector(15 downto 0);
		pg, gg, cout: out std_logic
	);
end CLA16bits;


architecture Behavioral of CLA16bits is
    component CLA4bits is
        Port (
            a, b: in std_logic_vector(3 downto 0);
            cin: in std_logic;
            sum: out std_logic_vector(3 downto 0);
            pg, gg, cout: out std_logic
        );
    end component;

	signal c, p, g: std_logic_vector(3 downto 0);
	signal tmp_pg, tmp_gg: std_logic;
begin
    -- Compute Ps and Gs, and also the sum
	ual0: CLA4bits port map (a => a( 3 downto  0), b => b( 3 downto  0), cin => c(0), sum => sum( 3 downto  0), pg => p(0), gg => g(0));
	ual1: CLA4bits port map (a => a( 7 downto  4), b => b( 7 downto  4), cin => c(1), sum => sum( 7 downto  4), pg => p(1), gg => g(1));
	ual2: CLA4bits port map (a => a(11 downto  8), b => b(11 downto  8), cin => c(2), sum => sum(11 downto  8), pg => p(2), gg => g(2));
	ual3: CLA4bits port map (a => a(15 downto 12), b => b(15 downto 12), cin => c(3), sum => sum(15 downto 12), pg => p(3), gg => g(3));

    -- Compute carries
	c(0) <= cin;
	c(1) <= g(0) or (p(0) and cin);
	c(2) <= g(1) or (p(1) and g(0)) or (p(1) and p(0) and cin);
	c(3) <= g(2) or (p(2) and g(1)) or (p(2) and p(1) and g(0)) or (p(2) and p(1) and p(0) and cin);

	-- Compute propagation group and generate group
	tmp_pg <= and p; -- Warning: This will work only with VHDL-2008
	tmp_gg <= g(3) or (p(3) and g(2)) or (p(3) and p(2) and g(1)) or (p(3) and p(2) and p(1) and g(0));
	pg <= tmp_pg;
	gg <= tmp_gg;

	-- Compute carry out
	cout <= tmp_gg or (tmp_pg and cin);
end Behavioral;
