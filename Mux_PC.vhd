library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mux_PC is
    Port ( S_FLAG : in  STD_LOGIC;
           Operando1 : in  STD_LOGIC_VECTOR(7 downto 0);
           SEL_PC : in  STD_LOGIC_VECTOR (2 downto 0);
           ESCR_PC : out  STD_LOGIC);
end Mux_PC;

architecture Behavioral of Mux_PC is

begin
	process(S_FLAG, Operando1, SEL_PC)
		begin
			case SEL_PC is
				when "000" => ESCR_PC <= S_FLAG;
				when "001" => ESCR_PC <= not(Operando1(0) OR Operando1(1) OR Operando1(2) OR Operando1(3) OR Operando1(4) OR Operando1(5) OR Operando1(6) OR Operando1(7));
				when "010" => ESCR_PC <= Operando1(7);
				when "011" => ESCR_PC <= '0';
				when "100" => ESCR_PC <= '1';
				when others => ESCR_PC <= 'X';
			end case;
	
	end process;

end Behavioral;

