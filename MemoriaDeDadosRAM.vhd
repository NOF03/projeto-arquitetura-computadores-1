library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity MemoriaDeDadosRAM is
    Port ( WR : in  STD_LOGIC;
           Operando1 : in  STD_LOGIC_VECTOR (7 downto 0);
           Constante : in  STD_LOGIC_VECTOR (7 downto 0);
           clk : in  STD_LOGIC;
           Dados_M : out  STD_LOGIC_VECTOR (7 downto 0));
end MemoriaDeDadosRAM;

architecture Behavioral of MemoriaDeDadosRAM is

begin
	process(clk, Operando1, Constante, WR)
		type memory is array (0 to 255) of STD_LOGIC_VECTOR(7 downto 0);
		variable memoria : memory;
		begin
			if WR = '1' then
				if rising_edge(clk) then
					memoria(to_integer(unsigned(Constante))) := Operando1;
				end if;
			else
				Dados_M <= memoria(to_integer(unsigned(Constante)));
			end if;
				
	end process;

end Behavioral;