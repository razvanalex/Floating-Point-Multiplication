library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity CLA32bits is
	Port ( 
		a, b: in std_logic_vector(31 downto 0);
		cin: in std_logic;
		sum : out std_logic_vector(31 downto 0);
		cout: out std_logic
	);
end CLA32bits;


architecture Behavioral of CLA32bits is
    component CLA16bits is
        Port (
            a, b: in std_logic_vector(15 downto 0);
            cin: in std_logic;
            sum: out std_logic_vector(15 downto 0);
            pg, gg, cout: out std_logic
        );
    end component;

	signal c, p, g: std_logic_vector(1 downto 0);
	signal tmp_pg, tmp_gg: std_logic;
begin
    -- Compute Ps and Gs, and also the sum
	ual0: CLA16bits port map (a => a(15 downto  0), b => b(15 downto  0), cin => c(0), sum => sum(15 downto  0), pg => p(0), gg => g(0));
	ual1: CLA16bits port map (a => a(31 downto 16), b => b(31 downto 16), cin => c(1), sum => sum(31 downto 16), pg => p(1), gg => g(1));

    -- Compute carries
	c(0) <= cin;
	c(1) <= g(0) or (p(0) and cin);
	cout <= g(1) or (p(1) and g(0)) or (p(1) and p(0) and cin);
end Behavioral;
