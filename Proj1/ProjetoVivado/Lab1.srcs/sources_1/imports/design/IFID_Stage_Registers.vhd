library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity IFID_Stage_Registers is
    Port ( 
           CLK          : in STD_LOGIC;
           Enable       : in STD_LOGIC;
           IF_PC        : in STD_LOGIC_VECTOR (31 downto 0);
           IF_I         : in STD_LOGIC_VECTOR (31 downto 0);
           IF_PCAddOne  : in std_logic_vector(31 downto 0);
           ID_PC        : out STD_LOGIC_VECTOR (31 downto 0);
           ID_I         : out STD_LOGIC_VECTOR (31 downto 0);
           ID_PCAddOne  : out std_logic_vector(31 downto 0)
           );
end IFID_Stage_Registers;

architecture Behavioral of IFID_Stage_Registers is

component RegisterN
    generic(n_bits : natural := 31);
	port(	CLK: in std_logic;
            D: in std_logic_vector(n_bits-1 downto 0);
			Enable: in std_logic;
			Q: out std_logic_vector(n_bits-1 downto 0)
			);
end component;

begin

IF_ID_RegInst:     RegisterN generic map(n_bits=>32) port map(CLK=>CLK, D=>IF_I  , Enable=>Enable, Q=>ID_I );
IF_ID_RegPC:       RegisterN generic map(n_bits=>32) port map(CLK=>CLK, D=>IF_PC , Enable=>Enable, Q=>ID_PC);
IF_ID_RegPCAddOne: RegisterN generic map(n_bits=>32) port map(CLK=>CLK, D=>IF_PCAddOne , Enable=>Enable, Q=>ID_PCAddOne);

end Behavioral;
