library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RegistoDeFlags is
    Port ( SEL_FLAG : in  STD_LOGIC_VECTOR (2 downto 0);
           E_FLAG : in  STD_LOGIC_VECTOR (4 downto 0);
           ESCR_FLAG : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           S_FLAG : out  STD_LOGIC);
end RegistoDeFlags;

architecture Behavioral of RegistoDeFlags is

begin
	process(clk, ESCR_FLAG, E_FLAG, SEL_FLAG)
	variable mem : STD_LOGIC_VECTOR (4 downto 0);
		begin
			case SEL_FLAG is
				when "000" => S_FLAG <= mem(0);
				when "001" => S_FLAG <= mem(1);
				when "010" => S_FLAG <= mem(2);
				when "011" => S_FLAG <= mem(3);
				when "100" => S_FLAG <= mem(4);
				when others => S_FLAG <= 'X';
			end case;
			if ESCR_FLAG = '1' and rising_edge(clk) then
				mem := E_FLAG;
			end if;
			
	
	end process;

end Behavioral;
