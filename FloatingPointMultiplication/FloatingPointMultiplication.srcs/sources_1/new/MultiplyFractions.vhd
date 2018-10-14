library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity MultiplyFractions is
	Port ( 
		A, B: in std_logic_vector(22 downto 0);
		As, Bs: in std_logic;
		result: out std_logic_vector(24 downto 0);
		Rs: out std_logic
	);
end MultiplyFractions;


architecture Behavioral of MultiplyFractions is
    component CLA32bits is
        Port ( 
            a, b: in std_logic_vector(31 downto 0);
            cin: in std_logic;
            sum : out std_logic_vector(31 downto 0);
            cout: out std_logic
        );
    end component;
    
    -- Create a new type for the input of the adders
    type ADDER_BUS is array (23 downto 0) of std_logic_vector(31 downto 0);
    
    -- Create 46 buses, 2 for each adder, and init them with 0.
    signal A_BUS : ADDER_BUS := (others => (others => '0'));
    signal B_BUS : ADDER_BUS := (others => (others => '0'));
    
    -- Create a 23 auxilliary buses
    signal SUM_BUS : ADDER_BUS := (others => (others => '0'));
    
    signal HiddenBit_A : std_logic_vector(23 downto 0);
    signal HiddenBit_B : std_logic_vector(23 downto 0);
    
begin
    -- Add the hidden bit to the number A
    HiddenBit_A(22 downto 0) <= A;
    HiddenBit_A(23) <= '1';
    
    -- Add the hidden bit to the number B
    HiddenBit_B(22 downto 0) <= B;
    HiddenBit_B(23) <= '1';
    
    -- Compute the sign of the result
	Rs <= As xor Bs;
	
	-- 1st Adder
    A_BUS(0)(22 downto 0) <= HiddenBit_A(23 downto 1) when HiddenBit_B(0) = '1' else (others => '0');
    A_BUS(0)(23) <= '0';
    B_BUS(0)(23 downto 0) <= HiddenBit_A(23 downto 0) when HiddenBit_B(1) = '1' else (others => '0');
    adder1: CLA32bits port map(a => A_BUS(0), b => B_BUS(0), cin => '0', sum => SUM_BUS(0));
    A_BUS(1)(23 downto 0) <= SUM_BUS(0)(24 downto 1);
    
    -- nth Adder
    GEN: for i in 1 to 22 generate    
        B_BUS(i)(23 downto 0) <= HiddenBit_A(23 downto 0) when HiddenBit_B(i + 1) = '1' else (others => '0');
        adderNth: CLA32bits port map(a => A_BUS(i), b => B_BUS(i), cin => '0', sum => SUM_BUS(i));
        A_BUS(i + 1)(23 downto 0) <= SUM_BUS(i)(24 downto 1);
    end generate GEN;
    
    -- Return the result of the multiplication
    result <= SUM_BUS(22)(24 downto 0);
end Behavioral;
