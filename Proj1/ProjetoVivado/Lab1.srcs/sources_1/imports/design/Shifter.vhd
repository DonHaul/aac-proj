library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Shifter is
    Generic (n_bits : integer := 32);
    Port ( B : in std_logic_vector (n_bits-1 downto 0);
           FS : in std_logic_vector (2 downto 0);
           D : out std_logic_vector (n_bits-1 downto 0);
           CO : out std_logic;
           OV : out std_logic);
end Shifter;

architecture structural of Shifter is
begin
    with FS select
    D <= (others => '-')                    when "000" | "001",
         B(n_bits-2 downto 0) & '0'         when "010",
         '0' & B(n_bits-1 downto 1)         when "011",
         B(n_bits-2 downto 0) & '0'         when "100",
         B(n_bits-1) & B(n_bits-1 downto 1) when "101",
         B(n_bits-2 downto 0) & B(n_bits-1) when "110",
         B(0) & B(n_bits-1 downto 1)        when "111",
         (others => '-')                    when others;
         
     CO <= B(n_bits-1) when FS(0)='0' else
           B(0) when FS(0)='1' else
           '-';
           
     OV <=  B(n_bits-1) xor B(n_bits-2) when FS(0)='0' else
            '0' when FS(0)='1' else
            '-';

end structural;