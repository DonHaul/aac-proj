library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MEMWB_Stage_Registers is
    Port ( 
       CLK      : in STD_LOGIC;
       Enable   : in STD_LOGIC;
       MEM_PC   : in STD_LOGIC_VECTOR (31 downto 0);
       MEM_I    : in STD_LOGIC_VECTOR (31 downto 0);
       MEM_PCAddOne : in STD_LOGIC_VECTOR (31 downto 0);
       MEM_DMem : in STD_LOGIC_VECTOR (31 downto 0);
       MEM_DALU : in STD_LOGIC_VECTOR (31 downto 0);
       MEM_MD   : in STD_LOGIC;
       MEM_DA   : in STD_LOGIC_VECTOR (3 downto 0);
       MEM_LinkEn  : in STD_LOGIC;
       WB_PC    : out STD_LOGIC_VECTOR (31 downto 0);
       WB_I     : out STD_LOGIC_VECTOR (31 downto 0);
       WB_PCAddOne : out STD_LOGIC_VECTOR (31 downto 0);
       WB_DMem  : out STD_LOGIC_VECTOR (31 downto 0);
       WB_DALU  : out STD_LOGIC_VECTOR (31 downto 0);
       WB_MD    : out STD_LOGIC;
       WB_DA    : out STD_LOGIC_VECTOR (3 downto 0);
       WB_LinkEn  : out STD_LOGIC
    );
end MEMWB_Stage_Registers;

architecture Behavioral of MEMWB_Stage_Registers is

component RegisterN
    generic(n_bits : natural := 31);
	port(	CLK: in std_logic;
            D: in std_logic_vector(n_bits-1 downto 0);
			Enable: in std_logic;
			Q: out std_logic_vector(n_bits-1 downto 0)
			);
end component;

begin

EX_MEM_PC:    RegisterN generic map(n_bits=>32)  port map(CLK=>CLK, Enable=>Enable,D=>MEM_PC,Q=>WB_PC);
EX_MEM_I:     RegisterN generic map(n_bits=>32)  port map(CLK=>CLK, Enable=>Enable,D=>MEM_I,Q=>WB_I);
EX_MEM_PCAddOne:    RegisterN generic map(n_bits=>32)  port map(CLK=>CLK, Enable=>Enable,D=>MEM_PCAddOne,Q=>WB_PCAddOne);
EX_MEM_DMem:  RegisterN generic map(n_bits=>32)  port map(CLK=>CLK, Enable=>Enable,D=>MEM_DMem,Q=>WB_DMem);
EX_MEM_DALU:  RegisterN generic map(n_bits=>32)  port map(CLK=>CLK, Enable=>Enable,D=>MEM_DALU,Q=>WB_DALU);
EX_MEM_WBCTR: RegisterN generic map(n_bits=>6)   port map(CLK=>CLK, Enable=>Enable, 
                        D(5)=> MEM_LinkEn, D(4 downto 1)=>MEM_DA, D(0)=>MEM_MD, 
                        Q(5)=> WB_LinkEn, Q(4 downto 1)=>WB_DA, Q(0)=>WB_MD);

end Behavioral;
