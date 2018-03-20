library ieee;
use ieee.std_logic_1164.all;

entity FullAdder is
	port(	X: in std_logic;
		Y: in std_logic;
		CI: in std_logic;
		O: out std_logic;
		CO: out std_logic);
end FullAdder;

architecture structural of FullAdder is
	signal N00:  std_logic;
begin
    N00 <= X xor Y;
    O   <= N00 xor CI;
    CO  <= (X and Y) or (N00 and CI);
end structural;
