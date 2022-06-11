library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity transfrom5to3 is
port (myin: in std_logic_vector(4 downto 0);
		myout: out std_logic_vector(2 downto 0));
end transfrom5to3;

architecture arctransfrom5to3 of transfrom5to3 is
	signal cnt: std_logic_vector (3 downto 0);
begin
		process(myin)
			begin
				case myin is
					when "00001" =>
						 myout <= "000";
					when "00010" =>
						 myout <= "001";
					when "00100" =>
						 myout <= "010";
					when "01000" =>
						 myout <= "011";
					when "10000" =>
						 myout <= "100";
					when others =>
						 myout <= "000";
              end case;
			end process;
end arctransfrom5to3;