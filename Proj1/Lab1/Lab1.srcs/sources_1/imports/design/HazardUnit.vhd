library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity HazardUnit is
    Port (
            CLK : in STD_LOGIC;
            Enable : in STD_LOGIC;
            -- Data Hazards
            Flag_A_EX : in STD_LOGIC;
            Flag_B_EX : in STD_LOGIC;
            Flag_A_MEM : in STD_LOGIC;
            Flag_B_MEM : in STD_LOGIC;
            Flag_A_WB : in STD_LOGIC;
            Flag_B_WB: in STD_LOGIC;
            -- Control Hazards
            EX_PCLoadEnable : in STD_LOGIC;
            ID_PL : in STD_LOGIC;
            -- Hazard Solving
            EnableIF : out STD_LOGIC;
            EnableID : out STD_LOGIC;
            EnableEX : out STD_LOGIC;
            EnableMEM : out STD_LOGIC;
            EnableWB : out STD_LOGIC
          );
end HazardUnit;

architecture Behavioral of HazardUnit is

component RegisterN
    generic(n_bits : natural := 31);
	port(	CLK: in std_logic;
            D: in std_logic_vector(n_bits-1 downto 0);
			Enable: in std_logic;
			Q: out std_logic_vector(n_bits-1 downto 0)
			);
end component;

signal DataHazard, ControlHazard_ID, ControlHazard_EX, Real_DataHazard : STD_LOGIC;
signal Stall_IF, Stall_ID : STD_LOGIC;
signal Next_Nop_ID, Next_Nop_EX, Next_Nop_MEM, Next_Nop_WB : STD_LOGIC;
signal Nop_ID, Nop_EX, Nop_MEM, Nop_WB : STD_LOGIC;

begin

DataHazard <= Flag_A_EX OR Flag_B_EX OR Flag_A_MEM OR Flag_B_MEM OR Flag_A_WB OR Flag_B_WB;
Real_DataHazard <= DataHazard AND (NOT Nop_ID);
ControlHazard_ID <= (ID_PL AND (NOT Nop_ID));
ControlHazard_EX <= (EX_PCLoadEnable AND (NOT Nop_EX));

Next_Nop_ID <= (ControlHazard_ID OR ControlHazard_EX) AND (not Real_DataHazard);
Next_Nop_EX <= Real_DataHazard OR Nop_ID;        --(DataHazard AND (NOT Nop_ID)) OR Nop_ID;
Stall_IF <= Real_DataHazard OR ControlHazard_ID;
Stall_ID <= Real_DataHazard;

Next_Nop_MEM <= Nop_EX;
Next_Nop_WB <= Nop_MEM;

Shifter: RegisterN generic map(n_bits=>4) port map(CLK=>CLK, Enable=>Enable,
                      D(3)=>Next_Nop_ID, D(2)=>Next_Nop_EX, D(1)=>Next_Nop_MEM, D(0)=>Next_Nop_WB,
                      Q(3)=>Nop_ID, Q(2)=>Nop_EX, Q(1)=>Nop_MEM, Q(0)=>Nop_WB);

EnableIF <= NOT Stall_IF;
EnableID <= (NOT Stall_ID) AND (NOT Nop_ID);
EnableEX <= NOT Nop_EX;
EnableMEM <= NOT Nop_MEM;
EnableWB <= NOT Nop_WB;

end Behavioral;
