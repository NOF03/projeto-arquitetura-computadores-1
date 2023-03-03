library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity MemoriaDeInstrucoes is
    Port ( Endereco : in  STD_LOGIC_VECTOR (7 downto 0);
           opcode : out  STD_LOGIC_VECTOR (4 downto 0);
           SEL_R : out  STD_LOGIC;
           Constante : out  STD_LOGIC_VECTOR (7 downto 0));
end MemoriaDeInstrucoes;

architecture Behavioral of MemoriaDeInstrucoes is

begin
	process(Endereco)
		type memoria is array (0 to 255) of STD_LOGIC_VECTOR(13 downto 0);
		variable mem : memoria;
<<<<<<< Updated upstream
		begin
			opcode <= mem(to_integer(unsigned(endereco)))(13 downto 9);
			sel_r <= mem(to_integer(unsigned(endereco)))(8);
			constante <= mem(to_integer(unsigned(endereco)))(7 downto 0);
=======
		begin
        opcode <= mem(to_integer(unsigned(endereco)))(13 downto 9);
        sel_r <= mem(to_integer(unsigned(endereco)))(8);
        constante <= mem(to_integer(unsigned(endereco)))(7 downto 0);
>>>>>>> Stashed changes
	end process;
end Behavioral;