library ieee;
use ieee.std_logic_1164.ALL;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity counter is
    Port (	mov: in std_logic_vector(0 to 1);
				clk : in std_logic;
				o: out std_logic_vector(0 to 4));
end counter;

architecture count_arch of counter is
   signal count : std_logic_vector(0 to 2) := "001";
    begin
      process(mov, clk)
        begin
			if (clk' event and clk = '1' ) then
				if (mov = "01") then count <= count - 1;
				elsif (mov = "10") then count <= count + 1;
				end if;
			 end if;
		end process;
		with count select
			o <=	"00001" when "001",
					"00010" when "010",
					"00100" when "011",
					"01000" when "100",
					"10000" when "101",
					"00000" when others;
end count_arch;