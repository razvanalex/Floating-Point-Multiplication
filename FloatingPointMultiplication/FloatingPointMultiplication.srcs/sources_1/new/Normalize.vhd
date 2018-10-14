library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Normalize is
    Port (
        input: in std_logic_vector(26 downto 0);
        exception: in std_logic_vector(1 downto 0);
        output: out std_logic_vector(23 downto 0);
        normFlag: out std_logic_vector(1 downto 0)
    );
end Normalize;


architecture Behavioral of Normalize is
begin
    -- Pass the sign bit to the output
    output(23) <= input(25);
    
    -- Check the 23rd bit if it's 0 or 1. For 1 => normalize, for 0 => do nothing.
    checkNormalization: process (input)
    begin
        if (input(26) = '0' and input(23 downto 0) = x"000000") then
            normFlag <= "00"; -- Set number = 0
            output(22 downto 0) <= input(22 downto 0);
        elsif exception = "01" then
             normFlag <= "00"; -- Set number = 0
             output(22 downto 0) <= "00000000000000000000000";
        elsif exception = "10" then
            normFlag <= "01"; -- Do not shit
            output(22 downto 0) <= "00000000000000000000000"; -- Set number = INF
        elsif exception = "00" then
            if input(24) = '0' then
                output(22 downto 0) <= input(22 downto 0);
                normFlag <= "01"; -- Do not shit
            else 
                output(22 downto 0) <= input(23 downto 1);
                normFlag <= "10"; -- Shit
            end if;
        end if;
    end process;
end Behavioral;
