library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity testFiveStagePipeline is
end testFiveStagePipeline;

architecture Behavioral of testFiveStagePipeline is

component FiveStagePipeline
  Port (
        CLK  : in std_logic;
        PC   : out std_logic_vector(31 downto 0);
        I    : out std_logic_vector(31 downto 0);
        Data : out std_logic_vector(31 downto 0)
        );
end component;

signal CLK: std_logic := '1';
signal I,Data: std_logic_vector(31 downto 0):= (others =>'0');
signal CountCycles : integer := 0;
signal PC: std_logic_vector :=(31 downto 0):= (others =>'00000000000000000000000011110000');
                                                        

begin

Processor: FiveStagePipeline port map(CLK=>CLK, PC=>PC, I=>I, Data=>Data);

process
begin
    CountCycles <= CountCycles + 1;
    CLK <= '1';
    wait for 5 ns;
    CLK <= '0';
    wait for 5 ns;
end process;


end Behavioral;
