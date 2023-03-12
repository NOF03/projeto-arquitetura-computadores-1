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
type memory is array (0 to 255) of STD_LOGIC_VECTOR(7 downto 0);
signal memoria : memory := (others => (others=>'0'));
begin
	process(clk)
		
		begin
				if rising_edge(clk) and WR <= '1' then
					memoria(to_integer(unsigned(Constante))) <= Operando1;
				end if;
	end process;
Dados_M <= memoria(to_integer(unsigned(Constante)));
end Behavioral;