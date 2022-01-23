LIBRARY IEEE;
USE ieee.std_logic_1164.all;

entity full_sub is
port(a,b,cin: in std_logic;
diff,borrow:out std_logic);
end full_sub;

architecture archi of full_sub is
begin
diff<=(a xor b) xor cin;
borrow<=((not a)and (b or cin)) or (b and cin);
end archi;
