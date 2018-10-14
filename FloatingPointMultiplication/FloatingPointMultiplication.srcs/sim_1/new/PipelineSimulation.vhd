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
    signal A, B, R, RealResult: std_logic_vector(31 downto 0);
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
        
        -- RANDOM TESTS
        A <= x"42353EE5";
        B <= x"48DFDB28";
        RealResult <= transport x"4B9E7CF3" after 75ns;
        wait for 20ns;
        
        A <= x"45AAD8FF";
        B <= x"479A30B9";
        RealResult <= transport x"4DCDCE1B" after 75ns;
        wait for 20ns;
        
        A <= x"35FAD8FF";
        B <= x"578A297E";
        RealResult <= transport x"4E0761A2" after 75ns;
        wait for 20ns;
        
        A <= x"28DFC904";
        B <= x"B7323500";
        RealResult <= transport x"A09BC819" after 75ns;
        wait for 20ns;
        
        A <= x"494E62A9";
        B <= x"47564504";
        RealResult <= transport x"512CBE1D" after 75ns;
        wait for 20ns;
        
        A <= x"40A33333";
        B <= x"40D40000";
        RealResult <= transport x"42072666" after 75ns;
        wait for 20ns;
        
        A <= x"40000000";
        B <= x"4148A3D7";
        RealResult <= transport x"41C8A3D7" after 75ns;
        wait for 20ns;
        
        A <= x"C2347AE1";
        B <= x"44140EE9";
        RealResult <= transport x"C6D0C31A" after 75ns;
        wait for 20ns;
        
        A <= x"C2C98745";
        B <= x"C24EC14A";
        RealResult <= transport x"45A2C303" after 75ns;
        wait for 20ns;

   
        -- ZERO TEST
        A <= x"80000000";
        B <= x"00000000";
        RealResult <= transport x"80000000" after 75ns;
        wait for 20ns;


        -- ONE TEST
        A <= x"BFA00000";
        B <= x"3FA00000";
        RealResult <= transport x"BFC80000" after 75ns;
        wait for 20ns;
            
            
        -- ZERO TESTS
        A <= x"00000000";
        B <= x"4402DCCD";
        RealResult <= transport x"00000000" after 75ns;
        wait for 20ns;

        A <= x"4402AC1F";
        B <= x"00000000";
        RealResult <= transport x"00000000" after 75ns;
        wait for 20ns;
        
        
        -- OVERFLOW TESTS
        A <= x"7F02DCCD";
        B <= x"60501800";
        RealResult <= transport x"7F800000" after 75ns;
        wait for 20ns;
        
        A <= x"FB27A03D";
        B <= x"615EB51D";
        RealResult <= transport x"FF800000" after 75ns;
        wait for 20ns;


        -- UNDERFLOW TESTS
        A <= x"07D7EE00";
        B <= x"035EB51D";
        RealResult <= transport x"00000000" after 75ns;
        wait for 20ns;
             
        A <= x"A527A03D";
        B <= x"0BDEB51D";
        RealResult <= transport x"80000000" after 75ns;
        wait for 1000ns;
   
    end process;

end Behavioral;
