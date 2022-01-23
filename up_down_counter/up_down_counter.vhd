library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity up_down_counter is
port(clk,rst,updown:in std_logic;
count: out std_logic_vector(3 downto 0));
end up_down_counter;

architecture archi of up_down_counter is
signal temp:std_logic_vector(3 downto 0):="0000";
begin
process(clk,rst)
begin
if(rst='1') then
temp<="0000";
elsif(rising_edge(clk))then
if(updown='0')then
temp<=temp+1;
else
temp<=temp-1;
end if;
end if;
end process;
count<=temp;
end archi;
