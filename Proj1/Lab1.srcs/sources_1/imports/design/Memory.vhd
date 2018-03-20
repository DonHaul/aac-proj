library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Memory is
  Port (
    CLK    : in std_logic;
    StageEnable : in std_logic;
    A      : in std_logic_vector(31 downto 0); 
    B      : in std_logic_vector(31 downto 0);
    KNS    : in std_logic_vector(31 downto 0);
    Din    : in std_logic_vector(31 downto 0);
    MMA    : in std_logic_vector( 1 downto 0);
    MMB    : in std_logic_vector( 1 downto 0);
    MW     : in std_logic;
    Dout   : out std_logic_vector(31 downto 0)
  );
end Memory;

architecture Structural of Memory is

component DataMemory is
    Port ( Address : in std_logic_vector (31 downto 0);
           Data : in std_logic_vector (31 downto 0);
           WR : in std_logic;
           CLK : in std_logic;
           DataOut : out std_logic_vector (31 downto 0));
end component;

signal Address,MemDataIn : std_logic_vector(31 downto 0);
signal WR: std_logic;

begin

-- select operands for the functional unit
with MMA select 
    Address <= KNS when "00",
               A   when "01",
               B   when "10", 
               Din when others;

with MMB select 
    MemDataIn <= KNS when "00",
               A   when "01",
               B   when "10", 
               Din when others;

WR <= StageEnable and MW;

-- instantiate the Data Memory
uDataMem: DataMemory port map( Address => Address , Data => MemDataIn , WR => WR, CLK => CLK, DataOut => Dout);

end Structural;
