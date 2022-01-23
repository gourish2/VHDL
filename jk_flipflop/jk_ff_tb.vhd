library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity jk_ff_tb is
end jk_ff_tb;

architecture archi of jk_ff_tb is 

component jk_ff is
port(j,k,clk,rst:in std_logic;
q,q_bar:out std_logic);
end component;

constant t:time:=20 ns;
signal j,k,clk,rst,q,q_bar:std_logic:='0';

begin
uut:jk_ff port map(
j=>j,
k=>k,
clk=>clk,
rst=>rst,
q=>q,
q_bar=>q_bar);

clock: process 
begin
clk<='0';
wait for t/2;
clk<='1';
wait for t/2;
end process;

force: process
begin
j<='0';
k<='0';
rst<='0';
wait for 20 ns;

j<='0';
k<='1';
rst<='0';
wait for 20 ns;

j<='1';
k<='0';
rst<='0';
wait for 20 ns;

j<='1';
k<='1';
rst<='0';
wait;

end process;
end archi;
