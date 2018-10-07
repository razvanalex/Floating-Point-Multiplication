library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SimulationCLA16bits is
--  Port ( );
end SimulationCLA16bits;

architecture Behavioral of SimulationCLA16bits is
    component CLA16bits is
        Port ( 
            a, b: in std_logic_vector(15 downto 0);
            cin: in std_logic;
            sum : out std_logic_vector(15 downto 0);
            pg, gg, cout: out std_logic
        );
    end component;

    signal a, b, sum: std_logic_vector(15 downto 0);
    signal cin, pg, gg, cout: std_logic;
begin
    uut1: CLA16bits port map(a => a, b => b, cin => cin, sum => sum, pg => pg, gg => gg, cout => cout);
    stim_proc: process begin
        a <= x"0000";
        b <= x"1A3D";
        cin <= '0';
        wait for 100ns;
        
        a <= x"1234";
        b <= x"0001";
        wait for 100ns;
        
        a <= x"1234";
        b <= x"4321";
        wait for 100ns;
        
        a <= x"A3D2";
        b <= x"0234";
        wait for 100ns;
        
        a <= x"16D3";
        b <= x"02F4";
        wait for 100ns;
        
        a <= x"412D";
        b <= x"432D";
        wait for 100ns;
        
        a <= x"1111";
        b <= x"ABCD";
        wait for 100ns;
        
        a <= x"AAAA";
        b <= x"1111";
        wait for 100ns;
        
        a <= x"FFFF";
        b <= x"0001";
        wait for 100ns;
        
        a <= x"FFFF";
        b <= x"FFFF";
        wait for 100ns;
    end process;
end Behavioral;
