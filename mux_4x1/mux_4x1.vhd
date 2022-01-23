library ieee;
use ieee.std_logic_1164.all;

entity mux_4x1 is
port(i: in std_logic_vector (3 downto 0);
s:in std_logic_vector(1 downto 0);
f:out std_logic);
end mux_4x1;

architecture archi of mux_4x1 is
begin
with s select
f<=i(0) when "00",
i(1) when "01",
i(2) when "10",
i(3) when others; 
end archi;
