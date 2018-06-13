library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Buf is
    port(   I : in std_logic;
            D : out std_logic);
end Buf;

architecture Behavioral of Buf is
begin
    D <= I;
end Behavioral;
