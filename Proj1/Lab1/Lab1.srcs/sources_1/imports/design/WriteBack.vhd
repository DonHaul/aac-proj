library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity WriteBack is
  Port (
        Enable   : in STD_LOGIC;
        DA       : in STD_LOGIC_VECTOR(3 downto 0);
        MD       : in STD_LOGIC;
        ALUData  : in STD_LOGIC_VECTOR(31 downto 0);
        MemData  : in STD_LOGIC_VECTOR(31 downto 0);
        WR       : out STD_LOGIC;
        RFData   : out STD_LOGIC_VECTOR(31 downto 0)
        );
end WriteBack;

architecture Behavioral of WriteBack is

begin

WR <= '1' when Enable='1' and DA /= "0000" else '0';

with MD select
    RFData <= ALUData when '0',
              MemData when others;
    
end Behavioral;
