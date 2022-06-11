library ieee;
use ieee.std_logic_1164.all;

entity multiplexer is
port (a: in std_logic_vector(4 downto 0);
      f: out std_logic_vector(3 downto 0));
end multiplexer;

architecture multiplexer of multiplexer is
begin
    f <= "0001" when a = "00001" else
    "0010" when a = "00010" else
    "0011" when a = "00100" else
    "0100" when a = "01000" else
    "0101" when a = "10000" ;
    
end multiplexer;