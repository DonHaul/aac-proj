library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity branchcontrol is
Generic (n_bits : integer := 32);
    Port (
           PL : in STD_LOGIC_VECTOR(1 downto 0);
           BC : in STD_LOGIC_VECTOR(3 downto 0);
           PC : in STD_LOGIC_VECTOR (31 downto 0);
           AD : in STD_LOGIC_VECTOR (31 downto 0);
           Flags : in STD_LOGIC_VECTOR(3 downto 0);
           PCLoad : out STD_LOGIC;
           LinkEn: out STD_LOGIC;
           PCValue : out STD_LOGIC_VECTOR (31 downto 0));
end branchcontrol;

architecture Behavioral of branchcontrol is

component ArithmeticUnitI is
    Port ( Ai : in std_logic;
       Bi : in std_logic;
       FS : in std_logic_vector(1 downto 0);
       CI : in std_logic;
       Di : out std_logic;
       CO : out std_logic);
end component;

signal Z,N,P,C,V: std_logic;


signal condition : std_logic_vector (2 downto 0);
signal condRes, link, PCEn : std_logic;

signal Yn : std_logic;
signal Z1 : std_logic_vector (n_bits-1 downto 0);
signal C1 : std_logic_vector (n_bits downto 0);
signal D : std_logic_vector (n_bits-1 downto 0);

begin
  C1(0) <= '0';
  aritGen: for I in n_bits-1 downto 0 generate
      AUi: ArithmeticUnitI port map (Ai=>PC(I), Bi=>AD(I), FS=>"00", CI=>C1(I), Di=>Z1(I), CO=>C1(I+1));
  end generate aritGen;
  D <= Z1;


Z <= Flags(3);        -- zero flag
N <= Flags(2);        -- negative flag
P <= not N and not Z; -- positive flag
C <= FLags(1);        -- carry flag
V <= Flags(0);        -- overflow flag

-- Definir a logica relativa ao calculo do sinal PCLoad, o qual devera ter o nivel logico '1' sempre que
-- ocorrer uma instrucao de salto (branch), mas apenas nos casos em que a condicao de salto e verdadeira.
-- Em todos os outros casos (i.e., a instrucao nao e de branch, ou a condicao de salto e falsa) o valor
-- devera ser zero.

link<= BC(3);
condition <= BC(2 downto 0);

--define qual a condicao a ser utilizada
with  condition select
    condRes <= '0'    when "000",
               '1'    when "001",
               Z      when "010",
               not Z  when "011",
               P      when "100",
               not N  when "101",
               N      when "110",
               not P  when others;


PCEn <= PL(1) and condRes;
PCLoad <= PCEn;
LinkEn <= PCEn and link;

-- Calculo do novo valor de PC (caso a condicao de salto seja verdadeira)

with  PL(0) select
    PCValue <= D    when '0',
               AD  when others;

end Behavioral;
