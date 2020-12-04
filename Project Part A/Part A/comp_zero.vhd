library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity comp_zero is
	port 
		( 
		X: in STD_LOGIC_VECTOR(15 downto 0);
		Y: out STD_LOGIC
		);
end comp_zero;

architecture dataflow of comp_zero is
signal localY: std_logic;
begin

process (X,localY)
	begin

	if (X = x"0") then
		localY <= '1';
	else
		localY <= '0';
	end if;

end process;
	Y <= localY;
end dataflow;