LIBRARY ieee;
use ieee.std_logic_1164.all;

entity full_adder_tb is
end full_adder_tb;

architecture archi of full_adder_tb is
component full_adder is
port(a,b,cin:in std_logic;
sum,carry:out std_logic);
end component;

signal a,b,cin,sum,carry: std_logic;
begin
uut: full_adder port map(
a=>a,b=>b,cin=>cin,
sum=>sum,carry=>carry);

a<='0','1' after 80 ns;
b<='0','1' after 40 ns, '0' after 80 ns,'1' after 120 ns;
cin<='0','1' after 20 ns,'0' after 40 ns,'1' after 60 ns, '0' after 80 ns,'1' after 100 ns,'0' after 120 ns,'1' after 140 ns;
end archi;
