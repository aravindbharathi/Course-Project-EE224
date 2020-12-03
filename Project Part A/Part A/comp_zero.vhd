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

begin

	if X = x"00"
		Y <= 1;
	else
		Y <= 0;
	end if;

end dataflow;