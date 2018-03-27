library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity IDEX_Stage_Registers is
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
end IDEX_Stage_Registers;

architecture Behavioral of IDEX_Stage_Registers is

component RegisterN
    generic(n_bits : natural := 31);
	port(	CLK: in std_logic;
            D: in std_logic_vector(n_bits-1 downto 0);
			Enable: in std_logic;
			Q: out std_logic_vector(n_bits-1 downto 0)
			);
end component;

begin

ID_EX_I:   RegisterN generic map(n_bits=>32) port map(CLK=>CLK, D=>ID_I,     Enable=>Enable, Q=>EX_I);
ID_EX_PC:  RegisterN generic map(n_bits=>32) port map(CLK=>CLK, D=>ID_PC,    Enable=>Enable, Q=>EX_PC);
ID_EX_A:   RegisterN generic map(n_bits=>32) port map(CLK=>CLK, D=>ID_A,     Enable=>Enable, Q=>EX_A);
ID_EX_B:   RegisterN generic map(n_bits=>32) port map(CLK=>CLK, D=>ID_B,     Enable=>Enable, Q=>EX_B);
ID_EX_K:   RegisterN generic map(n_bits=>32) port map(CLK=>CLK, D=>ID_KNS,   Enable=>Enable, Q=>EX_KNS);
ID_EX_FS:  RegisterN generic map(n_bits=>4)  port map(CLK=>CLK, D=>ID_FS,    Enable=>Enable, Q=>EX_FS);
ID_EX_MUX: RegisterN generic map(n_bits=>7)  port map(CLK=>CLK, Enable=>Enable,
            D(0)=>ID_MA, D(1)=>ID_MB, D(3 downto 2)=>ID_MMA, D(5 downto 4)=>ID_MMB, D(6)=>ID_MW,
            Q(0)=>EX_MA, Q(1)=>EX_MB, Q(3 downto 2)=>EX_MMA, Q(5 downto 4)=>EX_MMB, Q(6)=>EX_MW);
ID_EX_WB: RegisterN generic map(n_bits=>5)  port map(CLK=>CLK, Enable=>Enable,
                        D(4 downto 1)=>ID_DA, D(0)=>ID_MD,
                        Q(4 downto 1)=>EX_DA, Q(0)=>EX_MD);
ID_EX_BR: RegisterN generic map(n_bits=>6)  port map(CLK=>CLK, Enable=>Enable,
                        D(5 downto 2)=>ID_BC, D(1 downto 0)=>ID_PL,
                        Q(5 downto 2)=>EX_BC, Q(1 downto 0)=>EX_PL);

end Behavioral;
