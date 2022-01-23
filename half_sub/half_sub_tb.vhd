LIBRARY ieee;
use ieee.std_logic_1164.all;

entity half_sub_tb is
end half_sub_tb;

architecture archi of half_sub_tb is
component half_sub is
port(a,b:in std_logic;
diff,borrow:out std_logic);
end component;

signal a,b,d,bo: std_logic;
begin
uut: half_sub port map(
a=>a,b=>b,
diff=>d,borrow=>bo);

a<='0','1' after 80 ns;
b<='0','1' after 40 ns, '0' after 80 ns,'1' after 120 ns,'0' after 160 ns;
end archi;
