library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity motion is
port(
	presentFloor: in std_logic_vector(4 downto 0);
	nextFloor: in std_logic_vector(4 downto 0);
	motion:out std_logic_vector(1 downto 0)
	);
end motion;

architecture oo of motion is
begin
	process(presentFloor,nextFloor) is
		begin
			if presentFloor > nextFloor then
				motion <= "01";
			elsif presentFloor < nextFloor then
				motion <= "10";
			else
				motion <= "00";
			end if;
	end process;	
end oo;