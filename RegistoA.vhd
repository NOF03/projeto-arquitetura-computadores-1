library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RegistoA is
    Port ( Dados_R : in  STD_LOGIC_VECTOR (7 downto 0);
           SEL_R : in  STD_LOGIC;
           ESCR_R : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           Operando1 : out  STD_LOGIC_VECTOR (7 downto 0));
end RegistoA;

architecture Behavioral of RegistoA is

begin
	process(Dados_R, SEL_R, ESCR_R, clk)
	
		begin 
			if SEL_R = '0' and rising_edge(clk) and ESCR_R = '1' then
				Operando1 <= Dados_R;
			end if;
	
	end process;

end Behavioral;
