library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity mux2 is
	port 
		( 
		X1, X2, X3, X4 : in STD_LOGIC;
		Sel1, Sel0: in STD_LOGIC;
		Y: out STD_LOGIC
		);
end mux2;

architecture dataflow of mux2 is
signal localY: std_logic;
begin

process (X1,X2,X3,X4,localY,Sel1,Sel0)
	begin

	if Sel1 = '0' then
		if Sel0 = '0' then
			localY <= X1;
		else
			localY <= X2;
		end if;
	
	else
		if Sel0 = '0' then
			localY <= X3;
		else
			localY <= X4;
		end if;
		
	end if;

end process;
	Y <= localY;
end dataflow;