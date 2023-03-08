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
		begin
			if ESCR_FLAG = '1' and rising_edge(clk) then

					case SEL_FLAG is
						when "000" => S_FLAG <= E_FLAG(0);
						when "001" => S_FLAG <= E_FLAG(1);
						when "010" => S_FLAG <= E_FLAG(2);
						when "011" => S_FLAG <= E_FLAG(3);
						when "100" => S_FLAG <= E_FLAG(4);
						when others => S_FLAG <= 'X';
					end case;
			end if;
	
	end process;

end Behavioral;
