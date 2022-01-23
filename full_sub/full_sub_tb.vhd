LIBRARY ieee;
use ieee.std_logic_1164.all;

entity full_sub_tb is
end full_sub_tb;

architecture archi of full_sub_tb is
component full_sub is
port(a,b,cin:in std_logic;
diff,borrow:out std_logic);
end component;

signal a,b,cin,diff,bo: std_logic;
begin
uut: full_sub port map(
a=>a,b=>b,cin=>cin,
diff=>diff,borrow=>bo);

a<='0','1' after 80 ns;
b<='0','1' after 40 ns, '0' after 80 ns,'1' after 120 ns;
cin<='0','1' after 20 ns,'0' after 40 ns,'1' after 60 ns, '0' after 80 ns,'1' after 100 ns,'0' after 120 ns,'1' after 140 ns,'0' after 160 ns;
end archi;
