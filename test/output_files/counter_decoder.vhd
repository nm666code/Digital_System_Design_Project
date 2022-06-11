library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity counter_decoder is
port(
	clk, EN : in std_logic;
	scan : out std_logic_vector(2 downto 0)
);

end counter_decoder;

architecture arch of counter_decoder is
	signal cnt : std_logic_vector(1 downto 0);
begin

	process(clk)
	begin
	if clk'event and clk='1' then
		if EN = '1' then
			cnt <= cnt+1;
		else 
			cnt <= cnt;
		end if;
	end if;
	
	end process;
	scan <=  "000" when cnt = 0 else
				"100" when cnt = 1 else
				"010" when cnt = 2 else
				"110";
end arch;