library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SimulationCLA4bits is
--  Port ( );
end SimulationCLA4bits;

architecture Behavioral of SimulationCLA4bits is
    component CLA4bits is
        Port (
            a, b: in std_logic_vector(3 downto 0);
            cin: in std_logic;
            sum: out std_logic_vector(3 downto 0);
            pg, gg, cout: out std_logic
        );
    end component;
    
    signal a, b, sum: std_logic_vector(3 downto 0);
    signal cin, pg, gg, cout: std_logic;
begin
    uut1: CLA4bits port map(a => a, b => b, cin => cin, sum => sum, pg => pg, gg => gg, cout => cout);
    stim_proc: process begin
        a <= "0000";
        b <= "0001";
        cin <= '0';
        wait for 100ns;
        
        a <= "0001";
        b <= "0001";
        wait for 100ns;
        
        a <= "0001";
        b <= "0011";
        wait for 100ns;
        
        a <= "0001";
        b <= "0010";
        wait for 100ns;
        
        a <= "0111";
        b <= "1010";
        wait for 100ns;
        
        a <= "0001";
        b <= "1110";
        wait for 100ns;
        
        a <= "1111";
        b <= "1111";
        wait for 100ns;
        
        a <= "0000";
        b <= "0000";
        wait for 100ns;
        
        a <= "0101";
        b <= "0101";
        wait for 100ns;
        
        a <= "0110";
        b <= "1110";
        wait for 100ns;
    end process;
end Behavioral;
