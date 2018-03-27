library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ArithmeticUnitI is
    Port ( Ai : in std_logic;
       Bi : in std_logic;
       FS : in std_logic_vector(1 downto 0);
       CI : in std_logic;
       Di : out std_logic;
       CO : out std_logic);
end ArithmeticUnitI;

architecture structural of ArithmeticUnitI is
component FullAdder is
	port(X: in std_logic;
		Y: in std_logic;
		CI: in std_logic;
		O: out std_logic;
		CO: out std_logic);
end component;
signal Yi : std_logic;
begin
    Yi <= (Bi and not FS(1)) or (not Bi and FS(1));
    FA: FullAdder port map (X => Ai, Y => Yi, CI => CI, O => Di, CO => CO); 
end structural;
