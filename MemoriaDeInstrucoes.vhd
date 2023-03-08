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
	begin
		case Endereco is
			when "00000000" => Opcode <= "00010"; Sel_R <= '0'; Constante <= "00000011";
			when "00000001" => Opcode <= "00100"; Sel_R <= '0'; Constante <= "00000000";
			when "00000010" => Opcode <= "00010"; Sel_R <= '0'; Constante <= "00010100";
			when "00000011" => Opcode <= "00100"; Sel_R <= '0'; Constante <= "00000001";
			when "00000100" => Opcode <= "00000"; Sel_R <= '0'; Constante <= "XXXXXXXX";

			when "00000101" => Opcode <= "10001"; Sel_R <= 'X'; Constante <= "00010110";
			when "00000110" => Opcode <= "00010"; Sel_R <= '1'; Constante <= "00101000";
			when "00000111" => Opcode <= "01010"; Sel_R <= 'X'; Constante <= "XXXXXXXX";
			when "00001000" => Opcode <= "01100"; Sel_R <= 'X'; Constante <= "00011011";
			when "00001001" => Opcode <= "00100"; Sel_R <= '0'; Constante <= "00000010";
			
			when "00001010" => Opcode <= "00100"; Sel_R <= '0'; Constante <= "00000011";
			when "00001011" => Opcode <= "00011"; Sel_R <= '0'; Constante <= "00000000";
			when "00001100" => Opcode <= "00010"; Sel_R <= '1'; Constante <= "00000001";
			when "00001101" => Opcode <= "00110"; Sel_R <= '0'; Constante <= "XXXXXXXX";
			when "00001110" => Opcode <= "10010"; Sel_R <= 'X'; Constante <= "00010100";
			
			when "00001111" => Opcode <= "00100"; Sel_R <= '0'; Constante <= "00000000";
			when "00010000" => Opcode <= "00011"; Sel_R <= '0'; Constante <= "00000011";
			when "00010001" => Opcode <= "00011"; Sel_R <= '1'; Constante <= "00000010";
			when "00010010" => Opcode <= "00101"; Sel_R <= '0'; Constante <= "XXXXXXXX";
			when "00010011" => Opcode <= "10000"; Sel_R <= 'X'; Constante <= "00001010";	
			
			when "00010100" => Opcode <= "00011"; Sel_R <= '0'; Constante <= "00000011";
			when "00010101" => Opcode <= "10000"; Sel_R <= 'X'; Constante <= "00011101";
			when "00010110" => Opcode <= "00010"; Sel_R <= '1'; Constante <= "11111111";
			when "00010111" => Opcode <= "01001"; Sel_R <= '0'; Constante <= "XXXXXXXX";
			when "00011000" => Opcode <= "00010"; Sel_R <= '1'; Constante <= "00000001";
			
			
			when "00011001" => Opcode <= "00101"; Sel_R <= '0'; Constante <= "XXXXXXXX";
			when "00011010" => Opcode <= "10000"; Sel_R <= 'X'; Constante <= "00011101";
			when "00011011" => Opcode <= "00011"; Sel_R <= '1'; Constante <= "00000001";
			when "00011100" => Opcode <= "00110"; Sel_R <= '0'; Constante <= "XXXXXXXX";
			when "00011101" => Opcode <= "00001"; Sel_R <= '0'; Constante <= "XXXXXXXX";
			when "00011110" => Opcode <= "10000"; Sel_R <= 'X'; Constante <= "00011110";

			when others => Opcode <= "XXXXX"; Sel_R <= 'X'; Constante <= "XXXXXXXX";
			
		end case;

	end process;
end Behavioral;