LIBRARY ieee;
use ieee.std_logic_1164.all;

entity half_adder_tb is
end half_adder_tb;

architecture archi of half_adder_tb is
component half_adder is
port(a,b:in std_logic;
sum,carry:out std_logic);
end component;

signal a,b,sum,carry: std_logic;
begin
uut: half_adder port map(
a=>a,b=>b,
sum=>sum,carry=>carry);

a<='0','1' after 80 ns;
b<='0','1' after 40 ns, '0' after 80 ns,'1' after 120 ns;
end archi;
