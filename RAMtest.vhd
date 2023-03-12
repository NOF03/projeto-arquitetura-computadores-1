LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY RAMtest IS
END RAMtest;
 
ARCHITECTURE behavior OF RAMtest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MemoriaDeDadosRAM
    PORT(
         WR : IN  std_logic;
         Operando1 : IN  std_logic_vector(7 downto 0);
         Constante : IN  std_logic_vector(7 downto 0);
         clk : IN  std_logic;
         Dados_M : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal WR : std_logic := '0';
   signal Operando1 : std_logic_vector(7 downto 0) := (others => '0');
   signal Constante : std_logic_vector(7 downto 0) := (others => '0');
   signal clk : std_logic := '0';

 	--Outputs
   signal Dados_M : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MemoriaDeDadosRAM PORT MAP (
          WR => WR,
          Operando1 => Operando1,
          Constante => Constante,
          clk => clk,
          Dados_M => Dados_M
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

      WR <= '1'; Operando1 <= "10101010"; Constante <= "00001010";  wait for clk_period*10;
		WR <= '1'; Operando1 <= "00000000"; Constante <= "01111001";  wait for clk_period*10;
		WR <= '0'; Operando1 <= "11111111"; Constante <= "00001010";  wait for clk_period*10;
		WR <= '0'; Operando1 <= "10101010"; Constante <= "01111001";  wait for clk_period*10;

      wait;
   end process;

END;
