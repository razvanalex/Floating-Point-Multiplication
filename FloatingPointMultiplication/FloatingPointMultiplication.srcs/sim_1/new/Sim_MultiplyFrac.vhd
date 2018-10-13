library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Sim_MultiplyFrac is
--  Port ( );
end Sim_MultiplyFrac;

architecture Behavioral of Sim_MultiplyFrac is
    component MultiplyFractions is
        Port ( 
            A, B: in std_logic_vector(22 downto 0);
            As, Bs: in std_logic;
            result: out std_logic_vector(22 downto 0);
            Rs: out std_logic
        );
    end component;
    
    signal A, B, result : std_logic_vector(23 downto 0);
begin
    uut1 : MultiplyFractions port map(
                                         A => A(22 downto 0), 
                                         B => B(22 downto 0), 
                                         As => A(23), 
                                         Bs => B(23), 
                                         result => result(22 downto 0),
                                         Rs => result(23)
                                     );
    
    sim_proc: process 
    begin
        A <= x"000001";
        B <= x"000001";
        
        wait for 100ns;
        A <= x"000001";
        B <= x"00000F";
        
        wait for 100ns;
        A <= x"00000F";
        B <= x"000001";
        
        wait for 100ns;
        A <= x"000003";
        B <= x"000004";
        
        wait for 100ns;
        A <= x"000005";
        B <= x"000005";
        
        wait for 100ns;
        A <= x"000002";
        B <= x"000007";
        
        wait for 100ns;
        A <= x"000009";
        B <= x"000006";
        
        wait for 100ns;
        A <= x"0000DD";
        B <= x"00002A";
        
        wait for 100ns;
        A <= x"111111";
        B <= x"2131AF";
        
        wait for 100ns;
        A <= x"001112";
        B <= x"00FEDA";
        
        wait for 100ns;
    end process;

end Behavioral;
