LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY MBtest IS
END MBtest;
 
ARCHITECTURE behavior OF MBtest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MotherBoard
    PORT(
         PIN : IN  std_logic_vector(7 downto 0);
         reset : IN  std_logic;
         clk : IN  std_logic;
         POUT : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal PIN : std_logic_vector(7 downto 0) := (others => '0');
   signal reset : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal POUT : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MotherBoard PORT MAP (
          PIN => PIN,
          reset => reset,
          clk => clk,
          POUT => POUT
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

      reset <= '1'; wait for Clk_period*2;
		reset <= '0'; PIN <= "00000111"; wait for clk_period*8; -- POUT <= -1 ( 0 <= PIN <= 10 )
		reset <= '1'; wait for Clk_period*2;
		reset <= '0'; PIN <= "11111111"; wait for clk_period*11; -- POUT <= -PIN - 14 ( PIN < 0 )
		reset <= '1'; wait for Clk_period*2;
		reset <= '0'; PIN <= "00001100"; wait for clk_period*40; -- POUT <= PIN * 2 ( PIN > 10 )

		assert FALSE Report "Simulation Finished" severity FAILURE;
	end process;
END;
