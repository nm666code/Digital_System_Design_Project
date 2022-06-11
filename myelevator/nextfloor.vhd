library ieee;
use ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;

entity nextfloor is
port (outside_bt_up : in std_logic_vector(3 downto 0);
		outside_bt_down: in std_logic_vector(3 downto 0);
		inside_bt : in std_logic_vector(4 downto 0);
		floor_count : in std_logic_vector(2 downto 0);      --0~4
		motion: in std_logic_vector(1 downto 0);				--10:up, 01:down, 00:stop
		next_floor: out std_logic_vector(2 downto 0);
		next_motion:out std_logic_vector(1 downto 0);
		is_clean : out std_logic);                         --是否清除當前(floor_count)的內外按鈕
end nextfloor;

architecture testtest of nextfloor is

signal next_floor_temp : std_logic_vector(2 downto 0);
constant test1: integer range 0 to 7 := to_integer(unsigned(floor_count)); 

begin
	process(floor_count, outside_bt_down, outside_bt_up, inside_bt)
	begin
		next_floor_temp <= "111";
		if(inside_bt = "00000") then
			if(motion = "10") then
				for i in 3 downto test1 loop
					if(outside_bt_up(i) = '1') then
						next_floor_temp <= std_logic_vector(to_unsigned(i, 3));
					end if;
				end loop;
				if(next_floor_temp = "111") then
					for i in 0 to 3 loop
						if(outside_bt_down(i) = '1') then
							next_floor_temp <= std_logic_vector(to_unsigned(i + 1, 3));
						end if;
					end loop;
				end if;
				if(next_floor_temp = "111") then
					for i in test1 to 0 loop
						if(outside_bt_up(i) = '1') then
							next_floor_temp <= std_logic_vector(to_unsigned(i, 3));
						end if;
					end loop;
				end if;
				if(next_floor_temp = "111") then
					next_floor_temp <= floor_count;
				end if;
			else
				for i in 0 to test1 - 1 loop
					if(outside_bt_down(i) = '1') then
						next_floor_temp <= std_logic_vector(to_unsigned(i + 1, 3));
					end if;
				end loop;
				if(next_floor_temp = "111") then
					for i in 3 downto 0 loop
						if(outside_bt_up(i) = '1') then
							next_floor_temp <= std_logic_vector(to_unsigned(i, 3));
						end if;
					end loop;
				end if;
				if(next_floor_temp = "111") then
					for i in test1 to 3 loop
						if(outside_bt_down(i) = '1') then
							next_floor_temp <= std_logic_vector(to_unsigned(i, 3));
						end if;
					end loop;
				end if;
				if(next_floor_temp = "111") then
					next_floor_temp <= floor_count;
				end if;
			end if;
		else
			if (motion = "10") then
				for i in 4 downto test1 loop
					if(inside_bt(i) = '1') then	
						next_floor_temp <= std_logic_vector(to_unsigned(i, 3));
					end if;
				end loop;
			end if;
			if(next_floor_temp = "111") then
				for i in 0 to test1 loop
					if(inside_bt(i) = '1') then	
						next_floor_temp <= std_logic_vector(to_unsigned(i, 3));
					end if;
				end loop;
			end if;
			if(next_floor_temp = "111") then
				for i in 4 downto test1 loop
					if(inside_bt(i) = '1') then	
						next_floor_temp <= std_logic_vector(to_unsigned(i, 3));
					end if;
				end loop;
			end if;
		end if;
		next_floor <= next_floor_temp;
		if floor_count = next_floor_temp then
			next_motion <= "00";
			is_clean <= '1';
		elsif floor_count > next_floor_temp then
			next_motion <= "01";
			is_clean <= '0';
		else
			next_motion <= "10";
			is_clean <= '1';
		end if;
	end process;
end testtest;
	