library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity PC is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           ESCR_PC : in  STD_LOGIC;
           Constante : in  STD_LOGIC_VECTOR (7 downto 0);
           Endereco : out  STD_LOGIC_VECTOR (7 downto 0));
end PC;

architecture Behavioral of PC is
signal counter : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
begin

	process(clk)
	
	begin
				
		if rising_edge(clk) then
			if reset = '1' then
				counter <= (others => '0');
			else 
				if ESCR_PC = '0' then
					counter <= counter + "00000001";
				else
					counter <= Constante;
				end if;
			end if;
		end if;
		
	end process;
Endereco <= counter;
end Behavioral;
