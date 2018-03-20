library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity LogicUnit is
    Generic (n_bits : integer := 32);
    Port ( A : in std_logic_vector (n_bits-1 downto 0);
           B : in std_logic_vector (n_bits-1 downto 0);
           FS : in std_logic_vector (2 downto 0);
           D : out std_logic_vector (n_bits-1 downto 0));
end LogicUnit;

architecture structural of LogicUnit is
component LogicUnitI is
    Port ( Ai : in std_logic;
       Bi : in std_logic;
       FS : in std_logic_vector (2 downto 0);
       Di : out std_logic);
end component;
begin
    logicGen: for I in n_bits-1 downto 0 generate
        LUi : LogicUnitI port map (Ai=>A(I), Bi=>B(I), FS=>FS, Di=>D(I));
    end generate logicGen;
end structural;
