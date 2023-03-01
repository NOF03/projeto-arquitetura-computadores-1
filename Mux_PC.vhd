library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mux_PC is
    Port ( S_FLAG : in  STD_LOGIC;
           Operando1_7 : in  STD_LOGIC;
           Operando1NOR : in  STD_LOGIC;
           GND : in  STD_LOGIC;
           VCC : in  STD_LOGIC;
           SEL_PC : in  STD_LOGIC_VECTOR (2 downto 0);
           ESCR_PC : out  STD_LOGIC);
end Mux_PC;

architecture Behavioral of Mux_PC is

begin
	process(S_FLAG, Operando1_7, Operando1NOR, SEL_PC)
		begin
			case SEL_PC is
				when "000" => ESCR_PC <= S_FLAG;
				when "001" => ESCR_PC <= Operando1NOR;
				when "010" => ESCR_PC <= Operando1_7;
				when "011" => ESCR_PC <= GND;
				when "100" => ESCR_PC <= VCC;
			end case;
	
	end process;

end Behavioral;

