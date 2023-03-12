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
			when "00000000" => Opcode <= "00010"; Sel_R <= '1'; Constante <= "00001010"; -- LD RB, 10
			when "00000001" => Opcode <= "00000"; Sel_R <= '0'; Constante <= "XXXXXXXX"; -- LDP RA
			when "00000010" => Opcode <= "10010"; Sel_R <= 'X'; Constante <= "00000111"; -- JN RA, 7
			when "00000011" => Opcode <= "01011"; Sel_R <= 'X'; Constante <= "XXXXXXXX"; -- CMP RA, RB			
			when "00000100" => Opcode <= "01111"; Sel_R <= 'X'; Constante <= "00001110"; -- JG 14
			when "00000101" => Opcode <= "00010"; Sel_R <= '0'; Constante <= "11111111"; -- LD RA, -1
			when "00000110" => Opcode <= "10011"; Sel_R <= 'X'; Constante <= "00011101"; -- JMP 29
			when "00000111" => Opcode <= "00010"; Sel_R <= '1'; Constante <= "11111111"; -- LD RB, -1
			when "00001000" => Opcode <= "01010"; Sel_R <= '0'; Constante <= "XXXXXXXX"; -- XOR RA, RB
			when "00001001" => Opcode <= "00010"; Sel_R <= '1'; Constante <= "00000001"; -- LD RB, 1
			when "00001010" => Opcode <= "00101"; Sel_R <= '0'; Constante <= "XXXXXXXX"; -- ADD RA, RB	
			when "00001011" => Opcode <= "00010"; Sel_R <= '1'; Constante <= "00001110"; -- LD RB, 14
			when "00001100" => Opcode <= "00110"; Sel_R <= '0'; Constante <= "XXXXXXXX"; -- SUB RA, RB
			when "00001101" => Opcode <= "10011"; Sel_R <= 'X'; Constante <= "00011101"; -- JMP 29
			when "00001110" => Opcode <= "00100"; Sel_R <= 'X'; Constante <= "00001010"; -- ST [10], RA			
			when "00001111" => Opcode <= "00010"; Sel_R <= '0'; Constante <= "00000000"; -- LD RA, 0
			when "00010000" => Opcode <= "00100"; Sel_R <= 'X'; Constante <= "00001011"; -- ST [11], RA
			when "00010001" => Opcode <= "00010"; Sel_R <= '0'; Constante <= "00000011"; -- LD RA, 3
			when "00010010" => Opcode <= "00100"; Sel_R <= 'X'; Constante <= "00000101"; -- ST [5], RA
			when "00010011" => Opcode <= "00011"; Sel_R <= '0'; Constante <= "00001011"; -- LD RA, [11]
			when "00010100" => Opcode <= "00011"; Sel_R <= '1'; Constante <= "00001010"; -- LD RB, [10]
			when "00010101" => Opcode <= "00101"; Sel_R <= '0'; Constante <= "XXXXXXXX"; -- ADD RA, RB			
			when "00010110" => Opcode <= "00100"; Sel_R <= 'X'; Constante <= "00001011"; -- ST [11], RA
			when "00010111" => Opcode <= "00011"; Sel_R <= '0'; Constante <= "00000101"; -- LD RA, [5]
			when "00011000" => Opcode <= "00010"; Sel_R <= '1'; Constante <= "00000001"; -- LD RB, 1
			when "00011001" => Opcode <= "00110"; Sel_R <= '0'; Constante <= "XXXXXXXX"; -- SUB RA, RB
			when "00011010" => Opcode <= "10001"; Sel_R <= 'X'; Constante <= "00011100"; -- JZ RA, 28
			when "00011011" => Opcode <= "10011"; Sel_R <= 'X'; Constante <= "00010010"; -- JMP 18
			when "00011100" => Opcode <= "00011"; Sel_R <= '0'; Constante <= "00001011"; -- LD RA, [11]
			when "00011101" => Opcode <= "00001"; Sel_R <= 'X'; Constante <= "XXXXXXXX"; -- STP RA
			when "00011110" => Opcode <= "10011"; Sel_R <= 'X'; Constante <= "00011110"; -- JMP 30
			
			when others => Opcode <= "XXXXX"; Sel_R <= 'X'; Constante <= "XXXXXXXX";
			
		end case;

	end process;
end Behavioral;