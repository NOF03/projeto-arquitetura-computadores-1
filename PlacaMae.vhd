library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity PlacaMae is
	Port ( PIN : in  STD_LOGIC_VECTOR (7 downto 0);
           reset : in  STD_LOGIC;
           clk : in  STD_LOGIC;
			  GND : in STD_LOGIC;
			  VCC : in STD_LOGIC;
           POUT : out  STD_LOGIC_VECTOR (7 downto 0));
end PlacaMae;

architecture Struct of PlacaMae is

component Processador is
    Port ( PIN : in  STD_LOGIC_VECTOR (7 downto 0);
           reset : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           opcode : in  STD_LOGIC_VECTOR (4 downto 0);
           SEL_R : in  STD_LOGIC;
           Constante : in  STD_LOGIC_VECTOR (7 downto 0);
           Dados_M : in  STD_LOGIC_VECTOR (7 downto 0);
			  GND : in STD_LOGIC;
			  VCC : in STD_LOGIC;
           POUT : out  STD_LOGIC_VECTOR (7 downto 0);
           Operando1 : out  STD_LOGIC_VECTOR (7 downto 0);
           Endereco : out  STD_LOGIC_VECTOR (7 downto 0);
           WR : out  STD_LOGIC);
end component;

component MemoriaDeDadosRAM is
    Port ( WR : in  STD_LOGIC;
           Operando1 : in  STD_LOGIC_VECTOR (7 downto 0);
           Constante : in  STD_LOGIC_VECTOR (7 downto 0);
           clk : in  STD_LOGIC;
           Dados_M : out  STD_LOGIC_VECTOR (7 downto 0));
end component;

component MemoriaDeInstrucoes is
    Port ( Endereco : in  STD_LOGIC_VECTOR (7 downto 0);
           opcode : out  STD_LOGIC_VECTOR (4 downto 0);
           SEL_R : out  STD_LOGIC;
           Constante : out  STD_LOGIC_VECTOR (7 downto 0));
end component;

signal SEL_R, WR : STD_LOGIC;
signal opcode : STD_LOGIC_VECTOR(4 downto 0);
signal Operando1, Constante, Dados_M, Endereco : STD_LOGIC_VECTOR(7 downto 0);

begin
	
	Proc : Processador port map(PIN, reset, clk, opcode, SEL_R, Constante, Dados_M, GND, VCC, POUT, Operando1, Endereco, WR);
	RAM : MemoriaDeDadosRAM port map(WR, Operando1, Constante, clk, Dados_M);
	MDI : MemoriaDeInstrucoes port map(Endereco, opcode, SEL_R, Constante);
	
end Struct;

