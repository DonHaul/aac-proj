library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity LogicUnitI is
    Port ( Ai : in std_logic;
       Bi : in std_logic;
       FS : in std_logic_vector (2 downto 0);
       Di : out std_logic);
end LogicUnitI;

architecture structural of LogicUnitI is
begin
    with FS select
    Di <= Ai and Bi     when "100",
        Ai nand Bi      when "101",
        Ai or Bi        when "110",
        Ai nor Bi       when "111",
        Ai xor Bi       when "000",
        Ai xnor Bi      when "001",
        '-'             when "010" | "011",
        'X'             when others;
end structural;