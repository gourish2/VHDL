LIBRARY IEEE;
USE ieee.std_logic_1164.all;

entity half_sub is
port(a,b: in std_logic;
diff,borrow:out std_logic);
end half_sub;

architecture archi of half_sub is
begin
diff<=a xor b;
borrow<=(not a) and b;
end archi;
