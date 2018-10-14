library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Sim_MultiplyFrac is
--  Port ( );
end Sim_MultiplyFrac;

architecture Behavioral of Sim_MultiplyFrac is
     component MultiplyFractionsWithZeroCheck is
    Port ( 
        A, B: in std_logic_vector(22 downto 0);
        As, Bs: in std_logic;
        flag: in std_logic_vector(1 downto 0);
        result: out std_logic_vector(24 downto 0);
        Rs: out std_logic
    );
end component;
    
    signal A, B : std_logic_vector(23 downto 0);
    signal result : std_logic_vector(25 downto 0);
    signal flag : std_logic_vector(1 downto 0);
begin
    uut1 : MultiplyFractionsWithZeroCheck port map(
                                         A => A(22 downto 0), 
                                         B => B(22 downto 0), 
                                         As => A(23), 
                                         Bs => B(23),
                                         flag => flag,
                                         result => result(24 downto 0),
                                         Rs => result(25)
                                     );
    
    sim_proc: process 
    begin
        A <= x"000000";
        B <= x"000001";
        flag <= "01";
        
        wait for 100ns;
        A <= x"000002";
        B <= x"00000F";
        flag <= "01";
        
        wait for 100ns;
        A <= x"00000F";
        B <= x"000000";
        flag <= "10";
        
        wait for 100ns;
        A <= x"000003";
        B <= x"000004";
        flag <= "10";
        
        wait for 100ns;
        A <= x"000005";
        B <= x"000005";
        flag <= "00";
        
        wait for 100ns;
        A <= x"000000";
        B <= x"000000";
        flag <= "00";
        
        wait for 100ns;
        A <= x"000009";
        B <= x"000006";
        flag <= "11";
        
        wait for 100ns;
        A <= x"0000DD";
        B <= x"00002A";
        flag <= "11";
        
        wait for 100ns;
        A <= "011110110000000000000000";
        B <= "101010000000000000000000";
        flag <= "11";
        
        wait for 100ns;
        A <= x"001112";
        B <= x"00FEDA";
        flag <= "11";
        
        wait for 100ns;
    end process;

end Behavioral;
