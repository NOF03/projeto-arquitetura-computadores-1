--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:52:51 03/09/2023
-- Design Name:   
-- Module Name:   C:/Users/nunoo/Documents/XilinxProjects/P1/MUXRtest.vhd
-- Project Name:  P1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MultiplexerDosRegistos
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
      -- hold reset state for 100 ns.
      Dados_IN <= "00001100"; Dados_M <= "00000001"; Resultado <= "00101001"; Constante <= "00001001"; SEL_Data <= "11"; wait for 100 ns;	


      -- insert stimulus here 

      wait;
   end process;

END;
