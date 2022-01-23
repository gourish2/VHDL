LIBRARY ieee;
use ieee.std_logic_1164.all;

entity jk_ff is
port(j,k,clk,rst:in std_logic;
q,q_bar:out std_logic);
end jk_ff;

architecture archi of jk_ff is
begin

process(clk,rst)
variable qn:std_logic:='0';
begin
if(rst='1') then
qn:='0';
elsif(clk'event and clk='1') then
if(j='0' and k='0') then
qn:=qn;
elsif(j='0' and k='1') then
qn:='0';
elsif(j='1' and k='0') then
qn:='1';
elsif(j='1' and k='1') then
qn:=not qn;
else
null;
end if;
end if;
q<=qn;
q_bar<=not qn;
end process;
end archi;
