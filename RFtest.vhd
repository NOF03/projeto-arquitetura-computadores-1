LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY RFtest IS
END RFtest;
 
ARCHITECTURE behavior OF RFtest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT RegistoDeFlags
    PORT(
         SEL_FLAG : IN  std_logic_vector(2 downto 0);
         E_FLAG : IN  std_logic_vector(4 downto 0);
         ESCR_FLAG : IN  std_logic;
         clk : IN  std_logic;
         S_FLAG : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal SEL_FLAG : std_logic_vector(2 downto 0) := (others => '0');
   signal E_FLAG : std_logic_vector(4 downto 0) := (others => '0');
   signal ESCR_FLAG : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal S_FLAG : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: RegistoDeFlags PORT MAP (
          SEL_FLAG => SEL_FLAG,
          E_FLAG => E_FLAG,
          ESCR_FLAG => ESCR_FLAG,
          clk => clk,
          S_FLAG => S_FLAG
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
	
		SEL_FLAG <= "000"; E_FLAG <= "00011"; ESCR_FLAG <= '1';
      wait for clk_period*10;
		
		SEL_FLAG <= "001"; E_FLAG <= "00100"; ESCR_FLAG <= '0';
      wait for clk_period*10;
		
		SEL_FLAG <= "010"; E_FLAG <= "11000"; ESCR_FLAG <= '1';
      wait for clk_period*10;
		
		SEL_FLAG <= "011"; E_FLAG <= "00011"; ESCR_FLAG <= '0';
      wait for clk_period*10;
		
		SEL_FLAG <= "100"; E_FLAG <= "00100"; ESCR_FLAG <= '1';
      wait for clk_period*10;
		
		SEL_FLAG <= "101"; E_FLAG <= "00100"; ESCR_FLAG <= '1';
      wait for clk_period*10;

      assert FALSE Report "Simulation Finished" severity FAILURE;
		
   end process;

END;
