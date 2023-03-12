LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY RegBtest IS
END RegBtest;
 
ARCHITECTURE behavior OF RegBtest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT RegistoB
    PORT(
         Dados_R : IN  std_logic_vector(7 downto 0);
         SEL_R : IN  std_logic;
         ESCR_R : IN  std_logic;
         clk : IN  std_logic;
         Operando2 : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Dados_R : std_logic_vector(7 downto 0) := (others => '0');
   signal SEL_R : std_logic := '0';
   signal ESCR_R : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal Operando2 : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: RegistoB PORT MAP (
          Dados_R => Dados_R,
          SEL_R => SEL_R,
          ESCR_R => ESCR_R,
          clk => clk,
          Operando2 => Operando2
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
      -- hold reset state for 100 ns.
      Dados_R <= "00010010"; SEL_R <= '0'; ESCR_R <= '0';  wait for clk_period*10;
		Dados_R <= "00011010"; SEL_R <= '0'; ESCR_R <= '1';  wait for clk_period*10;
		Dados_R <= "00010110"; SEL_R <= '1'; ESCR_R <= '0';  wait for clk_period*10;
		Dados_R <= "00010010"; SEL_R <= '1'; ESCR_R <= '1';  wait for clk_period*10;
		
      assert FALSE Report "Simulation Finished" severity FAILURE;
   end process;

END;
