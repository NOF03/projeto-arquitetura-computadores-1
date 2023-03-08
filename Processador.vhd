library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Processador is
    Port ( PIN : in  STD_LOGIC_VECTOR (7 downto 0);
           reset : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           opcode : in  STD_LOGIC_VECTOR (4 downto 0);
           SEL_R : in  STD_LOGIC;
           Constante : in  STD_LOGIC_VECTOR (7 downto 0);
           Dados_M : in  STD_LOGIC_VECTOR (7 downto 0);
           POUT : out  STD_LOGIC_VECTOR (7 downto 0);
           Operando1 : out  STD_LOGIC_VECTOR (7 downto 0);
           Endereco : out  STD_LOGIC_VECTOR (7 downto 0);
           WR : out  STD_LOGIC);
end Processador;

architecture Struct of Processador is

Component PC is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           ESCR_PC : in  STD_LOGIC;
           Constante : in  STD_LOGIC_VECTOR (7 downto 0);
           Endereco : out  STD_LOGIC_VECTOR (7 downto 0));
end Component;

Component Mux_PC is
    Port ( S_FLAG : in  STD_LOGIC;
           Operando1 : in  STD_LOGIC_VECTOR(7 downto 0);
           SEL_PC : in  STD_LOGIC_VECTOR (2 downto 0);
           ESCR_PC : out  STD_LOGIC);
end Component;

Component ROM is
    Port ( opcode : in  STD_LOGIC_VECTOR (4 downto 0);
           SEL_ALU : out  STD_LOGIC_VECTOR (2 downto 0);
           ESCR_P : out  STD_LOGIC;
           SEL_Data : out  STD_LOGIC_VECTOR (1 downto 0);
           ESCR_R : out  STD_LOGIC;
           WR : out  STD_LOGIC;
           SEL_PC : out  STD_LOGIC_VECTOR (2 downto 0);
           ESCR_FLAG : out  STD_LOGIC;
           SEL_FLAG : out  STD_LOGIC_VECTOR (2 downto 0));
end Component;

Component RegistoDeFlags is
    Port ( SEL_FLAG : in  STD_LOGIC_VECTOR (2 downto 0);
           E_FLAG : in  STD_LOGIC_VECTOR (4 downto 0);
           ESCR_FLAG : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           S_FLAG : out  STD_LOGIC);
end Component;

Component MultiplexerDosRegistos is
    Port ( Dados_IN : in  STD_LOGIC_VECTOR (7 downto 0);
           Dados_M : in  STD_LOGIC_VECTOR (7 downto 0);
           Resultado : in  STD_LOGIC_VECTOR (7 downto 0);
           Constante : in  STD_LOGIC_VECTOR (7 downto 0);
           SEL_Data : in  STD_LOGIC_VECTOR (1 downto 0);
           Dados_R : out  STD_LOGIC_VECTOR (7 downto 0));
end Component;

Component RegistoA is
    Port ( Dados_R : in  STD_LOGIC_VECTOR (7 downto 0);
           SEL_R : in  STD_LOGIC;
           ESCR_R : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           Operando1 : out  STD_LOGIC_VECTOR (7 downto 0));
end Component;

Component RegistoB is
    Port ( Dados_R : in  STD_LOGIC_VECTOR (7 downto 0);
           SEL_R : in  STD_LOGIC;
           ESCR_R : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           Operando2 : out  STD_LOGIC_VECTOR (7 downto 0));
end Component;

Component ALU is
    Port ( Operando1 : in  STD_LOGIC_VECTOR (7 downto 0);
           Operando2 : in  STD_LOGIC_VECTOR (7 downto 0);
           SEL_ALU : in  STD_LOGIC_VECTOR (2 downto 0);
           Resultado : out  STD_LOGIC_VECTOR (7 downto 0);
			  E_FLAG : out STD_LOGIC_VECTOR (4 downto 0));
end Component;

Component GestorDePerifericos is
    Port ( PIN : in  STD_LOGIC_VECTOR (7 downto 0);
           Operando1 : in  STD_LOGIC_VECTOR (7 downto 0);
           ESCR_P : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           Dados_IN : out  STD_LOGIC_VECTOR (7 downto 0);
           POUT : out  STD_LOGIC_VECTOR (7 downto 0));
end Component;

signal ESCR_P, ESCR_FLAG, S_FLAG, ESCR_PC, ESCR_R : STD_LOGIC;
signal SEL_Data : STD_LOGIC_VECTOR(1 downto 0);
signal SEL_PC, SEL_ALU, SEL_FLAG : STD_LOGIC_VECTOR(2 downto 0);
signal E_FLAG : STD_LOGIC_VECTOR(4 downto 0);
signal Soperando1, Operando2, Resultado, Dados_IN, Dados_R : STD_LOGIC_VECTOR(7 downto 0);

begin
	
	gestorPer : GestorDePerifericos port map(PIN, Soperando1, ESCR_P, clk, Dados_IN, POUT);
	MuxR : MultiplexerDosRegistos port map(Dados_IN, Dados_M, Resultado, Constante, SEL_Data, Dados_R);
	RegA : RegistoA port map(Dados_R, SEL_R, ESCR_R, clk, Soperando1);
	RegB : RegistoB port map(Dados_R, SEL_R, ESCR_R, clk, Operando2);
	ALUR : ALU port map(Soperando1, Operando2, SEL_ALU, Resultado, E_FLAG);
	RF : RegistoDeFlags port map(SEL_FLAG, E_FLAG, ESCR_FLAG, clk, S_FLAG);
	MUXPC : MUX_PC port map(S_FLAG, Soperando1, SEL_PC, ESCR_PC); 
	PC1 : PC port map(clk, reset, ESCR_PC, Constante, Endereco);
	ROMD : ROM port map(opcode, SEL_ALU, ESCR_P, SEL_Data, ESCR_R, WR, SEL_PC, ESCR_FLAG, SEL_FLAG);
	Operando1 <= Soperando1;
	
	
end Struct;