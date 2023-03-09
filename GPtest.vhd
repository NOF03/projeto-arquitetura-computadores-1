--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:48:52 03/09/2023
-- Design Name:   
-- Module Name:   C:/Users/nunoo/Documents/XilinxProjects/P1/GPtest.vhd
-- Project Name:  P1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: GestorDePerifericos
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY GPtest IS
END GPtest;
 
ARCHITECTURE behavior OF GPtest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT GestorDePerifericos
    PORT(
         PIN : IN  std_logic_vector(7 downto 0);
         Operando1 : IN  std_logic_vector(7 downto 0);
         ESCR_P : IN  std_logic;
         clk : IN  std_logic;
         Dados_IN : OUT  std_logic_vector(7 downto 0);
         POUT : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal PIN : std_logic_vector(7 downto 0) := (others => '0');
   signal Operando1 : std_logic_vector(7 downto 0) := (others => '0');
   signal ESCR_P : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal Dados_IN : std_logic_vector(7 downto 0);
   signal POUT : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: GestorDePerifericos PORT MAP (
          PIN => PIN,
          Operando1 => Operando1,
          ESCR_P => ESCR_P,
          clk => clk,
          Dados_IN => Dados_IN,
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
      -- hold reset state for 100 ns.
		PIN <= "00000101"; Operando1 <= "00001010"; ESCR_P <= '0'; 
		
      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
