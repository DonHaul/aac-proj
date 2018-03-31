library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ScoreBoard is
    Port ( CLK : in STD_LOGIC;
           Enable : in STD_LOGIC;
           AA : in STD_LOGIC_VECTOR (3 downto 0);
           BA : in STD_LOGIC_VECTOR (3 downto 0);
           DA : in STD_LOGIC_VECTOR (3 downto 0);
           DataHazard : out STD_LOGIC);
end ScoreBoard;

architecture Behavioral of ScoreBoard is

component Decoder is
    Port ( A : in std_logic_vector (3 downto 0);
           D0 : out std_logic;
           D1 : out std_logic;
           D2 : out std_logic;
           D3 : out std_logic;
           D4 : out std_logic;
           D5 : out std_logic;
           D6 : out std_logic;
           D7 : out std_logic;
           D8 : out std_logic;
           D9 : out std_logic;
           D10 : out std_logic;
           D11 : out std_logic;
           D12 : out std_logic;
           D13 : out std_logic;
           D14 : out std_logic;
           D15 : out std_logic);
end component;

component RegisterN
    generic(n_bits : natural := 31);
	port(	CLK: in std_logic;
            D: in std_logic_vector(n_bits-1 downto 0);
			Enable: in std_logic;
			Q: out std_logic_vector(n_bits-1 downto 0)
	);
end component;

signal Flags_ID, Flags_EX, Flags_MEM, Flags_WB : STD_LOGIC_VECTOR(15 downto 0);
signal Flags_A, Flags_B : STD_LOGIC_VECTOR(2 downto 0);
signal Flag_A_EX, Flag_B_EX, Flag_A_MEM, Flag_B_MEM, Flag_A_WB, Flag_B_WB: STD_LOGIC;   

begin

-- Flags for this ID stage are generated using a decoder from DA
Decoder1: Decoder port map (A => DA,
    D0=>Flags_ID(0), D1=>Flags_ID(1),  D2=>Flags_ID(2) ,  D3=>Flags_ID(3),   D4=>Flags_ID(4) ,  D5=>Flags_ID(5) ,  D6=>Flags_ID(6) ,  D7=>Flags_ID(7),
    D8=>Flags_ID(8), D9=>Flags_ID(9), D10=>Flags_ID(10), D11=>Flags_ID(11), D12=>Flags_ID(12), D13=>Flags_ID(13), D14=>Flags_ID(14), D15=>Flags_ID(15));
    
-- Propagates the flags (with delay) and except R0's
ID_EX_reg: RegisterN generic map(n_bits=>14)  port map(CLK=>CLK, Enable=>Enable, D=>Flags_ID(15 downto 1), Q=>Flags_EX(15 downto 1));
EX_MEM_reg: RegisterN generic map(n_bits=>14)  port map(CLK=>CLK, Enable=>Enable, D=>Flags_EX(15 downto 1), Q=>Flags_MEM(15 downto 1));
MEM_WB_reg: RegisterN generic map(n_bits=>14)  port map(CLK=>CLK, Enable=>Enable, D=>Flags_EX(15 downto 1), Q=>Flags_WB(15 downto 1));

-- R0 is not a real register, so it does not genereate data hazards
Flags_EX(0) <= '0'; Flags_MEM(0) <= '0'; Flags_WB(0) <= '0';   

-- Operand multiplexer A: select flags to be checked
with AA select
    Flags_A <= Flags_EX(0) & Flags_MEM(0) & Flags_WB(0) when "0000",
               Flags_EX(1) & Flags_MEM(1) & Flags_WB(1) when "0001",
               Flags_EX(2) & Flags_MEM(2) & Flags_WB(2) when "0010",
               Flags_EX(3) & Flags_MEM(3) & Flags_WB(3) when "0011",
               Flags_EX(4) & Flags_MEM(4) & Flags_WB(4) when "0100",
               Flags_EX(5) & Flags_MEM(5) & Flags_WB(5) when "0101",
               Flags_EX(6) & Flags_MEM(6) & Flags_WB(6) when "0110",
               Flags_EX(7) & Flags_MEM(7) & Flags_WB(7) when "0111",
               Flags_EX(8) & Flags_MEM(8) & Flags_WB(8) when "1000",
               Flags_EX(9) & Flags_MEM(9) & Flags_WB(9) when "1001",
               Flags_EX(10) & Flags_MEM(10) & Flags_WB(10) when "1010",
               Flags_EX(11) & Flags_MEM(11) & Flags_WB(11) when "1011",
               Flags_EX(12) & Flags_MEM(12) & Flags_WB(12) when "1100",
               Flags_EX(13) & Flags_MEM(13) & Flags_WB(13) when "1101",
               Flags_EX(14) & Flags_MEM(14) & Flags_WB(14) when "1110",
               Flags_EX(15) & Flags_MEM(15) & Flags_WB(15) when others;

-- Operand multiplexer B: select flags to be checked
with BA select
    Flags_B <= Flags_EX(0) & Flags_MEM(0) & Flags_WB(0) when "0000",
               Flags_EX(1) & Flags_MEM(1) & Flags_WB(1) when "0001",
               Flags_EX(2) & Flags_MEM(2) & Flags_WB(2) when "0010",
               Flags_EX(3) & Flags_MEM(3) & Flags_WB(3) when "0011",
               Flags_EX(4) & Flags_MEM(4) & Flags_WB(4) when "0100",
               Flags_EX(5) & Flags_MEM(5) & Flags_WB(5) when "0101",
               Flags_EX(6) & Flags_MEM(6) & Flags_WB(6) when "0110",
               Flags_EX(7) & Flags_MEM(7) & Flags_WB(7) when "0111",
               Flags_EX(8) & Flags_MEM(8) & Flags_WB(8) when "1000",
               Flags_EX(9) & Flags_MEM(9) & Flags_WB(9) when "1001",
               Flags_EX(10) & Flags_MEM(10) & Flags_WB(10) when "1010",
               Flags_EX(11) & Flags_MEM(11) & Flags_WB(11) when "1011",
               Flags_EX(12) & Flags_MEM(12) & Flags_WB(12) when "1100",
               Flags_EX(13) & Flags_MEM(13) & Flags_WB(13) when "1101",
               Flags_EX(14) & Flags_MEM(14) & Flags_WB(14) when "1110",
               Flags_EX(15) & Flags_MEM(15) & Flags_WB(15) when others;

-- Assigs flags corresponding to the current operands
Flag_A_EX <= Flags_A(2); Flag_A_MEM <= Flags_A(1); Flag_A_WB <= Flags_A(0);
Flag_B_EX <= Flags_B(2); Flag_B_MEM <= Flags_B(1); Flag_B_WB <= Flags_B(0);

DataHazard <= Flag_A_EX OR Flag_A_MEM OR Flag_A_WB OR Flag_B_EX OR Flag_B_MEM OR Flag_B_WB;

end Behavioral;
