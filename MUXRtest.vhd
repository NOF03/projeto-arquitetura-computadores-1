LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY MUXRtest IS
END MUXRtest;
 
ARCHITECTURE behavior OF MUXRtest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MultiplexerDosRegistos
    PORT(
         Dados_IN : IN  std_logic_vector(7 downto 0);
         Dados_M : IN  std_logic_vector(7 downto 0);
         Resultado : IN  std_logic_vector(7 downto 0);
         Constante : IN  std_logic_vector(7 downto 0);
         SEL_Data : IN  std_logic_vector(1 downto 0);
         Dados_R : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Dados_IN : std_logic_vector(7 downto 0) := (others => '0');
   signal Dados_M : std_logic_vector(7 downto 0) := (others => '0');
   signal Resultado : std_logic_vector(7 downto 0) := (others => '0');
   signal Constante : std_logic_vector(7 downto 0) := (others => '0');
   signal SEL_Data : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal Dados_R : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MultiplexerDosRegistos PORT MAP (
          Dados_IN => Dados_IN,
          Dados_M => Dados_M,
          Resultado => Resultado,
          Constante => Constante,
          SEL_Data => SEL_Data,
          Dados_R => Dados_R
        );

   -- Stimulus process
   stim_proc: process
   begin		
	
      Dados_IN <= "00001100"; Dados_M <= "00000001"; Resultado <= "00101001"; Constante <= "00001001"; 
		
		SEL_Data <= "00"; wait for 10 ns;
		SEL_Data <= "01"; wait for 10 ns;
		SEL_Data <= "10"; wait for 10 ns;
		SEL_Data <= "11"; wait for 10 ns;
		
      assert FALSE Report "Simulation Finished" severity FAILURE;
   end process;

END;
