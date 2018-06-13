library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity DataMemory is
    Generic (
     n_bits : natural := 32
    );
    Port ( Address : in std_logic_vector (31 downto 0);
           Data : in std_logic_vector (n_bits-1 downto 0);
           WR : in std_logic;
           CLK : in std_logic;
           DataOut : out std_logic_vector (n_bits-1 downto 0));
end DataMemory;

architecture structural of DataMemory is

constant number_of_address_bits : integer := 12;
type storage_type is array (0 to 2**number_of_address_bits-1) of std_logic_vector(n_bits-1 downto 0);

signal storage: storage_type := (
	 0 => x"00000000", 		-- 
	 1 => x"00000001",	   	-- 
	 2 => x"00000001",	   	-- 
	 3 => x"00000002",	   	-- 
	 4 => x"00000001",	   	-- 
	 5 => x"00000002",	   	-- 
	 6 => x"00000002",	   	-- 
	 7 => x"00000003",	   	-- 
	 8 => x"00000001",	   	-- 
	 9 => x"00000002", 		-- 
    10 => x"00000002",           -- 
    11 => x"00000003",           -- 
    12 => x"00000002",           -- 
    13 => x"00000003",           -- 
    14 => x"00000003",           -- 
    15 => x"00000004",           -- 
	 others => x"00000000");
begin

	DataOut <= storage(to_integer(unsigned(Address(number_of_address_bits-1 downto 0))));
	storage(to_integer(unsigned(Address(number_of_address_bits-1 downto 0)))) <= Data when CLK'event and CLK='1' and WR='1' and Address(31 downto number_of_address_bits)=(31 downto number_of_address_bits=>'0');

end structural;