library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Sim_test is
--  Port ( );
end Sim_test;

architecture Behavioral of Sim_test is
    component AddExponents is
        Port (
            a, b: in std_logic_vector(7 downto 0);
            result: out std_logic_vector(7 downto 0);
            flag: out std_logic_vector(1 downto 0)
        );
    end component;
    
    signal a, b, result: std_logic_vector(7 downto 0);
    signal flag: std_logic_vector(1 downto 0);
begin
    uut1: AddExponents port map(a => a, b => b, result => result, flag => flag);
    stim_proc: process begin
        a <= "10010001";
        b <= "11000101";
        wait for 100ns;
        
        a <= "10001101";
        b <= "10000101";
        wait for 100ns;
        
        a <= "00000000";
        b <= "10000101";
        wait for 100ns; 
          
        a <= "10000101";
        b <= "00000000";
        wait for 100ns; 
        
        a <= "00000000";
        b <= "00000000";
        wait for 100ns; 
          
        a <= "00111101";
        b <= "00001111";
        wait for 100ns;
                          
    end process;
end Behavioral;
