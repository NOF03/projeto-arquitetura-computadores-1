LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY sdds IS
END sdds;
 
ARCHITECTURE behavior OF sdds IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MemoriaDeInstrucoes
    PORT(
         Endereco : IN  std_logic_vector(7 downto 0);
         opcode : OUT  std_logic_vector(4 downto 0);
         SEL_R : OUT  std_logic;
         Constante : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Endereco : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal opcode : std_logic_vector(4 downto 0);
   signal SEL_R : std_logic;
   signal Constante : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MemoriaDeInstrucoes PORT MAP (
          Endereco => Endereco,
          opcode => opcode,
          SEL_R => SEL_R,
          Constante => Constante
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      
      -- insert stimulus here 
		Endereco <= "00000000"; wait for 100 ns;	
      wait;
   end process;

END;
