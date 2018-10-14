library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity AdjustExponent is
    Port ( 
        input: in std_logic_vector(7 downto 0);
        addTwo: in std_logic;
        output: out std_logic_vector(7 downto 0)
    );
end AdjustExponent;


architecture Behavioral of AdjustExponent is
    component CLA16bits is
        Port (
            a, b: in std_logic_vector(15 downto 0);
            cin: in std_logic;
            sum: out std_logic_vector(15 downto 0);
            pg, gg, cout: out std_logic
        );
    end component;
       
    signal inAdder1, outAdder: std_logic_vector(15 downto 0);
begin
    adder: CLA16bits port map(A => inAdder1, B => x"0001", cin => '0', sum => outAdder);
    
    output <= outAdder(7 downto 0) when addTwo = '1' and outAdder(8) = '0' else 
              x"FF" when addTwo = '1' and outAdder(8) = '1' else 
              input;
    -- TODO: check for overflow/underflow
end Behavioral;