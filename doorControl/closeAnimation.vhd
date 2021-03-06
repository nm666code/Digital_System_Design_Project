library ieee;
use ieee.std_logic_1164.all;

entity closeAnimation is
port (clk : in std_logic;
        z : out std_logic_vector (7 downto 0);
		  reset: out std_logic);
end closeAnimation;

architecture arccloseAnimation of closeAnimation is
signal op1: std_logic_vector (7 downto 0) := "11111110";
begin
        process(clk)
            begin
                if clk' event and clk = '1' then
                    case op1 is
                        when "11111110" =>
                            op1 <= "11111111";
                        when "11111111" =>
                            op1 <= "01111110";
                        when "01111110" =>
                            op1 <= "00111100";
                        when "00111100" =>
                            op1 <= "00011000";
                        when "00011000" =>
                            op1 <= "00000000";
								when others =>
								    op1 <= "00000000";
                    end case;
                end if;
					  if op1 = "00000000" then
						reset <= '1';
					 end if;
                z <= op1;
            end process;
end arccloseAnimation;