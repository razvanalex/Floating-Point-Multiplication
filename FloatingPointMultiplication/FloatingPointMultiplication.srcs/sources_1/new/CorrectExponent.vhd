library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity CorrectExponent is
    Port ( 
        result_in: in std_logic_vector(7 downto 0);
        zero_exp: in std_logic;
        result_out: out std_logic_vector(7 downto 0)
    );
end CorrectExponent;


architecture Behavioral of CorrectExponent is
    component CLA16bits is
        Port (
            a, b: in std_logic_vector(15 downto 0);
            cin: in std_logic;
            sum: out std_logic_vector(15 downto 0);
            pg, gg, cout: out std_logic
        );
    end component;
    
    signal inAdder1, inAdder2, outAdder: std_logic_vector(15 downto 0) := x"0000";
begin
    inAdder1(7 downto 0) <= result_in;
    inAdder2(7 downto 0) <= x"81"; 
    adder: CLA16bits port map(a =>inAdder1, b => inAdder2, cin => '0', sum => outAdder);

    process (zero_exp, result_in, outAdder)
    begin
        if zero_exp = '0' then
            result_out <= result_in;
        else
            result_out <= outAdder(7 downto 0);
        end if;
    end process;
  
    -- TODO: check for overflow/underflow
end Behavioral;
