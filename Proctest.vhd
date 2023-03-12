LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY Proctest IS
END Proctest;
 
ARCHITECTURE behavior OF Proctest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Processador
    PORT(
         PIN : IN  std_logic_vector(7 downto 0);
         reset : IN  std_logic;
         clk : IN  std_logic;
         opcode : IN  std_logic_vector(4 downto 0);
         SEL_R : IN  std_logic;
         Constante : IN  std_logic_vector(7 downto 0);
         Dados_M : IN  std_logic_vector(7 downto 0);
         POUT : OUT  std_logic_vector(7 downto 0);
         Operando1 : OUT  std_logic_vector(7 downto 0);
         Endereco : OUT  std_logic_vector(7 downto 0);
         WR : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal PIN : std_logic_vector(7 downto 0) := (others => '0');
   signal reset : std_logic := '0';
   signal clk : std_logic := '0';
   signal opcode : std_logic_vector(4 downto 0) := (others => '0');
   signal SEL_R : std_logic := '0';
   signal Constante : std_logic_vector(7 downto 0) := (others => '0');
   signal Dados_M : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal POUT : std_logic_vector(7 downto 0);
   signal Operando1 : std_logic_vector(7 downto 0);
   signal Endereco : std_logic_vector(7 downto 0);
   signal WR : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Processador PORT MAP (
          PIN => PIN,
          reset => reset,
          clk => clk,
          opcode => opcode,
          SEL_R => SEL_R,
          Constante => Constante,
          Dados_M => Dados_M,
          POUT => POUT,
          Operando1 => Operando1,
          Endereco => Endereco,
          WR => WR
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
      
		reset <= '1'; wait for clk_period*2;
      PIN <= "00010001"; reset <= '0'; Dados_M <= "00010101";
		Opcode <= "00010"; Sel_R <= '1'; Constante <= "00001010"; wait for clk_period; -- LD RB, 10
		Opcode <= "00000"; Sel_R <= '0'; Constante <= "XXXXXXXX"; wait for clk_period; -- LDP RA
		--Opcode <= "10010"; Sel_R <= '0'; Constante <= "00000111"; wait for clk_period; -- JN RA, 7
		Opcode <= "01011"; Sel_R <= 'X'; Constante <= "XXXXXXXX"; wait for clk_period; -- CMP RA, RB			
		--Opcode <= "01111"; Sel_R <= 'X'; Constante <= "00001110"; wait for clk_period; -- JG 14
		Opcode <= "00010"; Sel_R <= '0'; Constante <= "11111111"; wait for clk_period; -- LD RA, -1
		--Opcode <= "10011"; Sel_R <= 'X'; Constante <= "00011101"; wait for clk_period; -- JMP 29
		Opcode <= "00010"; Sel_R <= '1'; Constante <= "11111111"; wait for clk_period; -- LD RB, -1
		Opcode <= "01010"; Sel_R <= 'X'; Constante <= "XXXXXXXX"; wait for clk_period; -- XOR RA, RB
		Opcode <= "00010"; Sel_R <= '1'; Constante <= "00000001"; wait for clk_period; -- LD RB, 1
		Opcode <= "00101"; Sel_R <= 'X'; Constante <= "XXXXXXXX"; wait for clk_period; -- ADD RA, RB	
		Opcode <= "00010"; Sel_R <= '1'; Constante <= "00001110"; wait for clk_period; -- LD RB, 14
		Opcode <= "00110"; Sel_R <= 'X'; Constante <= "XXXXXXXX"; wait for clk_period; -- SUB RA, RB
		--Opcode <= "10011"; Sel_R <= 'X'; Constante <= "00011101"; wait for clk_period; -- JMP 29
		Opcode <= "00100"; Sel_R <= '0'; Constante <= "00001010"; wait for clk_period; -- ST [10], RA			
		Opcode <= "00010"; Sel_R <= '0'; Constante <= "00000000"; wait for clk_period; -- LD RA, 0
		Opcode <= "00100"; Sel_R <= '0'; Constante <= "00001011"; wait for clk_period; -- ST [11], RA
		Opcode <= "00010"; Sel_R <= '0'; Constante <= "00000011"; wait for clk_period; -- LD RA, 3
		Opcode <= "00100"; Sel_R <= '0'; Constante <= "00000101"; wait for clk_period; -- ST [5], RA
		Opcode <= "00010"; Sel_R <= '0'; Constante <= "00001011"; wait for clk_period; -- LD RA, [11]
		Opcode <= "00010"; Sel_R <= '1'; Constante <= "00001010"; wait for clk_period; -- LD RB, [10]
		Opcode <= "00101"; Sel_R <= 'X'; Constante <= "XXXXXXXX"; wait for clk_period; -- ADD RA, RB			
		Opcode <= "00100"; Sel_R <= '0'; Constante <= "00001011"; wait for clk_period; -- ST [11], RA
		Opcode <= "00010"; Sel_R <= '0'; Constante <= "00000101"; wait for clk_period; -- LD RA, [5]
		Opcode <= "00010"; Sel_R <= '1'; Constante <= "00000001"; wait for clk_period; -- LD RB, 1
		Opcode <= "00110"; Sel_R <= 'X'; Constante <= "XXXXXXXX"; wait for clk_period; -- SUB RA, RB
		--Opcode <= "10001"; Sel_R <= '0'; Constante <= "00011100"; wait for clk_period; -- JZ RA, 28
		--Opcode <= "10011"; Sel_R <= 'X'; Constante <= "00010010"; wait for clk_period; -- JMP 18
		Opcode <= "00010"; Sel_R <= '0'; Constante <= "00001011"; wait for clk_period; -- LD RA, [11]
		Opcode <= "00001"; Sel_R <= '0'; Constante <= "XXXXXXXX"; wait for clk_period; -- STP RA
		--Opcode <= "10011"; Sel_R <= 'X'; Constante <= "00011110"; wait for clk_period; -- JMP 30
		assert FALSE Report "Simulation Finished" severity FAILURE;
   end process;

END;
