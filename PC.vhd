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

begin

	process(reset)
	begin
		if reset = '1' then
			Endereco <= (others => '0');
		end if;
	end process;

	process(clk)
	
	begin
		if ESCR_PC = '0' and reset = '0' and rising_edge(clk) then
			Endereco <= Constante + "00000001";
		else
			Endereco <= Constante;
		end if;
	end process;

end Behavioral;
