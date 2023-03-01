library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RegistoB is
    Port ( Dados_R : in  STD_LOGIC_VECTOR (7 downto 0);
           SEL_R : in  STD_LOGIC;
           ESCR_R : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           Operando2 : out  STD_LOGIC_VECTOR (7 downto 0));
end RegistoB;

architecture Behavioral of RegistoB is

begin
	process(Dados_R, SEL_R, ESCR_R, clk)
	
		begin 
			if (SEL_R <= '1' and rising_edge(clk) and ESCR_R <= '1') then
				Operando2 <= Dados_R;
			end if;
	
	end process;

end Behavioral;
