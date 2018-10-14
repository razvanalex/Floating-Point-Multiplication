library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity PipelineSimulation is
--  Port ( );
end PipelineSimulation;

architecture Behavioral of PipelineSimulation is
    component MultiplicationPipeline is
        Port ( 
            clk: in std_logic;
            A: in std_logic_vector(31 downto 0);
            B: in std_logic_vector(31 downto 0);
            R: out std_logic_vector(31 downto 0)
        );
    end component;
    
    signal clk: std_logic;
    signal A, B, R: std_logic_vector(31 downto 0);
begin
    uut1: MultiplicationPipeline port map(clk => clk, A => A, B => B, R => R);
    
    clk_proc : process begin
        loop
            clk <= '1';
            wait for 10ns;
            clk <= '0';
            wait for 10ns;
        end loop;
    end process;
    
    stim_proc: process begin
        wait for 5ns;
        
        A <= x"42F6E989";
        B <= x"439C0FBE";
        wait for 20ns;
        
        A <= x"FFFFFFFF";
        B <= x"00000000";
        wait for 20ns;
        
        A <= x"3F800000";
        B <= x"439C0FBE";
        wait for 20ns;
        
        A <= x"7FFFFFFF";
        B <= x"3F800000";
        wait for 1000ns;
        
    end process;

end Behavioral;
