library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SimulationCLA32bits is
--  Port ( );
end SimulationCLA32bits;

architecture Behavioral of SimulationCLA32bits is
    component CLA32bits is
        Port ( 
            a, b: in std_logic_vector(31 downto 0);
            cin: in std_logic;
            sum : out std_logic_vector(31 downto 0);
            cout: out std_logic
        );
    end component;

    signal a, b, sum: std_logic_vector(31 downto 0);
    signal cin, cout: std_logic;
begin
    uut1: CLA32bits port map(a => a, b => b, cin => cin, sum => sum, cout => cout);
    stim_proc: process begin
        a <= x"00000000";
        b <= x"1A3D1A3D";
        cin <= '0';
        wait for 100ns;
        
        a <= x"12341234";
        b <= x"00010001";
        wait for 100ns;
        
        a <= x"12345678";
        b <= x"87654321";
        wait for 100ns;
        
        a <= x"A3D2E23F";
        b <= x"0234FFFF";
        wait for 100ns;
        
        a <= x"16D302F4";
        b <= x"02F416D3";
        wait for 100ns;
        
        a <= x"412D432D";
        b <= x"432D12DF";
        wait for 100ns;
        
        a <= x"11112222";
        b <= x"ABCDEFFF";
        wait for 100ns;
        
        a <= x"AAAABBBB";
        b <= x"11112222";
        wait for 100ns;
        
        a <= x"FFFFFFFF";
        b <= x"00000001";
        wait for 100ns;
        
        a <= x"FFFFFFFF";
        b <= x"FFFFFFFF";
        wait for 100ns;
    end process;
end Behavioral;
