library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity WriteBack is
  Port (
        Enable   : in STD_LOGIC;
        DA       : in STD_LOGIC_VECTOR(3 downto 0);
        MD       : in STD_LOGIC;
        ALUData  : in STD_LOGIC_VECTOR(31 downto 0);
        MemData  : in STD_LOGIC_VECTOR(31 downto 0);
        LinkEn   : in STD_LOGIC;
        PCAddOne : in std_logic_vector(31 downto 0);
        -- WR       : out STD_LOGIC;
        DA_reg   : out STD_LOGIC_VECTOR(3 downto 0);
        RFData   : out STD_LOGIC_VECTOR(31 downto 0)
        );
end WriteBack;

architecture Behavioral of WriteBack is

signal SelMD : std_logic_vector(1 downto 0);

begin

-- Added link support her
DA_reg <= "0000" when Enable='0'
          else "1111" when LinkEn='1'
          else DA;
--WR <= '1' when Enable='1' and DA /= "0000" else '0';
SelMD <= LinkEn & MD;

with SelMD select
    RFData <= ALUData when "00",
              MemData when "01",
              PcAddOne when others;
    
end Behavioral;
