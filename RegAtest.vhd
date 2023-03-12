LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY RegAtest IS
END RegAtest;
 
ARCHITECTURE behavior OF RegAtest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT RegistoA
    PORT(
         Dados_R : IN  std_logic_vector(7 downto 0);
         SEL_R : IN  std_logic;
         ESCR_R : IN  std_logic;
         clk : IN  std_logic;
         Operando1 : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Dados_R : std_logic_vector(7 downto 0) := (others => '0');
   signal SEL_R : std_logic := '0';
   signal ESCR_R : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal Operando1 : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: RegistoA PORT MAP (
          Dados_R => Dados_R,
          SEL_R => SEL_R,
          ESCR_R => ESCR_R,
          clk => clk,
          Operando1 => Operando1
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

      Dados_R <= "00010010"; SEL_R <= '1'; ESCR_R <= '1';  wait for clk_period*10;
		Dados_R <= "00011010"; SEL_R <= '1'; ESCR_R <= '0';  wait for clk_period*10;
		Dados_R <= "00010110"; SEL_R <= '0'; ESCR_R <= '0';  wait for clk_period*10;
		Dados_R <= "00010010"; SEL_R <= '0'; ESCR_R <= '1';  wait for clk_period*10;
		
      assert FALSE Report "Simulation Finished" severity FAILURE;
   end process;

END;
