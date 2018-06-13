library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SingleCycle is
  Port (
        CLK  : in std_logic;
        PC   : out std_logic_vector(31 downto 0);
        I    : out std_logic_vector(31 downto 0);
        Data : out std_logic_vector(31 downto 0)
        );
end SingleCycle;

architecture Structural of SingleCycle is

component InstructionFetch
    Port (
           CLK          : in std_logic;
           StageEnable  : in std_logic;
           PCLoadEnable : in std_logic;
           PCLoadValue  : in std_logic_vector(31 downto 0);
           Instruction  : out std_logic_vector(31 downto 0);
           PCCurrValue  : out std_logic_vector(31 downto 0);
           PCAddOne     : out std_logic_vector(31 downto 0)
         );
end component;

component InstructionDecode
    Port ( Instruction : in STD_LOGIC_VECTOR (31 downto 0);
            -- Instruction operands (OF => Operand Fetch)
           AA       : out STD_LOGIC_VECTOR ( 3 downto 0);
           MA       : out STD_LOGIC;
           BA       : out STD_LOGIC_VECTOR ( 3 downto 0);
           MB       : out STD_LOGIC;
           KNS      : out STD_LOGIC_VECTOR (31 downto 0);
           -- execution control (EX => Execute)
           FS       : out STD_LOGIC_VECTOR ( 3 downto 0);
--           FW       : out STD_LOGIC_VECTOR ( 3 downto 0);
           PL       : out STD_LOGIC_VECTOR ( 1 downto 0);
           BC       : out STD_LOGIC_VECTOR ( 3 downto 0);
           -- memory control (MEM => Memory)
           MMA      : out STD_LOGIC_VECTOR ( 1 downto 0);
           MMB      : out STD_LOGIC_VECTOR ( 1 downto 0);
           MW       : out STD_LOGIC;
            -- Instruction Result (WB => Write-Back)
           MD       : out STD_LOGIC;
           DA       : out STD_LOGIC_VECTOR ( 3 downto 0)
          );
end component;

component Execute
  Port (
    Enable : in std_logic;
    A      : in std_logic_vector(31 downto 0);
    B      : in std_logic_vector(31 downto 0);
    MA     : in std_logic;
    MB     : in std_logic;
    KNS    : in std_logic_vector(31 downto 0);
    FS     : in std_logic_vector( 3 downto 0);
--    FW     : in std_logic_vector( 3 downto 0);
    PL     : in STD_LOGIC_VECTOR ( 1 downto 0);
    BC     : in std_logic_vector( 3 downto 0);
    PC     : in std_logic_vector(31 downto 0);
    PCLoadValue : out std_logic_vector(31 downto 0);
    PCLoadEnable : out std_logic;
    LinkEn: out STD_LOGIC;
    DataD  : out std_logic_vector(31 downto 0)
  );
end component;

component Memory is
  Port (
    CLK   : in std_logic;
    StageEnable: in std_logic;
    A     : in std_logic_vector(31 downto 0);
    B     : in std_logic_vector(31 downto 0);
    KNS   : in std_logic_vector(31 downto 0);
    Din   : in std_logic_vector(31 downto 0);
    MMA   : in std_logic_vector( 1 downto 0);
    MMB   : in std_logic_vector( 1 downto 0);
    MW    : in std_logic;
    Dout  : out std_logic_vector(31 downto 0)
  );
end component;

component WriteBack
  Port (
        Enable   : in STD_LOGIC;
        DA       : in STD_LOGIC_VECTOR(3 downto 0);
        MD       : in STD_LOGIC;
        ALUData  : in STD_LOGIC_VECTOR(31 downto 0);
        MemData  : in STD_LOGIC_VECTOR(31 downto 0);
--        WR       : out STD_LOGIC;
        LinkEn   : in STD_LOGIC;
        PCAddOne : in std_logic_vector(31 downto 0);
        DA_reg   : out STD_LOGIC_VECTOR(3 downto 0);
        RFData   : out STD_LOGIC_VECTOR(31 downto 0)
        );
end component;

component RegisterFile
    Generic (n_bits : natural := 32);
    Port ( CLK : in std_logic;
           Data : in std_logic_vector (n_bits-1 downto 0);
--           WR : in std_logic;
           DA : in std_logic_vector (3 downto 0);
           AA : in std_logic_vector (3 downto 0);
           BA : in std_logic_vector (3 downto 0);
           A : out std_logic_vector (n_bits-1 downto 0);
           B : out std_logic_vector (n_bits-1 downto 0));
end component;


signal EnableIF, EnableID, EnableEX, EnableMEM, EnableWB : std_logic;

-- Instruction & PC signals
signal Instruction : std_logic_vector(31 downto 0);
signal PCValue, PCLoadValue, PCAddOne : std_logic_vector(31 downto 0);
signal BC : std_logic_vector(3 downto 0);
signal PCLoadEnable : std_logic;
signal PL : std_logic_vector(1 downto 0);

-- RF addressing and operand selection signals
signal AA, BA, DA, DA_Reg: std_logic_vector(3 downto 0);
signal MA, MB, MD : std_logic;
signal MMA, MMB : std_logic_vector(1 downto 0);

-- Functional Unit and Memory Operation Signals
signal FS : std_logic_vector(3 downto 0);
signal MW : std_logic;

-- Data Signals
signal KNS : std_logic_vector(31 downto 0);
signal A, B: std_logic_vector(31 downto 0);
signal ALUData, MemData, RFData: std_logic_vector(31 downto 0);

-- Link Signal
signal LinkEn : std_logic;

begin

EnableID<='1';
EnableEX<='1';
EnableMEM<='1';
EnableWB<='1';

--------------------------------------------------------------------------------------------------------------------------
-- IF Stage
--------------------------------------------------------------------------------------------------------------------------
-- Instruction Fetch (IF) Stage Logic
IFetch: InstructionFetch port map(CLK=>CLK, StageEnable=>'1', PCLoadEnable=>PCLoadEnable, PCLoadValue=>PCLoadValue, Instruction=>Instruction, PCCurrValue=>PCValue, PCAddOne=>PCAddOne);

--------------------------------------------------------------------------------------------------------------------------
-- ID Stage
--------------------------------------------------------------------------------------------------------------------------
-- Instruction Decode (ID) Stage
ID: InstructionDecode port map(Instruction=>Instruction, AA=>AA, MA=>MA, BA=>BA, MB=>MB, KNS=>KNS, FS=>FS, PL=>PL, BC=>BC, MMA=>MMA, MMB=>MMB, MW=>MW, MD=>MD, DA=>DA);

--------------------------------------------------------------------------------------------------------------------------
-- EX Stage
--------------------------------------------------------------------------------------------------------------------------
EX: Execute port map(Enable =>EnableEX ,A => A, B => B, MA=>MA, MB=>MB, KNS=>KNS, FS=>FS, PL=>PL, BC=>BC, LinkEn=>LinkEn, PC=>PCValue, PCLoadEnable=>PCLoadEnable, PCLoadValue=>PCLoadValue, DataD=>ALUData);

--------------------------------------------------------------------------------------------------------------------------
-- MEM Stage
--------------------------------------------------------------------------------------------------------------------------
MEM: Memory port map(CLK=>CLK, StageEnable=>'1', A =>A, B => B, Din=>ALUData, KNS=>KNS, MMA=>MMA, MMB=>MMB, MW=>MW, Dout=>MemData);

--------------------------------------------------------------------------------------------------------------------------
-- WB Stage
--------------------------------------------------------------------------------------------------------------------------
WB: WriteBack port map(enable=>'1', DA=>DA, MD=>MD, ALUData=>ALUData, MemData=>MemData, LinkEn=>LinkEn, PCAddOne=>PCAddOne, DA_reg=>DA_reg, RFData=>RFData);

--------------------------------------------------------------------------------------------------------------------------
-- Register File
--------------------------------------------------------------------------------------------------------------------------
RF: RegisterFile generic map(n_bits=>32) port map(CLK=>CLK, Data=>RFData, DA=>DA_reg, AA=>AA, BA=>BA, A=>A, B=>B);

--------------------------------------------------------------------------------------------------------------------------
-- Output
--------------------------------------------------------------------------------------------------------------------------
Data<=RFData;
I<=Instruction;
PC<=PCValue;

end Structural;
