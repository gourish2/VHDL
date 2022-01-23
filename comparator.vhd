library ieee;
use ieee.std_logic_1164.all;

entity comparator is
port(i:in std_logic_vector(1 downto 0);
G,L,E:out std_logic);
end comparator;

architecture archi of comparator is
begin
process(i)
begin
G<='0';
L<='0';
E<='0';
if(i(0)<i(1)) then
G<='1';
elsif(i(0)>i(1)) then
L<='1';
else
E<='1';
end if;
end process;
end archi;
