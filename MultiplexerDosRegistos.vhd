library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX_R is
    Port ( Dados_IN : in  STD_LOGIC_VECTOR (7 downto 0);
           Dados_M : in  STD_LOGIC_VECTOR (7 downto 0);
           Resultado : in  STD_LOGIC_VECTOR (7 downto 0);
           Constante : in  STD_LOGIC_VECTOR (7 downto 0);
           SEL_Data : in  STD_LOGIC_VECTOR (1 downto 0);
           Dados_R : out  STD_LOGIC_VECTOR (7 downto 0));
end MUX_R;

architecture Behavioral of MUX_R is

begin
	process(Dados_IN, Dados_M, Resultado, Constante, SEL_Data)
	
	begin
		case SEL_Data is
			when "00" => Dados_R <= Resultado;
			when "01" => Dados_R <= Dados_IN;
			when "10" => Dados_R <= Dados_M;
			when others => Dados_R <= Constante;
		end case;
		
	end process;
	
end Behavioral;
