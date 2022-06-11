library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity resetFloor is
port (is_clean: in std_logic;
		next_floor: in std_logic_vector(2 downto 0);
		reset_floor: out std_logic_vector(4 downto 0));
end resetFloor;

architecture arcresetFloor of resetFloor is
	signal cnt: std_logic_vector (3 downto 0);
begin
		process(is_clean, next_floor)
			begin
				if is_clean = '1' then
					case next_floor is
                        when "000" =>
                            reset_floor <= "00001";
                        when "001" =>
                            reset_floor <= "00010";
                        when "010" =>
                            reset_floor <= "00100";
                        when "011" =>
                            reset_floor <= "01000";
                        when "100" =>
                            reset_floor <= "10000";
								when others =>
								    reset_floor <= "00000";
                    end case;
				end if;
			end process;
end arcresetFloor;