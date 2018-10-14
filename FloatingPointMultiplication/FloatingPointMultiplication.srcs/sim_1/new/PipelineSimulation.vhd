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
            wait for 5ns;
            clk <= '0';
            wait for 5ns;
        end loop;
    end process;
    
    stim_proc: process begin
        A <= x"00000000";
        B <= x"0FF00A00";
        wait for 100ns;
    end process;

end Behavioral;
