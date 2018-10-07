library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity AddExponents is
	Port (
		a, b: in std_logic_vector(7 downto 0);
		result: out std_logic_vector(7 downto 0);
		flag: out std_logic_vector(1 downto 0)
	);
end AddExponents;


architecture Behavioral of AddExponents is
    component CLA32bits is
        Port ( 
            a, b: in std_logic_vector(31 downto 0);
            cin: in std_logic;
            sum : out std_logic_vector(31 downto 0);
            cout: out std_logic
        );
    end component;
    
    signal input1, input2: std_logic_vector(31 downto 0) := x"00000000";
    signal output: std_logic_vector(31 downto 0);
begin
    input1(7 downto 0) <= a;
    input2(7 downto 0) <= b; 
    add: CLA32bits port map (a => input1, b => input2, cin => '0', sum(7 downto 0) => result);
   
	process (a, b)
	begin
		if a = "00000000" and b = "00000000" then
			flag <= "00";
		elsif a = "00000000" then
			flag <= "01";
		elsif b = "00000000" then
			flag <= "10";
	    else
	        flag <= "11";
		end if;
	end process;

end Behavioral;
