library ieee;
use ieee.std_logic_1164.all;

entity up_down_counter_tb is
end up_down_counter_tb;

architecture archi of up_down_counter_tb is
component up_down_counter is
port(clk,rst,updown:in std_logic;
count:out std_logic_vector(3 downto 0));
end component;
signal clk,rst,updown:std_logic;
signal count:std_logic_vector(3 downto 0);
signal t:time:=20 ns;
signal i:integer:=0;
signal max:integer:=20;

begin
uut:up_down_counter port map(
clk=>clk,
rst=>rst,
updown=>updown,
count=>count);

clock:process
begin
rst<='0';
clk<='0';
wait for t/2;
clk<='1';
wait for t/2;
end process;

sim: process
variable temp:integer;
begin
while(true) loop
--report "top i: " & integer'image(i);
while(i<10)loop
updown<='0';
i<=i+1;
--report "inside first while i: " & integer'image(i);
wait for 10 ns;
end loop;

--report "outside i: " & integer'image(i);
temp:=i;

--while(i>0) loop
for temp in 10 downto 1 loop
updown<='1';
--report "inside for temp: " & integer'image(temp);
--i<=i-1;
i<=temp;
wait for 10 ns;
end loop;

--report "bottom i: " & integer'image(i);

end loop;
end process;
end archi;

