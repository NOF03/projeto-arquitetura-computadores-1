library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ALU is
    Port ( Operando1 : in  STD_LOGIC_VECTOR (7 downto 0);
           Operando2 : in  STD_LOGIC_VECTOR (7 downto 0);
           SEL_ALU : in  STD_LOGIC_VECTOR (2 downto 0);
           Resultado : out  STD_LOGIC_VECTOR (7 downto 0);
			  E_FLAG : out STD_LOGIC_VECTOR (4 downto 0));
end ALU;

architecture Behavioral of ALU is

begin
	process(Operando1, Operando2, SEL_ALU)
	
	begin
		case SEL_ALU is
			when "000" => Resultado <= Operando1 + Operando2;
			when "001" => Resultado <= Operando1 - Operando2;
			when "010" => Resultado <= Operando1 and Operando2;
			when "011" => Resultado <= Operando1 or Operando2;
			when "100" => Resultado <= Operando1 nor Operando2;
			when "101" => Resultado <= Operando1 xor Operando2;
			when "110" => 
					if Operando1 < Operando2 then	
					E_FLAG(0) <= '1';
					end if;
					if Operando1 <= Operando2 then	
					E_FLAG(1) <= '1';
					end if;
					if Operando1 = Operando2 then	
					E_FLAG(2) <= '1';
					end if;
					if Operando1 > Operando2 then	
					E_FLAG(3) <= '1';
					end if;
					if Operando1 >= Operando2 then	
					E_FLAG(4) <= '1';
					end if;
		end case;
		
	end process;

end Behavioral;
