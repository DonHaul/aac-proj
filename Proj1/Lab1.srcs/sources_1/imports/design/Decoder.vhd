library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Decoder is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           D0 : out STD_LOGIC;
           D1 : out STD_LOGIC;
           D2 : out STD_LOGIC;
           D3 : out STD_LOGIC;
           D4 : out STD_LOGIC;
           D5 : out STD_LOGIC;
           D6 : out STD_LOGIC;
           D7 : out STD_LOGIC;
           D8 : out STD_LOGIC;
           D9 : out STD_LOGIC;
           D10 : out STD_LOGIC;
           D11 : out STD_LOGIC;
           D12 : out STD_LOGIC;
           D13 : out STD_LOGIC;
           D14 : out STD_LOGIC;
           D15 : out STD_LOGIC);
end Decoder;

architecture Behavioral of Decoder is
begin
    D0  <= not A(3) and not A(2) and not A(1) and not A(0);
    D1  <= not A(3) and not A(2) and not A(1) and     A(0);
    D2  <= not A(3) and not A(2) and     A(1) and not A(0);
    D3  <= not A(3) and not A(2) and     A(1) and     A(0);
    D4  <= not A(3) and     A(2) and not A(1) and not A(0);
    D5  <= not A(3) and     A(2) and not A(1) and     A(0);
    D6  <= not A(3) and     A(2) and     A(1) and not A(0);
    D7  <= not A(3) and     A(2) and     A(1) and     A(0);
    D8  <=     A(3) and not A(2) and not A(1) and not A(0);
    D9  <=     A(3) and not A(2) and not A(1) and     A(0);
    D10 <=     A(3) and not A(2) and     A(1) and not A(0);
    D11 <=     A(3) and not A(2) and     A(1) and     A(0);
    D12 <=     A(3) and     A(2) and not A(1) and not A(0);
    D13 <=     A(3) and     A(2) and not A(1) and     A(0);
    D14 <=     A(3) and     A(2) and     A(1) and not A(0);
    D15 <=     A(3) and     A(2) and     A(1) and     A(0);
end Behavioral;
