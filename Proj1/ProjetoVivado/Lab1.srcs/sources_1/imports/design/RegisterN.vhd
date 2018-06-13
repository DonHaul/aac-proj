library ieee;
use ieee.std_logic_1164.all;

entity RegisterN is
    generic(
        n_bits : natural := 31
        );
	port(	CLK: in std_logic;
            D: in std_logic_vector(n_bits-1 downto 0);
			Enable: in std_logic;
			Q: out std_logic_vector(n_bits-1 downto 0):=(others => '0')
			);
end RegisterN;

architecture structural of RegisterN is
begin
	Q <= D when CLK'event and CLK='1' and Enable='1';
end structural;
