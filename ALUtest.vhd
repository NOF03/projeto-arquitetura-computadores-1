LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY ALUtest IS
END ALUtest;
 
ARCHITECTURE behavior OF ALUtest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU
    PORT(
         Operando1 : IN  std_logic_vector(7 downto 0);
         Operando2 : IN  std_logic_vector(7 downto 0);
         SEL_ALU : IN  std_logic_vector(2 downto 0);
         Resultado : OUT  std_logic_vector(7 downto 0);
         E_FLAG : OUT  std_logic_vector(4 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Operando1 : std_logic_vector(7 downto 0) := (others => '0');
   signal Operando2 : std_logic_vector(7 downto 0) := (others => '0');
   signal SEL_ALU : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal Resultado : std_logic_vector(7 downto 0);
   signal E_FLAG : std_logic_vector(4 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU PORT MAP (
          Operando1 => Operando1,
          Operando2 => Operando2,
          SEL_ALU => SEL_ALU,
          Resultado => Resultado,
          E_FLAG => E_FLAG
        );

   -- Stimulus process
   stim_proc: process
   begin		
		
		SEL_ALU <= "000"; Operando1 <= "00000001"; Operando2 <= "00000010"; wait for 10 ns;
		SEL_ALU <= "001"; Operando1 <= "00000001"; Operando2 <= "00000010"; wait for 10 ns;
		SEL_ALU <= "010"; Operando1 <= "00000001"; Operando2 <= "00000010"; wait for 10 ns;
		SEL_ALU <= "011"; Operando1 <= "00000001"; Operando2 <= "00000010"; wait for 10 ns;
		SEL_ALU <= "100"; Operando1 <= "00000001"; Operando2 <= "00000010"; wait for 10 ns;
		SEL_ALU <= "101"; Operando1 <= "00000001"; Operando2 <= "00000010"; wait for 10 ns;
		SEL_ALU <= "110"; Operando1 <= "00000001"; Operando2 <= "00000010"; wait for 10 ns;
		SEL_ALU <= "110"; Operando1 <= "00000001"; Operando2 <= "00000010"; wait for 10 ns;
		SEL_ALU <= "110"; Operando1 <= "00000001"; Operando2 <= "00000010"; wait for 10 ns;
		SEL_ALU <= "110"; Operando1 <= "00000001"; Operando2 <= "00000010"; wait for 10 ns;
		SEL_ALU <= "110"; Operando1 <= "00000001"; Operando2 <= "00000010"; wait for 10 ns;
		
		assert FALSE Report "Simulation Finished" severity FAILURE;
   end process;

END;
