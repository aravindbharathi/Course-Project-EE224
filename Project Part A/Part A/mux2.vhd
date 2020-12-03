library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity mux2 is
	port 
		( 
		X1, X2, X3, X4 : in STD_LOGIC;
		S1, S0: in STD_LOGIC;
		Y: out STD_LOGIC
		);
end mux2;

architecture dataflow of mux2 is

begin

	if S1 = 0 then
		if S0 = 0 then
			Y <= X1;
		else
			Y <= X2;
		end if;
	
	else
		if S0 = 0 then
			Y <= X3;
		else
			Y <= X4;
		end if;
		
	end if;

end dataflow;