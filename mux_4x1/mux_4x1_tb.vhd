library ieee;
use ieee.std_logic_1164.all;

entity mux_4x1_tb is
end mux_4x1_tb;

architecture archi of mux_4x1_tb is
component mux_4x1 is
port(i:in std_logic_vector(3 downto 0);
s:in std_logic_vector(1 downto 0);
f:out std_logic);
end component;
signal i:std_logic_vector(3 downto 0);
signal s:std_logic_vector(1 downto 0);
signal f:std_logic;

begin
uut:mux_4x1 port map(
i=>i,
s=>s,
f=>f);

sim:process
begin
i<="1101"; --how to gen random 4 bit vals?

s<="00";
wait for 100 ns;

s<="01";
wait for 100 ns;

s<="10";
wait for 100 ns;

s<="11";
wait for 100 ns;

end process;
end archi;
