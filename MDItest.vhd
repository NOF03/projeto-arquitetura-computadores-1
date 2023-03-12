LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY MDItest IS
END MDItest;
 
ARCHITECTURE behavior OF MDItest IS 
 
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
	
      Endereco <= "00000000"; wait for 10 ns;
		Endereco <= "00000001"; wait for 10 ns;
		Endereco <= "00000010"; wait for 10 ns;
		Endereco <= "00000011"; wait for 10 ns;
		Endereco <= "00000100"; wait for 10 ns;
		Endereco <= "00000101"; wait for 10 ns;
		Endereco <= "00000110"; wait for 10 ns;
		Endereco <= "00000111"; wait for 10 ns;
		Endereco <= "00001000"; wait for 10 ns;
		Endereco <= "00001001"; wait for 10 ns;
		Endereco <= "00001010"; wait for 10 ns;
		Endereco <= "00001011"; wait for 10 ns;
		Endereco <= "00001100"; wait for 10 ns;
		Endereco <= "00001101"; wait for 10 ns;
		Endereco <= "00001110"; wait for 10 ns;
		Endereco <= "00001111"; wait for 10 ns;
		Endereco <= "00010000"; wait for 10 ns;
		Endereco <= "00010001"; wait for 10 ns;
		Endereco <= "00010010"; wait for 10 ns;
		Endereco <= "00010011"; wait for 10 ns;
		Endereco <= "00010100"; wait for 10 ns;
		Endereco <= "00010101"; wait for 10 ns;
		Endereco <= "00010110"; wait for 10 ns;
		Endereco <= "00010111"; wait for 10 ns;
		Endereco <= "00011000"; wait for 10 ns;
		Endereco <= "00011001"; wait for 10 ns;
		Endereco <= "00011010"; wait for 10 ns;
		Endereco <= "00011011"; wait for 10 ns;
		Endereco <= "00011100"; wait for 10 ns;
		Endereco <= "00011101"; wait for 10 ns;
		Endereco <= "00011110"; wait for 10 ns;
		
		assert FALSE Report "Simulation Finished" severity FAILURE;
   end process;

END;
