library ieee;
use ieee.std_logic_1164.all;

entity comparator_tb is
end comparator_tb;

architecture archi of comparator_tb is
component comparator is
port(i:in std_logic_vector(1 downto 0);
G,L,E:out std_logic);
end component;

signal g,l,e:std_logic;
signal i:std_logic_vector(1 downto 0);

begin
uut:comparator port map(
i=>i,
G=>g,
L=>l,
E=>e);

sim:process
begin
i<="00";
wait for 100 ns;

i<="01";
wait for 100 ns;

i<="10";
wait for 100 ns;

i<="11";
wait for 100 ns;

end process;
end archi;
