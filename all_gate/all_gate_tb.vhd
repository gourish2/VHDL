LIBRARY IEEE;
USE ieee.std_logic_1164.all;
ENTITY all_gate_tb IS
end all_gate_tb;
architecture testme of all_gate_tb IS
component all_gate
port(a,b:in bit;
and1,or1,nand1,nor1,xor1,xnor1,not_a,not_b: out bit);
end component;
signal a:bit:='0';
signal b:bit:='0';
signal and1,or1,nand1,nor1,xor1,xnor1,not_a,not_b:bit;
begin
uut:all_gate port map(
a=>a,
b=>b,
and1=>and1,
or1=>or1,
nand1=>nand1,
nor1=>nor1,
xor1=>xor1,
xnor1=>xnor1,
not_a=>not_a,
not_b=>not_b
);
pr:process
begin

a<='0';
b<='0';
wait for 100 ns;
--assert(x='1');
--report "failed for 1&1" severity error;

a<='0';
b<='1';
wait for 100 ns;
--assert(x='1');
--report "failed for 1&1" severity error;

a<='1';
b<='0';
wait for 100 ns;
--assert(x='0');
--report "failed for 1&0" severity error;

a<='1';
b<='1';
wait for 100 ns;
--assert(x='1');
--report "failed for 1&1" severity error;
wait;
end process;
end;
