library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity testSingleCycle is
end testSingleCycle;

architecture Behavioral of testSingleCycle is

component SingleCycle
  Port (
        CLK  : in std_logic;
        PC   : out std_logic_vector(31 downto 0); 
        I    : out std_logic_vector(31 downto 0);
        Data : out std_logic_vector(31 downto 0)
        );
end component;

signal CLK: std_logic := '1';
signal PC,I,Data: std_logic_vector(31 downto 0) := (others =>'0');
signal CountCycles : integer := 0;

begin

Processor: SingleCycle port map(CLK=>CLK, PC=>PC, I=>I, Data=>Data);

process
begin
    CountCycles <= CountCycles + 1; 
    CLK <= '1';
    wait for 5 ns;
    CLK <= '0';
    wait for 5 ns;
end process;


end Behavioral;
