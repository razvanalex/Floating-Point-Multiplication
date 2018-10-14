library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity MultiplicationPipeline is
    Port ( 
        clk: in std_logic;
        A: in std_logic_vector(31 downto 0);
        B: in std_logic_vector(31 downto 0);
        R: out std_logic_vector(31 downto 0)
    );
end MultiplicationPipeline;


architecture Behavioral of MultiplicationPipeline is
    component Register64bits is
        Port ( 
            clk, clear, load: in std_logic;
            d: in std_logic_vector(63 downto 0);
            q: out std_logic_vector(63 downto 0)
        );
    end component;
    
    component Normalize is
        Port (
            input: in std_logic_vector(26 downto 0);
            output: out std_logic_vector(23 downto 0);
            normFlag: out std_logic_vector(1 downto 0)
        );
    end component;

    component MultiplyFractionsWithZeroCheck is
        Port ( 
            A, B: in std_logic_vector(22 downto 0);
            As, Bs: in std_logic;
            flag: in std_logic_vector(1 downto 0);
            result: out std_logic_vector(24 downto 0);
            Rs: out std_logic
        );
    end component;
    
    component CorrectExponent is
        Port ( 
            result_in: in std_logic_vector(7 downto 0);
            zero_exp: in std_logic;
            result_out: out std_logic_vector(7 downto 0)
        );
    end component;
    
    component AddExponents is
        Port (
            a, b: in std_logic_vector(7 downto 0);
            result: out std_logic_vector(7 downto 0);
            flag: out std_logic_vector(1 downto 0)
        );
    end component;
    
    component AdjustExponent is
        Port ( 
            input: in std_logic_vector(7 downto 0);
            normFlag: in std_logic_vector(1 downto 0);
            output: out std_logic_vector(7 downto 0)
        );
    end component;
    
    signal flag: std_logic_vector(1 downto 0);
    signal normFlag: std_logic_vector(1 downto 0);
    
    signal ExpReg1In, ExpReg1Out: std_logic_vector(63 downto 0) := x"0000000000000000";
    signal FracReg1In, FracReg1Out: std_logic_vector(63 downto 0) := x"0000000000000000";
    
    signal ExpReg2In, ExpReg2Out: std_logic_vector(63 downto 0) := x"0000000000000000";
    signal FracReg2In, FracReg2Out: std_logic_vector(63 downto 0) := x"0000000000000000";
    
    signal ExpReg3In, ExpReg3Out: std_logic_vector(63 downto 0) := x"0000000000000000";
    signal FracReg3Out: std_logic_vector(63 downto 0) := x"0000000000000000";
    
    signal ExpReg4In, ExpReg4Out: std_logic_vector(63 downto 0) := x"0000000000000000";
    signal FracReg4In, FracReg4Out: std_logic_vector(63 downto 0) := x"0000000000000000";

begin
    -- Load the operands into registers
    ExpReg1In(15 downto 8) <= A(30 downto 23);
    ExpReg1In( 7 downto 0) <= B(30 downto 23);
    ExpReg1: Register64bits port map(d => ExpReg1In, q => ExpReg1Out, clk => clk, load => '1', clear => '0');
    
    FracReg1In(47) <= A(31);
    FracReg1In(46 downto 24) <= A(22 downto 0);
    FracReg1In(23) <= B(31);
    FracReg1In(22 downto 0) <= B(22 downto 0);
    FracReg1: Register64bits port map(d => FracReg1In, q => FracReg1Out, clk => clk, load => '1', clear => '0');
    
    -- Execute Stage 1.
    addExps: AddExponents port map(
        a => ExpReg1Out(15 downto 8), 
        b => ExpReg1Out( 7 downto 0), 
        result => ExpReg2In(7 downto 0), 
        flag => flag
    );
    multFrac: MultiplyFractionsWithZeroCheck port map(
        A => FracReg1Out(46 downto 24), 
        B => FracReg1Out(22 downto 0),
        As => FracReg1Out(47), 
        Bs => FracReg1Out(23),
        flag => flag,
        result => FracReg2In(24 downto 0), 
        Rs => FracReg2In(25)
    );
    ExpReg2In(8) <= flag(0) and flag(1);
    FracReg2In(30) <= flag(0) and flag(1);
    
    -- Load the operands into registers
    ExpReg2: Register64bits port map(d => ExpReg2In, q => ExpReg2Out, clk => clk, load => '1', clear => '0');
    FracReg2: Register64bits port map(d => FracReg2In, q => FracReg2Out, clk => clk, load => '1', clear => '0');
    
    -- Execute Stage 2.
    correctExp: CorrectExponent port map(result_in => ExpReg2Out(7 downto 0), zero_exp => ExpReg2Out(8), result_out => ExpReg3In(7 downto 0));
    
    -- Load the operands into registers
    ExpReg3: Register64bits port map(d => ExpReg3In, q => ExpReg3Out, clk => clk, load => '1', clear => '0');
    FracReg3: Register64bits port map(d => FracReg2Out, q => FracReg3Out, clk => clk, load => '1', clear => '0');
    
    -- Execute Stage 3.
    adjExp: AdjustExponent port map(input => ExpReg3Out(7 downto 0), 
        normFlag => normFlag, 
        output => ExpReg4In(7 downto 0)
    );
    
    normFrac: Normalize port map(
        input(26 downto 0) => FracReg3Out(26 downto 0),
        normFlag => normFlag, 
        output => FracReg4In(23 downto 0)
    );
    
    -- Load the operands into registers
    ExpReg4: Register64bits port map(d => ExpReg4In, q => ExpReg4Out, clk => clk, load => '1', clear => '0');
    FracReg4: Register64bits port map(d => FracReg4In, q => FracReg4Out, clk => clk, load => '1', clear => '0');
    
    -- Return the result
    R(31) <= FracReg4Out(23);
    R(30 downto 23) <= ExpReg4Out(7 downto 0);
    R(22 downto 0) <= FracReg4Out(22 downto 0);
end Behavioral;
