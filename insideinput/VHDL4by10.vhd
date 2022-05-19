library ieee;
use ieee.std_logic_1164.all;

entity VHDL4by10 is
port (x: in std_logic_vector(3 downto 0);
		y: out std_logic_vector(9 downto 0));
end VHDL4by10;

architecture arcVHDL4by10 of VHDL4by10 is
begin
	y <= "0000000000" when x = "0000" else
	"1000000000" when x = "0001" else
	"0100000000" when x = "0010" else
	"0010000000" when x = "0011" else
	"0001000000" when x = "0100" else
	"0000100000" when x = "0101" ;
end arcVHDL4by10;