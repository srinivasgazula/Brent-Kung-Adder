library ieee;
use ieee.std_logic_1164.all;

entity log_adder_tb is
end log_adder_tb;

architecture test of log_adder_tb is

signal A,B : std_logic_vector(31 downto 0);
signal Cin : std_logic:='0';
signal Cout: std_logic;
signal Sum: std_logic_vector(31 downto 0);

begin

uut:entity work.log_adder port map(A,B,Cin,Sum,Cout);

process

begin
Cin<='0';
A<=(others=>'1');
B<=(others=>'1');
wait for 15 ns;
Cin<='0';
A<=(others=>'1');
B<=(others=>'0');
wait for 15 ns;
Cin<='1';
A<=(others=>'1');
B<=(0=>'1',others=>'0');
wait for 15 ns;
Cin<='0';
A<=(30|29|28|9|10|11|12=>'1',others=>'0');
B<=(31|23|12|11|2|6|8|10=>'1',others=>'0');
wait for 15 ns;

Cin<='0';
A<=(others=>'1');
B<=(0=>'1',others=>'0');
wait for 15 ns;

wait;
end process;

end test;