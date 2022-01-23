LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY all_gate IS
PORT(a,b: IN BIT;
and1,or1,nand1,nor1,xor1,xnor1,not_a,not_b: OUT BIT);
END all_gate;

ARCHITECTURE archi OF all_gate IS
BEGIN
and1<=a AND b;
or1<=a or b;
nand1<= a nand b;
nor1<=a nor b;
xor1<=a xor b;
xnor1<=a xnor b;
not_a<=not a;
not_b<=not b;
END archi;
