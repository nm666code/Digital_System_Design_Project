library ieee;
use ieee.std_logic_1164.all;

entity openAnimation is
port (clk : in std_logic;
        y : out std_logic_vector (7 downto 0);
		  reset: out std_logic);
end openAnimation;

architecture arcopenAnimation of openAnimation is
signal op1: std_logic_vector (7 downto 0) := "11111110";
begin
        process(clk)
            begin
                if clk' event and clk = '1' then
                    case op1 is
                        when "11111110" =>
                            op1 <= "00000000";
                        when "00000000" =>
                            op1 <= "00011000";
                        when "00011000" =>
                            op1 <= "00111100";
                        when "00111100" =>
                            op1 <= "01111110";
                        when "01111110" =>
                            op1 <= "11111111";
								when others =>
								    op1 <= "11111111";
                    end case;
                end if;
					 if op1 = "11111111" then
						reset <= '1';
					 end if;
                y <= op1;
            end process;
end arcopenAnimation;