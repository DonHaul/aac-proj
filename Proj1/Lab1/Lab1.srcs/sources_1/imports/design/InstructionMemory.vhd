library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity InstructionMemory is
    Port ( Address : in STD_LOGIC_VECTOR (7 downto 0);
           DataOut : out STD_LOGIC_VECTOR (31 downto 0));
end InstructionMemory;

architecture Structural of InstructionMemory is
type storage_type is array (0 to 255) of std_logic_vector(31 downto 0);

-- COMENTAR A LINHA SEGUINTE E DESCOMENTAR AS LINHAS CORRESPONDENTES AO TURNO DA SEMANA
signal storage: storage_type := (others => x"00000000");

----------------------------------------------------------------------------------------------------
-- MEMORY
----------------------------------------------------------------------------------------------------
--signal storage: storage_type := (
--          --    OPCODE &   DR   &   SA   &   SB   &        KNS        -- ASSEMBLY CODE
--         0 => "000001" & "0001" & "0000" & "1111" & "11010011000011", --        ADDI  R1,R0,#-2876
--         1 => "000001" & "0111" & "0000" & "1111" & "11111111111000", --        ADDI  R7,R0,#-8
--         2 => "000001" & "0010" & "0000" & "0000" & "00000000001111", --        ADDI  R2,R0,#15
--         3 => "001100" & "0011" & "0000" & "0000" & "00000000000000", --        XOR   R3,R0,R0
--         4 => "001100" & "0100" & "0001" & "0010" & "00000000000000", -- LOOP:  XOR   R4,R1,R2
--         5 => "000100" & "0100" & "0100" & "0010" & "00000000000000", --        AND   R4,R4,R2
--         6 => "010100" & "0101" & "0100" & "0000" & "00000000000000", --        LD    R5,(R4+R0)
--         7 => "010011" & "0001" & "0000" & "0001" & "00000000000000", --        SHRA  R1,R1
--         8 => "010011" & "0001" & "0000" & "0001" & "00000000000000", --        SHRA  R1,R1
--         9 => "010011" & "0001" & "0000" & "0001" & "00000000000000", --        SHRA  R1,R1
--        10 => "010011" & "0001" & "0000" & "0001" & "00000000000000", --        SHRA  R1,R1
--        11 => "000000" & "0011" & "0011" & "0101" & "00000000000000", --        ADD   R3,R3,R5
--        12 => "011000" & "0011" & "0001" & "0111" & "11111111111111", --        BI.NE R1,#-1,R7     ; --> if (R4 >= R3) goto LOOP
--        13 => "010111" & "0000" & "0000" & "0000" & "00000000000000", -- END:   B     #0            ; --> END
--    others => x"00000000" -- NOP
--	 );

	 
begin

DataOut <= storage(to_integer(unsigned(Address)));
	
end Structural;
