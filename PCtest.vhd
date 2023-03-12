LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY PCtest IS
END PCtest;
 
ARCHITECTURE behavior OF PCtest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT PC
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         ESCR_PC : IN  std_logic;
         Constante : IN  std_logic_vector(7 downto 0);
         Endereco : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal ESCR_PC : std_logic := '0';
   signal Constante : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal Endereco : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: PC PORT MAP (
          clk => clk,
          reset => reset,
          ESCR_PC => ESCR_PC,
          Constante => Constante,
          Endereco => Endereco
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
		
		reset <= '0'; ESCR_PC <= '1'; Constante <= "00001101"; wait for clk_period*10;
		reset <= '0'; ESCR_PC <= '0'; Constante <= "00001101"; wait for clk_period*10;
		reset <= '0'; ESCR_PC <= '0'; Constante <= "00001101"; wait for clk_period*10;
		reset <= '0'; ESCR_PC <= '1'; Constante <= "00001101"; wait for clk_period*10;
		reset <= '1'; ESCR_PC <= '1'; Constante <= "00001101"; wait for clk_period*10;

      assert FALSE Report "Simulation Finished" severity FAILURE;
   end process;

END;
