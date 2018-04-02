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
--signal storage: storage_type := (others => x"00000000");

----------------------------------------------------------------------------------------------------
-- MEMORY
----------------------------------------------------------------------------------------------------
signal storage: storage_type := (
--       --   --    OPCODE &   DR   &   SA   &   SB   &        KNS        -- ASSEMBLY CODE
        --TESTAR SALTOS PARA FRENTE E TRAS
--       0 => "010111" & "0001" & "0000" &   "1000"&"00000000000101", --        BR TRUE  R0,R0,PC+5
--       5 => "010111" & "0001" & "0000" &   "1000"&"00000000000101", --        BR TRUE  R0,R0,PC+5
--      10 => "010111" & "0001" & "1000" &   "1000"&"00000000000101",--        BR TRUE  R5,R5,PC+5
--      25 => "000001" & "0001" & "0000" & "000000000000001111",     --        ADDI  R1,R0,#15
--      26 => "000001" & "0010" & "0000" & "000000000000001111",     --        ADDI  R2,R0,#15
--      27 => "000001" & "0011" & "0000" & "000000000000010000",     --        ADDI  R3,R0,#16
--      28 => "000001" & "0100" & "0000" &   "111111010011000011",   --        ADDI  R4,R0,#-2877
--      29 => "010111" & "0000" & "0010" &   "1000"&"00000000001000",--        BR FALSE  R0,R0,PC+8
--      30 => "010111" & "0010" & "0001" &   "0010"&"00000000000101",--        BR EQ   R8,R0,R8
--      35 => "010111" & "0011" & "0001" &   "0000"&"00000000000101",--        BR NEQ   R8,R0,R8
--      40 => "010111" & "0011" & "0001" &   "0010"&"00000000000101",--        BR EQ   R8,R0,R8  --Doest occur branch here
--      41 => "010111" & "0010" & "0001" &   "0000"&"00000000000101",--        BR NEQ   R8,R0,R8 --Doest occur branch here
--      45 => "010111" & "0100" & "0000" &   "0100"&"00000000000101",--        BR GT   R0>R4 0 > -2887 --occurs branch here
--      50 => "010111" & "0100" & "0011" &   "0001"&"00000000000101",--        BR GT   R3>R1 16>15 --occurs branch here
--      55 => "010111" & "0100" & "0100" &   "0100"&"00000000000101",--        BR GT   R4>R4, -2877>-2877 -- Doentst occurs branch here
--      60 => "010111" & "0110" & "0001" &   "0011"&"00000000000101",--        BR LT   R8,R0,R8 --  occurs branch here
--      65 => "010111" & "0110" & "0011" &   "0001"&"00000000000101",--        BR LT   R8,R0,R8 -- Does not occur branch here
--      70 => "010111" & "0101" & "0001" &   "0010"&"00000000000101",--        BR GE   R8,R0,R8 --occurs branch here
--      75 => "010111" & "0101" & "0011" &   "0001"&"00000000000101",--        BR GE   R8,R0,R8 --occurs branch here
--      80 => "010111" & "0101" & "0001" &   "0011"&"00000000000101",--        BR GE   R8,R0,R8 -- Doentst occurs branch here
--      85 => "010111" & "0111" & "0000" &   "0000"&"00000000000101",--        BR LEQ   R8,R0,R8 --occurs branch here
--      90 => "010111" & "0111" & "0100" &   "0000"&"00000000000101",--        BR LEQ   R8,R0,R8 --occurs branch here
--      95 => "010111" & "0111" & "0000" &   "0100"&"00000000000101",--        BR LEQ   R8,R0,R8 -- Doentst occurs branch here
--      --Teste ao salto negativo vai 2 para tras e 6 para a frente
--      96 => "010111" & "0001" & "0000" &   "1000"&"11111111111110",      --        BR TRUE  R0,R0,PC-2
--      94 => "010111" & "0001" & "0000" &   "1000"&"00000000000101",      --        BR TRUE  R0,R0,PC+5
--      --Testes Aos BI BIL J JI JIL
--      99 => "010111" & "1001" & "0000" &   "1000"&"00000000000101",      --        BL TRUE  R0,R0,PC+5
--     104 => "000000" & "1111" & "0000" & "1111"  &"00000000000000",   --          ADD   R15,R0,R15 -should be 95 (LINK CONFIRMED?)
--     105 => "000001" & "0010" & "0000" & "000000000000001001",     --        ADDI  R2,R0,#17
--     106 => "011000" & "0001" & "0010" &   "0010"&"00000000001000",      --        BI TRUE ,PC+R2 (+17)
--     120 => "011000" & "1001" & "0010" &   "0010"&"00000000001111",      --        BIL TRUE ,PC+R15 (+5)
--     129 => "000000" & "1111" & "0000" & "1111"  &"00000000000000",   --        ADD   R15,R0,R15 -should be 101 (LINK CONFIRMED?)
--     130 => "011001" & "0001" & "0000" &   "1000"&"00000010010000",      --        J TRUE  R0,R0,PC=144
--     150 => "011001" & "1001" & "0000" &   "1000"&"00000010011000",      --        JL TRUE  R0,R0,PC=152
--     158 => "000000" & "1111" & "0000" & "1111"  &"00000000000000",   --        ADD   R15,R0,R15 -should be 101 (LINK CONFIRMED?)
--     159 => "000001" & "0010" & "0000" & "000000000011000000",     --        ADDI  R2,R0,#192
--     160 => "000001" & "0011" & "0000" & "000000000011000100",     --        ADDI  R3,R0,#196
--     161 => "011010" & "0001" & "0000" &   "0010"&"00000010010000",      --        JI TRUE  R0,R0,PC=R2
--     192 => "011010" & "1001" & "0000" &   "0011"&"00000010011000",      --        JIL TRUE  R0,R0,PC=R3
--     196 => "000000" & "1111" & "0000" & "1111"  &"00000000000000",   --        ADD   R15,R0,R15 -should be 101 (LINK CONFIRMED?)
--
--
--
--         201 => "000011" & "0111" & "0000" &   "000000000000001000",      --        SUBI  R7,R0,#8
--         202 => "000001" & "0010" & "0000" & "000000000000001111",        --        ADDI  R2,R0,#15
--         200 => "000001" & "0001" & "0000" &   "111111010011000011",      --        ADDI  R1,R0,#-2877
--         203 => "000000" & "0010" & "0010" & "0111" & "00000000000000",   --        ADD   R2,R2,R7
--         204 => "000010" & "0010" & "0010" & "0010" & "00000000000000",   --        SUB   R2,R2,R2
--         205 => "000000" & "0000" & "0000" & "0000" & "00000000000000",   --        NOP
--         206 => "001101" & "0011" & "0000" & "0010" & "00000000000000",   --        XNOR R3,R2,R0
--         207 => "001100" & "0100" & "0000" & "0011" & "00000000000000",   --        XOR R4,R3,R0
--         208 => "000100" & "0101" & "0000" & "0100" & "00000000000000",   --        AND R5,R4,R0  r5 fica com tudo zero
--         209 => "000001" & "0110" & "0000" &    "010000101110111000",    --        ADDI  R6,R0,#3000
--         210 =>"000101" & "1000" & "0110" & "000000000000001000",   --        ANDIL R8,R6,0000000
--         211 =>"000110" & "1001" & "1000" & "000000000000111111",   --        ANDIH R9,R8,R0  saida e suposto ser 000000100000001000
--         212 => "000111"& "0100" & "0000" & "0000" & "00000000000000",   --        NAND R4,R0,R0  (NOT R0)
--         213 => "000111"& "1010" & "0100" & "1001" & "00000000000000",   --        NAND R10,R4,R9  saida e suposto ser 111111011111110111
--         214 => "001000"& "1011" & "1010" & "1001" & "00000000000000",   --        OR R11,R10,R9  saida e suposto ser 111111111111111111
--
--         215 => "001001"& "1100" & "1001" & "00"&"0010101010101010",   --        ORIL R12,R9
--         216 => "001010"& "1101" & "1001" & "00"&"0010101010101010",   --        ORIH R13,R9
--         217 => "001011"& "1110" & "1101" & "1111" & "00000000000000",  --        NOR R14,R13,R0
--         218 =>  "000001" & "1111" & "0000" &   "111111010011000011",      --        ADDI  R15,R0,#-2877
--         219 => "010011" & "1111" & "0000" & "1111" & "00000000000000",     --        SHRA  R15,R15
--         220 => "010001" & "1111" & "0000" & "1111" & "00000000000000",      --        ROR  R15,R15
--         221 => "010000" & "1111" & "0000" & "1111" & "00000000000000",    --        ROL  R15,R15
--         222 => "001111" & "1111" & "0000" & "1111" & "00000000000000",      --        SHR  R15,R15
--         223 => "001110" & "1111" & "0000" & "1111" & "00000000000000",   --        SHL  R15,R15
--         224 => "010010" & "1111" & "0000" & "1111" & "00000000000000",      --        SHLA  R15,R15
--         ----loads
--         225 =>  "000001" & "0010" & "0000" &   "111111111111111110",      --        ADDI  R2,R0,#-2
--         226 => "010110" & "0000" & "0010" & "1111" & "00000000001010",      --     ST  R2+#10  >R15
--         227 => "010101" & "0011" & "0010" & "000000000000001010",    --       LDI  R3,R2#10 -2
--         228 =>  "000001" & "0100" & "0000" &   "000000000000001010",      --        ADDI  R4,R0,#10
--         229 => "010100" & "1110" & "0010" & "0100" & "00000000000000",      --     LD  R14,R4+R2
         --branches


         --Hazard
         0 =>  "000001" & "0010" & "0000" &   "111111111111111110",      --        ADDI  R2,R0,#-2
         1 =>  "000000" & "0000" & "0000" &   "000000000000000000",      --        NOP
         2 => "000000" & "0010" & "0010" & "0111" & "00000000000000",   --        ADD   R2,R2,R7
         3 =>  "000000" & "0000" & "0000" &   "000000000000000000",      --        NOP
         4 =>  "000000" & "0000" & "0000" &   "000000000000000000",      --        NOP
         5 =>  "000000" & "0000" & "0000" &   "000000000000000000",      --        NOP
         6 => "010111" & "0001" & "0000" &   "1000"&"00000000000101", --        BR TRUE  R0,R0,PC+5
         7 => "000000" & "0010" & "0010" & "0010" & "00000000000000",   --        ADD   R2,R2,R7
         8 => "000000" & "0010" & "0010" & "0010" & "00000000000000",   --        ADD   R2,R2,R7
         11 => "001001"& "0011" & "0010" & "00"&"1111101010101010",   --        ORIL R2,#cenas
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
    others => x"00000000" -- NOP
);


begin

DataOut <= storage(to_integer(unsigned(Address)));

end Structural;
