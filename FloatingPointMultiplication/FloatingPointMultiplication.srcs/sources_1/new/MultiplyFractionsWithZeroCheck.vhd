library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity MultiplyFractionsWithZeroCheck is
    Port ( 
        A, B: in std_logic_vector(22 downto 0);
        As, Bs: in std_logic;
        flag: in std_logic_vector(1 downto 0);
        result: out std_logic_vector(24 downto 0);
        Rs: out std_logic
    );
end MultiplyFractionsWithZeroCheck;


architecture Behavioral of MultiplyFractionsWithZeroCheck is
    component MultiplyFractions is
        Port ( 
            A, B: in std_logic_vector(22 downto 0);
            As, Bs: in std_logic;
            result: out std_logic_vector(24 downto 0);
            Rs: out std_logic
        );
    end component;
    
    signal temp_result: std_logic_vector(24 downto 0);
begin
    mult : MultiplyFractions port map(A => A, B => B, As => As, Bs => Bs, result => temp_result, Rs => Rs);

    -- Check for Zeros
    process (flag, A, B, temp_result)
    begin
        if flag = "01" and A = "00000000000000000000000"  then
            -- Number A is 0, hence the result is 0
            result <= "0000000000000000000000000";
        elsif flag = "10" and B = "00000000000000000000000"  then
            -- Number B is 0, hence the result is 0
             result <= "0000000000000000000000000";
        elsif flag = "00" then
            -- Does not matter mantissa of both numbers; the result is still 0
             result <= "0000000000000000000000000";
        else 
            -- Do the multiplication of both significands
            result <= temp_result;
        end if;
    end process;
end Behavioral;