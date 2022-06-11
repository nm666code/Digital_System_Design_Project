library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity doorswitch is
port (is_clean: in std_logic;
		clk: in std_logic;
		setOpen: out std_logic;
		setClose: out std_logic);
end doorswitch;

architecture arcdoorswitch of doorswitch is
	signal cnt: std_logic_vector (3 downto 0);
begin
		process(is_clean, clk)
			begin
				if clk' event and clk ='1' then
					if is_clean = '1' then
						if cnt = 0 then
							setOpen <= '1';
						elsif cnt = 7 then
							setClose <= '1';
						end if;
						if cnt <= 7 then
							cnt <= cnt+1;
						else 
							cnt <= "1000";
						end if;
					else 
						cnt <= "0000";
					end if;
				end if;
			end process;
end arcdoorswitch;