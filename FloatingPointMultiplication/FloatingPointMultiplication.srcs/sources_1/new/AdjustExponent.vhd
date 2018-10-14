library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity AdjustExponent is
    Port ( 
        input: in std_logic_vector(7 downto 0);
        normFlag: in std_logic_vector(1 downto 0);
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
       
    signal inAdder1, outAdder: std_logic_vector(15 downto 0) := x"0000";
begin
    inAdder1(7 downto 0) <= input;
    adder: CLA16bits port map(A => inAdder1, B => x"0001", cin => '0', sum => outAdder);
    
    output <= outAdder(7 downto 0) when normFlag = "10" and outAdder(8) = '0' else -- Add 1 to the exponent 
              x"FF" when normFlag = "10" and outAdder(8) = '1' else -- Overflow => Set exponent to 0xFF
              x"00" when normFlag = "00" else -- Set e = 0
              input when normFlag = "01"; -- No normalization, copy the exponent
              
    -- TODO: check for overflow/underflow
end Behavioral;