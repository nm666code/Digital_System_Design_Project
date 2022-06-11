library ieee;
use ieee.std_logic_1164.all;

entity Debunce_v is
	port (Key_in, CLK : in std_logic;
		Key_out : out std_logic);
end Debunce_v;

architecture a of Debunce_v is
	signal D0, D1, S, R, Q, Qn : std_logic;
	
begin
process(clk)
	Begin
		if(CLK'event and CLK='1')then
			D0 <=Key_in;
			D1 <= D0;
		end if;
	end process;
	
S <= D0 and D1;

R <= (not D0) and (not D1);

Q <=R nor Qn;
Qn <= S nor Q;

Key_out <= Q;

end a;