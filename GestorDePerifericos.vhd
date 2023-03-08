library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity GestorDePerifericos is
    Port ( PIN : in  STD_LOGIC_VECTOR (7 downto 0);
           Operando1 : in  STD_LOGIC_VECTOR (7 downto 0);
           ESCR_P : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           Dados_IN : out  STD_LOGIC_VECTOR (7 downto 0);
           POUT : out  STD_LOGIC_VECTOR (7 downto 0));
end GestorDePerifericos;

architecture Behavioral of GestorDePerifericos is

begin
	process(PIN, Operando1, ESCR_P, clk)
		begin
		
		if ESCR_P = '0' then
			Dados_IN <= PIN;
		else 
			if rising_edge(clk) then
				POUT <= Operando1;
				
			end if;
		end if;
	end process;
end Behavioral;

