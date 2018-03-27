----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 18.03.2017 20:38:20
-- Design Name: 
-- Module Name: EXMEM_Stage_Registers - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity EXMEM_Stage_Registers is
    Port ( 
       CLK     : in STD_LOGIC;
       Enable  : in STD_LOGIC;
       EX_PC   : in STD_LOGIC_VECTOR (31 downto 0);
       EX_I    : in STD_LOGIC_VECTOR (31 downto 0);
       EX_A    : in STD_LOGIC_VECTOR (31 downto 0);
       EX_B    : in STD_LOGIC_VECTOR (31 downto 0);
       EX_D    : in STD_LOGIC_VECTOR (31 downto 0);
       EX_KNS  : in STD_LOGIC_VECTOR (31 downto 0);
       EX_MMA  : in STD_LOGIC_VECTOR (1 downto 0);
       EX_MMB  : in STD_LOGIC_VECTOR (1 downto 0);
       EX_MW   : in STD_LOGIC;
       EX_MD   : in STD_LOGIC;
       EX_DA   : in STD_LOGIC_VECTOR (3 downto 0);
       MEM_PC  : out STD_LOGIC_VECTOR (31 downto 0);
       MEM_I   : out STD_LOGIC_VECTOR (31 downto 0);
       MEM_A   : out STD_LOGIC_VECTOR (31 downto 0);
       MEM_B   : out STD_LOGIC_VECTOR (31 downto 0);
       MEM_D   : out STD_LOGIC_VECTOR (31 downto 0);
       MEM_KNS : out STD_LOGIC_VECTOR (31 downto 0);
       MEM_MMA : out STD_LOGIC_VECTOR (1 downto 0);
       MEM_MMB : out STD_LOGIC_VECTOR (1 downto 0);
       MEM_MW  : out STD_LOGIC;
       MEM_MD  : out STD_LOGIC;
       MEM_DA  : out STD_LOGIC_VECTOR (3 downto 0)
   );
end EXMEM_Stage_Registers;

architecture Behavioral of EXMEM_Stage_Registers is

component RegisterN
    generic(n_bits : natural := 31);
	port(	CLK: in std_logic;
            D: in std_logic_vector(n_bits-1 downto 0);
			Enable: in std_logic;
			Q: out std_logic_vector(n_bits-1 downto 0)
			);
end component;

begin

EX_MEM_PC:  RegisterN generic map(n_bits=>32) port map(CLK=>CLK, D=>EX_PC,      Enable=>Enable, Q=>MEM_PC);
EX_MEM_I:   RegisterN generic map(n_bits=>32) port map(CLK=>CLK, D=>EX_I,       Enable=>Enable, Q=>MEM_I);
EX_MEM_A:   RegisterN generic map(n_bits=>32) port map(CLK=>CLK, D=>EX_A,       Enable=>Enable, Q=>MEM_A);
EX_MEM_B:   RegisterN generic map(n_bits=>32) port map(CLK=>CLK, D=>EX_B,       Enable=>Enable, Q=>MEM_B);
EX_MEM_K:   RegisterN generic map(n_bits=>32) port map(CLK=>CLK, D=>EX_KNS,     Enable=>Enable, Q=>MEM_KNS);
EX_MEM_D:   RegisterN generic map(n_bits=>32) port map(CLK=>CLK, D=>EX_D,       Enable=>Enable, Q=>MEM_D);
EX_MEM_Mem: RegisterN generic map(n_bits=>5)  port map(CLK=>CLK, Enable=>Enable,
                        D(4 downto 3)=>EX_MMA,  D(2 downto 1)=>EX_MMB,  D(0)=>EX_MW,
                        Q(4 downto 3)=>MEM_MMA, Q(2 downto 1)=>MEM_MMB, Q(0)=>MEM_MW);
EX_MEM_WB:  RegisterN generic map(n_bits=>5)  port map(CLK=>CLK, Enable=>Enable, 
                        D(4 downto 1)=>EX_DA,  D(0)=>EX_MD,  
                        Q(4 downto 1)=>MEM_DA, Q(0)=>MEM_MD);

end Behavioral;
