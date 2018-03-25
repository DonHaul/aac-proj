library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RegisterFile is
    Generic (
        n_bits : natural := 32
        );
    Port ( CLK : in std_logic;
           Data : in std_logic_vector (n_bits-1 downto 0);
--           WR : in std_logic;
           DA : in std_logic_vector (3 downto 0);
           AA : in std_logic_vector (3 downto 0);
           BA : in std_logic_vector (3 downto 0);
           A : out std_logic_vector (n_bits-1 downto 0);
           B : out std_logic_vector (n_bits-1 downto 0));
end RegisterFile;

architecture structural of RegisterFile is
component RegisterN is
    Generic (n_bits : integer := 32);
	port(	D: in std_logic_vector(n_bits-1 downto 0);
			Enable: in std_logic;
			CLK: in std_logic;
			Q: out std_logic_vector(n_bits-1 downto 0):=(others => '0')
			);
end component;

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

signal OneHot: std_logic_vector(15 downto 0);
signal WriteEnable: std_logic_vector(15 downto 0);
signal H0, H1, H2, H3, H4, H5, H6, H7, H8, H9, H10, H11, H12, H13, H14, H15: std_logic;
signal     L1, L2, L3, L4, L5, L6, L7, L8, L9, L10, L11, L12, L13, L14, L15: std_logic;
signal Q0, Q1, Q2, Q3, Q4, Q5, Q6, Q7, Q8, Q9, Q10, Q11, Q12, Q13, Q14, Q15: std_logic_vector (n_bits-1 downto 0);

begin

-- Decode: Binary (DA) to One-Hot (H0 to H15)
Decoder1: Decoder port map (A => DA,
    D0=>OneHot(0), D1=>OneHot(1),  D2=>OneHot(2) ,  D3=>OneHot(3),   D4=>OneHot(4) ,  D5=>OneHot(5) ,  D6=>OneHot(6) ,  D7=>OneHot(7),
    D8=>OneHot(8), D9=>OneHot(9), D10=>OneHot(10), D11=>OneHot(11), D12=>OneHot(12), D13=>OneHot(13), D14=>OneHot(14), D15=>OneHot(15));

-- Generate Write-Enable Signals (L0 to L15) for each register (R0 to R15, respectively).
GenEnable: for i in 0 to 15 generate
    WriteEnable(i) <= OneHot(i);
end generate;

-- Instantiate the 16 registers... Register R0 is stuck at Q0=0
Q0 <= (others => '0');
R1:  RegisterN generic map(n_bits=>n_bits) port map (D => Data, Enable => WriteEnable(1), CLK => CLK, Q=> Q1);
R2:  RegisterN generic map(n_bits=>n_bits) port map (D => Data, Enable => WriteEnable(2), CLK => CLK, Q=> Q2);
R3:  RegisterN generic map(n_bits=>n_bits) port map (D => Data, Enable => WriteEnable(3), CLK => CLK, Q=> Q3);
R4:  RegisterN generic map(n_bits=>n_bits) port map (D => Data, Enable => WriteEnable(4), CLK => CLK, Q=> Q4);
R5:  RegisterN generic map(n_bits=>n_bits) port map (D => Data, Enable => WriteEnable(5), CLK => CLK, Q=> Q5);
R6:  RegisterN generic map(n_bits=>n_bits) port map (D => Data, Enable => WriteEnable(6), CLK => CLK, Q=> Q6);
R7:  RegisterN generic map(n_bits=>n_bits) port map (D => Data, Enable => WriteEnable(7), CLK => CLK, Q=> Q7);
R8:  RegisterN generic map(n_bits=>n_bits) port map (D => Data, Enable => WriteEnable(8), CLK => CLK, Q=> Q8);
R9:  RegisterN generic map(n_bits=>n_bits) port map (D => Data, Enable => WriteEnable(9), CLK => CLK, Q=> Q9);
R10: RegisterN generic map(n_bits=>n_bits) port map (D => Data, Enable => WriteEnable(10), CLK => CLK, Q=> Q10);
R11: RegisterN generic map(n_bits=>n_bits) port map (D => Data, Enable => WriteEnable(11), CLK => CLK, Q=> Q11);
R12: RegisterN generic map(n_bits=>n_bits) port map (D => Data, Enable => WriteEnable(12), CLK => CLK, Q=> Q12);
R13: RegisterN generic map(n_bits=>n_bits) port map (D => Data, Enable => WriteEnable(13), CLK => CLK, Q=> Q13);
R14: RegisterN generic map(n_bits=>n_bits) port map (D => Data, Enable => WriteEnable(14), CLK => CLK, Q=> Q14);
R15: RegisterN generic map(n_bits=>n_bits) port map (D => Data, Enable => WriteEnable(15), CLK => CLK, Q=> Q15);

-- Output multiplexer A: select register contents to place at output port A
with AA select
    A <= Q0 when "0000",
         Q1 when "0001",
         Q2 when "0010",
         Q3 when "0011",
         Q4 when "0100",
         Q5 when "0101",
         Q6 when "0110",
         Q7 when "0111",
         Q8 when "1000",
         Q9 when "1001",
         Q10 when "1010",
         Q11 when "1011",
         Q12 when "1100",
         Q13 when "1101",
         Q14 when "1110",
         Q15 when others;

-- Output multiplexer B: select register contents to place at output port B
with BA select
    B <= Q0 when "0000",
         Q1 when "0001",
         Q2 when "0010",
         Q3 when "0011",
         Q4 when "0100",
         Q5 when "0101",
         Q6 when "0110",
         Q7 when "0111",
         Q8 when "1000",
         Q9 when "1001",
         Q10 when "1010",
         Q11 when "1011",
         Q12 when "1100",
         Q13 when "1101",
         Q14 when "1110",
         Q15 when others;

end structural;
