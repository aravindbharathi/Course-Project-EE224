library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity mux is
	port 
		( 
		X1, X2, X3, X4 : in STD_LOGIC_VECTOR(15 downto 0);
		Sel1, Sel0: in STD_LOGIC;
		Y: inout STD_LOGIC_VECTOR(15 downto 0)
		);
end mux;

architecture dataflow of mux is
signal localY: std_logic_vector(15 downto 0);
begin

process (X1,X2,X3,X4,localY,Sel1,Sel0)
	begin

	if (Sel1 = '0' and Sel0 = '0') then	
		localY <= X1;
	elsif (Sel1 = '0' and Sel0 = '1') then
		localY <= X2;
	elsif (Sel1 = '1' and Sel0 = '0') then
		localY <= X3;
	else
		localY <= X4;
	end if;

end process;
	Y <= localY;
end dataflow;