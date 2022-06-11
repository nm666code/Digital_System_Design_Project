library ieee;
use ieee.std_logic_1164.all;

entity endecoder is
port(
	Column : in std_logic_vector(0 to 2);
	Row : in std_logic_vector(2 downto 0);
	y : out std_logic_vector(3 downto 0)
);

end endecoder;

architecture a of endecoder is
	signal X : std_logic_vector(5 downto 0);
	
begin
	X <= Row & Column;
	
with X select
	y <=  "0001" when "000011",
			"0010" when "000101",
			"0011" when "000110",
			"0100" when "100011",
			"0101" when "100101",
			"0110" when "100110",
			"0111" when "010011",
			"1000" when "010101",
			"1001" when "010110",
			"0000" when others;
end a;