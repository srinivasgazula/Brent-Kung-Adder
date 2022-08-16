library ieee;
use ieee.std_logic_1164.all;

entity And_Gate is 
port(A,B:in std_logic;
		O:out std_logic);
end entity And_Gate;

architecture behav of And_Gate is 
signal x: std_logic;
begin
uut_P: entity work.Nand_Gate port map(A,B,x);
uut_I:entity work.Inverter port map(x,O);
end behav;
	