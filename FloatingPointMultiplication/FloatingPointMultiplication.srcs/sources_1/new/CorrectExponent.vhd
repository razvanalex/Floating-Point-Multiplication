library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity CorrectExponent is
    Port ( 
        result_in: in std_logic_vector(8 downto 0);
        zero_exp: in std_logic;
        result_out: out std_logic_vector(7 downto 0);
        exception: out std_logic_vector(1 downto 0)
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
    inAdder1(8 downto 0) <= result_in;
    inAdder2(8 downto 0) <= "010000001"; 
    adder: CLA16bits port map(a =>inAdder1, b => inAdder2, cin => '0', sum => outAdder);
    
    process (zero_exp, result_in, outAdder)
    begin   
        if result_in(8) = '0' and  outAdder(8) = '0' then
            -- We've got underflow
            exception <= "01";
            result_out <= x"00";
        elsif result_in(8) = '1' and  outAdder(8) = '0' then
            -- We've got overflow
            exception <= "10";
            result_out <= x"FF";
        else 
            -- We've got no exeption 
            exception <= "00";
            if zero_exp = '0' then
                result_out <= result_in(7 downto 0);
            else
                result_out <= outAdder(7 downto 0);
            end if;
        end if;
    end process;
end Behavioral;
