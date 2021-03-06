library ieee;
use ieee.std_logic_1164.all;

entity endecoder is
port(
	Column : in std_logic_vector(0 to 3);
	Row : in std_logic_vector(0 to 2);
	y : out std_logic_vector(3 downto 0)
);

end endecoder;

architecture a of endecoder is
	signal X : std_logic_vector(6 downto 0);
	
begin
	X <= Row & Column;
	
with X select
	y <=  "0001" when "0110111",
			"0010" when "0111011",
			"0011" when "0111101",
			"0100" when "1010111",
			"0101" when "1011011",
			"0110" when "1011101",
			"0111" when "1100111",
			"1000" when "1101011",
			"1001" when "1101101",
			"0000" when others;
end a;