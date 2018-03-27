library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FiveStagePipeline is
  Port (
        CLK  : in std_logic;
        PC   : out std_logic_vector(31 downto 0);
        I    : out std_logic_vector(31 downto 0);
        Data : out std_logic_vector(31 downto 0)
        );
end FiveStagePipeline;

architecture Structural of FiveStagePipeline is

component InstructionFetch
    Port (
           CLK          : in std_logic;
           StageEnable  : in std_logic;
           PCLoadEnable : in std_logic;
           PCLoadValue  : in std_logic_vector(31 downto 0);
           Instruction  : out std_logic_vector(31 downto 0);
           PCCurrValue  : out std_logic_vector(31 downto 0)
         );
end component;

component IFID_Stage_Registers
    Port (
           CLK    : in STD_LOGIC;
           Enable : in STD_LOGIC;
           IF_PC  : in STD_LOGIC_VECTOR (31 downto 0);
           IF_I   : in STD_LOGIC_VECTOR (31 downto 0);
           ID_PC  : out STD_LOGIC_VECTOR (31 downto 0);
           ID_I   : out STD_LOGIC_VECTOR (31 downto 0));
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

component IDEX_Stage_Registers
    Port (
        CLK    : in STD_LOGIC;
        Enable : in STD_LOGIC;
        ID_PC  : in STD_LOGIC_VECTOR (31 downto 0);
        ID_I   : in STD_LOGIC_VECTOR (31 downto 0);
        ID_A   : in STD_LOGIC_VECTOR (31 downto 0);
        ID_B   : in STD_LOGIC_VECTOR (31 downto 0);
        ID_KNS : in STD_LOGIC_VECTOR (31 downto 0);
        ID_MA  : in STD_LOGIC;
        ID_MB  : in STD_LOGIC;
        ID_FS  : in STD_LOGIC_VECTOR (3 downto 0);
        ID_PL  : in STD_LOGIC_VECTOR (1 downto 0);
        ID_BC  : in STD_LOGIC_VECTOR (3 downto 0);
        ID_MMA : in STD_LOGIC_VECTOR (1 downto 0);
        ID_MMB : in STD_LOGIC_VECTOR (1 downto 0);
        ID_MW  : in STD_LOGIC;
        ID_MD  : in STD_LOGIC;
        ID_DA  : in STD_LOGIC_VECTOR (3 downto 0);
        EX_PC  : out STD_LOGIC_VECTOR (31 downto 0);
        EX_I   : out STD_LOGIC_VECTOR (31 downto 0);
        EX_A   : out STD_LOGIC_VECTOR (31 downto 0);
        EX_B   : out STD_LOGIC_VECTOR (31 downto 0);
        EX_KNS : out STD_LOGIC_VECTOR (31 downto 0);
        EX_MA  : out STD_LOGIC;
        EX_MB  : out STD_LOGIC;
        EX_FS  : out STD_LOGIC_VECTOR (3 downto 0);
        EX_PL  : out STD_LOGIC_VECTOR (1 downto 0);
        EX_BC  : out STD_LOGIC_VECTOR (3 downto 0);
        EX_MMA : out STD_LOGIC_VECTOR (1 downto 0);
        EX_MMB : out STD_LOGIC_VECTOR (1 downto 0);
        EX_MW  : out STD_LOGIC;
        EX_MD  : out STD_LOGIC;
        EX_DA  : out STD_LOGIC_VECTOR (3 downto 0)
       );
end component;

component Execute
  Port (
    A      : in std_logic_vector(31 downto 0);
    B      : in std_logic_vector(31 downto 0);
    MA     : in std_logic;
    MB     : in std_logic;
    KNS    : in std_logic_vector(31 downto 0);
    FS     : in std_logic_vector( 3 downto 0);
    PL     : in STD_LOGIC_VECTOR (1 downto 0);
    BC     : in std_logic_vector( 3 downto 0);
    PC     : in std_logic_vector(31 downto 0);
    PCLoadValue : out std_logic_vector(31 downto 0);
    PCLoadEnable : out std_logic;
    DataD  : out std_logic_vector(31 downto 0)
  );
end component;

component EXMEM_Stage_Registers
    Port (
        CLK     : in STD_LOGIC;
        Enable  : in STD_LOGIC;
        EX_PC   : in STD_LOGIC_VECTOR (31 downto 0);
        EX_I    : in STD_LOGIC_VECTOR (31 downto 0);
        EX_A    : in STD_LOGIC_VECTOR (31 downto 0);
        EX_B    : in STD_LOGIC_VECTOR (31 downto 0);
        EX_D    : in STD_LOGIC_VECTOR (31 downto 0);
        EX_KNS  : in STD_LOGIC_VECTOR (31 downto 0);
        EX_MMA  : in STD_LOGIC_VECTOR (1 downto 0);
        EX_MMB  : in STD_LOGIC_VECTOR (1 downto 0);
        EX_MW   : in STD_LOGIC;
        EX_MD   : in STD_LOGIC;
        EX_DA   : in STD_LOGIC_VECTOR (3 downto 0);
        MEM_PC  : out STD_LOGIC_VECTOR (31 downto 0);
        MEM_I   : out STD_LOGIC_VECTOR (31 downto 0);
        MEM_A   : out STD_LOGIC_VECTOR (31 downto 0);
        MEM_B   : out STD_LOGIC_VECTOR (31 downto 0);
        MEM_D   : out STD_LOGIC_VECTOR (31 downto 0);
        MEM_KNS : out STD_LOGIC_VECTOR (31 downto 0);
        MEM_MMA : out STD_LOGIC_VECTOR (1 downto 0);
        MEM_MMB : out STD_LOGIC_VECTOR (1 downto 0);
        MEM_MW  : out STD_LOGIC;
        MEM_MD  : out STD_LOGIC;
        MEM_DA  : out STD_LOGIC_VECTOR (3 downto 0)
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

component MEMWB_Stage_Registers
    Port (
        CLK      : in STD_LOGIC;
        Enable   : in STD_LOGIC;
        MEM_PC   : in STD_LOGIC_VECTOR (31 downto 0);
        MEM_I    : in STD_LOGIC_VECTOR (31 downto 0);
        MEM_DMem : in STD_LOGIC_VECTOR (31 downto 0);
        MEM_DALU : in STD_LOGIC_VECTOR (31 downto 0);
        MEM_MD   : in STD_LOGIC;
        MEM_DA   : in STD_LOGIC_VECTOR (3 downto 0);
        WB_PC    : out STD_LOGIC_VECTOR (31 downto 0);
        WB_I     : out STD_LOGIC_VECTOR (31 downto 0);
        WB_DMem  : out STD_LOGIC_VECTOR (31 downto 0);
        WB_DALU  : out STD_LOGIC_VECTOR (31 downto 0);
        WB_MD    : out STD_LOGIC;
        WB_DA    : out STD_LOGIC_VECTOR (3 downto 0)
    );
end component;

component WriteBack
  Port (
        Enable   : in STD_LOGIC;
        DA       : in STD_LOGIC_VECTOR(3 downto 0);
        MD       : in STD_LOGIC;
        ALUData  : in STD_LOGIC_VECTOR(31 downto 0);
        MemData  : in STD_LOGIC_VECTOR(31 downto 0);
        RFData   : out STD_LOGIC_VECTOR(31 downto 0)
        );
end component;

component RegisterFile
    Generic (n_bits : natural := 32);
    Port ( CLK : in std_logic;
           Data : in std_logic_vector (n_bits-1 downto 0);
           DA : in std_logic_vector (3 downto 0);
           AA : in std_logic_vector (3 downto 0);
           BA : in std_logic_vector (3 downto 0);
           A : out std_logic_vector (n_bits-1 downto 0);
           B : out std_logic_vector (n_bits-1 downto 0));
end component;


signal EnableIF, EnableID, EnableEX, EnableMEM, EnableWB : std_logic;

-- Instruction & PC signals
signal IF_Instruction, ID_Instruction, EX_Instruction, MEM_Instruction, WB_Instruction : std_logic_vector(31 downto 0);
signal IF_PC, ID_PC, EX_PC, MEM_PC, WB_PC, EX_PCLoadValue : std_logic_vector(31 downto 0);
signal ID_BC, EX_BC : std_logic_vector(3 downto 0);
signal EX_PCLoadEnable : std_logic;
signal ID_PL, EX_PL : std_logic_vector(1 downto 0);

-- RF addressing and operand selection signals
signal ID_AA, ID_BA, ID_DA, EX_DA, MEM_DA, WB_DA : std_logic_vector(3 downto 0);
signal ID_MA, EX_MA, ID_MB, EX_MB : std_logic;
signal ID_MMA, EX_MMA, MEM_MMA, ID_MMB, EX_MMB, MEM_MMB : std_logic_vector(1 downto 0);
signal ID_MD, EX_MD, MEM_MD, WB_MD : std_logic;

-- Functional Unit and Memory Operation Signals
signal ID_FS, EX_FS : std_logic_vector(3 downto 0);
signal ID_MW, EX_MW, MEM_MW : std_logic;

-- Data Signals
signal ID_KNS, EX_KNS, MEM_KNS : std_logic_vector(31 downto 0);
signal ID_A, EX_A, MEM_A: std_logic_vector(31 downto 0);
signal ID_B, EX_B, MEM_B: std_logic_vector(31 downto 0);
signal EX_ALUData, MEM_ALUData, WB_ALUData: std_logic_vector(31 downto 0);
signal MEM_MemData, WB_MemData: std_logic_vector(31 downto 0);
signal WB_RFData: std_logic_vector(31 downto 0);

begin

EnableIF<='1';
EnableID<='1';
EnableEX<='1';
EnableMEM<='1';
EnableWB<='1';

--------------------------------------------------------------------------------------------------------------------------
-- IF Stage
--------------------------------------------------------------------------------------------------------------------------
-- Instruction Fetch (IF) Stage Logic
IFetch: InstructionFetch port map(CLK=>CLK, StageEnable=>EnableIF, PCLoadEnable=>EX_PCLoadEnable, PCLoadValue=>EX_PCLoadValue, Instruction=>IF_Instruction, PCCurrValue=>IF_PC);
-- Registers between IF and ID Stage
IF2ID: IFID_Stage_Registers port map(CLK=>CLK, Enable=>EnableIF,
    IF_PC=>IF_PC, IF_I=>IF_Instruction,
    ID_PC=>ID_PC, ID_I=>ID_Instruction);

--------------------------------------------------------------------------------------------------------------------------
-- ID Stage
--------------------------------------------------------------------------------------------------------------------------
-- Instruction Decode (ID) Stage
ID: InstructionDecode port map(Instruction=>ID_Instruction, AA=>ID_AA, MA=>ID_MA, BA=>ID_BA, MB=>ID_MB, KNS=>ID_KNS, FS=>ID_FS, PL=>ID_PL, BC=>ID_BC, MMA=>ID_MMA, MMB=>ID_MMB, MW=>ID_MW, MD=>ID_MD, DA=>ID_DA);
-- Registers between ID and EX Stage
ID2EX: IDEX_Stage_Registers port map(CLK=>CLK, Enable=>EnableID,
    ID_I=>ID_Instruction, ID_PC=>ID_PC, ID_A=>ID_A, ID_B=>ID_B, ID_KNS=>ID_KNS, ID_MA=>ID_MA, ID_MB=>ID_MB, ID_MMA=>ID_MMA, ID_MMB=>ID_MMB, ID_MW=>ID_MW, ID_FS=>ID_FS, ID_PL=>ID_PL, ID_BC=>ID_BC, ID_MD=>ID_MD, ID_DA=>ID_DA,
    EX_I=>EX_Instruction, EX_PC=>EX_PC, EX_A=>EX_A, EX_B=>EX_B, EX_KNS=>EX_KNS, EX_MA=>EX_MA, EX_MB=>EX_MB, EX_MMA=>EX_MMA, EX_MMB=>EX_MMB, EX_MW=>EX_MW, EX_FS=>EX_FS, EX_PL=>EX_PL, EX_BC=>EX_BC, EX_MD=>EX_MD, EX_DA=>EX_DA);

--------------------------------------------------------------------------------------------------------------------------
-- EX Stage
--------------------------------------------------------------------------------------------------------------------------
EX: Execute port map(A => EX_A, B => EX_B, MA=>EX_MA, MB=>EX_MB, KNS=>EX_KNS, FS=>EX_FS, PL=>EX_PL, BC=>EX_BC, PC=>EX_PC, PCLoadEnable=>EX_PCLoadEnable, PCLoadValue=>EX_PCLoadValue, DataD=>EX_ALUData);
-- Registers between EX and MEM Stage
EX2MEM: EXMEM_Stage_Registers port map(CLK=>CLK, Enable=>EnableEX,
     EX_I=>EX_Instruction,   EX_PC=>EX_PC,   EX_A=>EX_A,   EX_B=>EX_B,   EX_KNS=>EX_KNS,   EX_D=>EX_ALUData,   EX_MMA=>EX_MMA,   EX_MMB=>EX_MMB,   EX_MW=>EX_MW,   EX_MD=>EX_MD,   EX_DA=>EX_DA,
    MEM_I=>MEM_Instruction, MEM_PC=>MEM_PC, MEM_A=>MEM_A, MEM_B=>MEM_B, MEM_KNS=>MEM_KNS, MEM_D=>MEM_ALUData, MEM_MMA=>MEM_MMA, MEM_MMB=>MEM_MMB, MEM_MW=>MEM_MW, MEM_MD=>MEM_MD, MEM_DA=>MEM_DA);

--------------------------------------------------------------------------------------------------------------------------
-- MEM Stage
--------------------------------------------------------------------------------------------------------------------------
MEM: Memory port map(CLK=>CLK, StageEnable=>EnableMEM, A =>MEM_A, B => MEM_B, Din=>MEM_ALUData, KNS=>MEM_KNS, MMA=>MEM_MMA, MMB=>MEM_MMB, MW=>MEM_MW, Dout=>MEM_MemData);
-- Registers between MEM and WB Stage
MEM2WB: MEMWB_Stage_Registers port map(CLK=>CLK, Enable=>EnableMEM,
    MEM_I=>MEM_Instruction, MEM_PC=>MEM_PC, MEM_DALU=>MEM_ALUData, MEM_DMem=>MEM_MemData, MEM_MD=>MEM_MD, MEM_DA=>MEM_DA,
     WB_I=>WB_Instruction,   WB_PC=>WB_PC,   WB_DALU=>WB_ALUData,   WB_DMem=>WB_MemData,   WB_MD=>WB_MD,   WB_DA=>WB_DA);

--------------------------------------------------------------------------------------------------------------------------
-- WB Stage
--------------------------------------------------------------------------------------------------------------------------
WB: WriteBack port map(enable=>enableWB, DA=>WB_DA, MD=>WB_MD, ALUData=>WB_ALUData, MemData=>WB_MemData, RFData=>WB_RFData);

--------------------------------------------------------------------------------------------------------------------------
-- Register File
--------------------------------------------------------------------------------------------------------------------------
RF: RegisterFile generic map(n_bits=>32) port map(CLK=>CLK, Data=>WB_RFData, DA=>WB_DA, AA=>ID_AA, BA=>ID_BA, A=>ID_A, B=>ID_B);

--------------------------------------------------------------------------------------------------------------------------
-- Output
--------------------------------------------------------------------------------------------------------------------------
Data<=WB_RFData;
I<=ID_Instruction;
PC<=ID_PC;

end Structural;
