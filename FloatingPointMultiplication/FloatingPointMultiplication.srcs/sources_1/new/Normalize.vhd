library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Normalize is
    Port (
        input: in std_logic_vector(25 downto 0);
        output: out std_logic_vector(23 downto 0);
        addTwo: out std_logic
    );
end Normalize;


architecture Behavioral of Normalize is
begin
    -- Pass the sign bit to the output
    output(23) <= input(25);
    
    -- Check the 23rd bit if it's 0 or 1. For 1 => normalize, for 0 => do nothing.
    checkNormalization: process (input)
    begin
        if input(24) = '0' then
            output(22 downto 0) <= input(22 downto 0);
            addTwo <= '0';
        else 
            output(22 downto 0) <= input(23 downto 1);
            addTwo <= '1';
        end if;
    end process;
end Behavioral;
