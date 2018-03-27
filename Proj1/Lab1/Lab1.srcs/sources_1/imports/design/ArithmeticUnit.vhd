library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ArithmeticUnit is
    Generic (n_bits : integer := 32);
    Port ( A : in std_logic_vector (n_bits-1 downto 0);
           B : in std_logic_vector (n_bits-1 downto 0);
           FS : in std_logic_vector (1 downto 0);
           D : out std_logic_vector (n_bits-1 downto 0);
           CO : out std_logic;
           OV : out std_logic);
end ArithmeticUnit;

architecture structural of ArithmeticUnit is
component ArithmeticUnitI is
    Port ( Ai : in std_logic;
       Bi : in std_logic;
       FS : in std_logic_vector(1 downto 0);
       CI : in std_logic;
       Di : out std_logic;
       CO : out std_logic);
end component;
signal Yn : std_logic;
signal Z : std_logic_vector (n_bits-1 downto 0);
signal C : std_logic_vector (n_bits downto 0);

begin
    C(0) <= FS(0);
    aritGen: for I in n_bits-1 downto 0 generate
        AUi: ArithmeticUnitI port map (Ai=>A(I), Bi=>B(I), FS=>FS, CI=>C(I), Di=>Z(I), CO=>C(I+1));
    end generate aritGen;
    D <= Z;
    
    -- cary
    CO <= C(n_bits);
    -- overflow
    OV <= C(n_bits) xor C(n_bits-1);
    
end structural;