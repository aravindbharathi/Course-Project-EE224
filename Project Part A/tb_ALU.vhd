-- Testbench for the ALU
--addition, subtraction, xor, nand
library IEEE;
use IEEE.std_logic_1164.all;

entity tb_ALU is
-- empty
end tb_ALU;

architecture tb of tb_ALU is

--component declaration
component ALU is
port(
	 A, B: in std_logic_vector(15 downto 0);
    S1, S0: in std_logic;
    Z: out std_logic;
	 C: out std_logic;
	 R: out std_logic_vector(15 downto 0));
end component;

--input signals
signal A: std_logic_vector(15 downto 0) := (others => '0');
signal B: std_logic_vector(15 downto 0) := (others => '0');
signal S1: std_logic := '0';
signal S0: std_logic := '0';

--output signal
signal R: std_logic_vector(15 downto 0) := (others => '0');
signal Z: std_logic := '0';
signal C: std_logic := '0';

begin
--	design under test initialisation
	dut_instance: ALU port map(
    A => A,
    B => B,
    S1 => S1,
	 S0 => S0,
    Z => Z,
	 C => C,
	 R => R);
-- stimulus process
    stim_proc: process
    begin

-- first test case
    A <= "0000000000000000";
    B <= "0000000000000000";
         S0 <= '0';
	 S1 <= '0';
	 wait for 50 ns;
	 S0 <= '1';
	 S1 <= '0';
	 wait for 50 ns;
	 S0 <= '0';
	 S1 <= '1';
	 wait for 50 ns;
	 S0 <= '1';
	 S1 <= '1';
	 wait for 50 ns;

--second test case
    A <= "1111111111111111";
    B <= "1111111111111111";
         S0 <= '0';
	 S1 <= '0';
	 wait for 50 ns;
	 S0 <= '1';
	 S1 <= '0';
	 wait for 50 ns;
	 S0 <= '0';
	 S1 <= '1';
	 wait for 50 ns;
	 S0 <= '1';
	 S1 <= '1';
	 wait for 50 ns;
	 
--third test case
    A <= "0101010101010101";
    B <= "1010101010101010";
         S0 <= '0';
	 S1 <= '0';
	 wait for 50 ns;
	 S0 <= '1';
	 S1 <= '0';
	 wait for 50 ns;
	 S0 <= '0';
	 S1 <= '1';
	 wait for 50 ns;
	 S0 <= '1';
	 S1 <= '1';
	 wait for 50 ns;

--fourth test case
    A <= "1010101010101010";
    B <= "0000000000000000";
    	 S0 <= '0';
	 S1 <= '0';
	 wait for 50 ns;
	 S0 <= '1';
	 S1 <= '0';
	 wait for 50 ns;
	 S0 <= '0';
	 S1 <= '1';
	 wait for 50 ns;
	 S0 <= '1';
	 S1 <= '1';
	 wait for 50 ns;

--fifth test case
    A <= "0111111111111111";
    B <= "0000000000000001";
    	 S0 <= '0';
	 S1 <= '0';
	 wait for 50 ns;
	 S0 <= '1';
	 S1 <= '0';
	 wait for 50 ns;
	 S0 <= '0';
	 S1 <= '1';
	 wait for 50 ns;
	 S0 <= '1';
	 S1 <= '1';
	 wait for 50 ns;

--sixth test case
    A <= "1010101010101010";
    B <= "1000000000000000";
    	 S0 <= '0';
	 S1 <= '0';
	 wait for 50 ns;
	 S0 <= '1';
	 S1 <= '0';
	 wait for 50 ns;
	 S0 <= '0';
	 S1 <= '1';
	 wait for 50 ns;
	 S0 <= '1';
	 S1 <= '1';
	 wait for 50 ns;

--seventh test case
    A <= "1010101010101010";
    B <= "1010101010101010";
    	 S0 <= '0';
	 S1 <= '0';
	 wait for 50 ns;
	 S0 <= '1';
	 S1 <= '0';
	 wait for 50 ns;
	 S0 <= '0';
	 S1 <= '1';
	 wait for 50 ns;
	 S0 <= '1';
	 S1 <= '1';
	 wait for 50 ns;

--eighth test case
    A <= "1000000000000000";
    B <= "1000000000000000";
    	 S0 <= '0';
	 S1 <= '0';
	 wait for 50 ns;
	 S0 <= '1';
	 S1 <= '0';
	 wait for 50 ns;
	 S0 <= '0';
	 S1 <= '1';
	 wait for 50 ns;
	 S0 <= '1';
	 S1 <= '1';
	 wait for 50 ns;

--ninth test case
    A <= "1001011001010100";
    B <= "1001111101111011";
    	 S0 <= '0';
	 S1 <= '0';
	 wait for 50 ns;
	 S0 <= '1';
	 S1 <= '0';
	 wait for 50 ns;
	 S0 <= '0';
	 S1 <= '1';
	 wait for 50 ns;
	 S0 <= '1';
	 S1 <= '1';
	 wait for 50 ns;

--tenth test case
    A <= "0011001100110011";
    B <= "1100110011001100";
    	 S0 <= '0';
	 S1 <= '0';
	 wait for 50 ns;
	 S0 <= '1';
	 S1 <= '0';
	 wait for 50 ns;
	 S0 <= '0';
	 S1 <= '1';
	 wait for 50 ns;
	 S0 <= '1';
	 S1 <= '1';
	 wait for 50 ns;
		 
		 
--eleventh test case		 
    A <= "0110110110110111";
    B <= "1111111111111111";
         S0 <= '0';
	 S1 <= '0';
	 wait for 50 ns;
	 S0 <= '1';
	 S1 <= '0';
	 wait for 50 ns;
	 S0 <= '0';
	 S1 <= '1';
	 wait for 50 ns;
	 S0 <= '1';
	 S1 <= '1';
	 wait for 50 ns;

--twelfth test case
    A <= "0000000000000000";
    B <= "1111111111111111";
         S0 <= '0';
	 S1 <= '0';
	 wait for 50 ns;
	 S0 <= '1';
	 S1 <= '0';
	 wait for 50 ns;
	 S0 <= '0';
	 S1 <= '1';
	 wait for 50 ns;
	 S0 <= '1';
	 S1 <= '1';
	 wait for 50 ns;
	 
--thirteenth test case
    A <= "1101011101010101";
    B <= "1111111000101011";
         S0 <= '0';
	 S1 <= '0';
	 wait for 50 ns;
	 S0 <= '1';
	 S1 <= '0';
	 wait for 50 ns;
	 S0 <= '0';
	 S1 <= '1';
	 wait for 50 ns;
	 S0 <= '1';
	 S1 <= '1';
	 wait for 50 ns;

--fourteenth test case
    A <= "1001011110111000";
    B <= "1000000000001001";
    	 S0 <= '0';
	 S1 <= '0';
	 wait for 50 ns;
	 S0 <= '1';
	 S1 <= '0';
	 wait for 50 ns;
	 S0 <= '0';
	 S1 <= '1';
	 wait for 50 ns;
	 S0 <= '1';
	 S1 <= '1';
	 wait for 50 ns;

--fifteenth test case
    A <= "1111111011111111";
    B <= "0000000100000000";
    	 S0 <= '0';
	 S1 <= '0';
	 wait for 50 ns;
	 S0 <= '1';
	 S1 <= '0';
	 wait for 50 ns;
	 S0 <= '0';
	 S1 <= '1';
	 wait for 50 ns;
	 S0 <= '1';
	 S1 <= '1';
	 wait for 50 ns;

--sixteenth test case
    A <= "1111111110000000";
    B <= "1111111110000000";
    	 S0 <= '0';
	 S1 <= '0';
	 wait for 50 ns;
	 S0 <= '1';
	 S1 <= '0';
	 wait for 50 ns;
	 S0 <= '0';
	 S1 <= '1';
	 wait for 50 ns;
	 S0 <= '1';
	 S1 <= '1';
	 wait for 50 ns;

--seventeenth test case
    A <= "1111111100000000";
    B <= "0000000011111111";
    	 S0 <= '0';
	 S1 <= '0';
	 wait for 50 ns;
	 S0 <= '1';
	 S1 <= '0';
	 wait for 50 ns;
	 S0 <= '0';
	 S1 <= '1';
	 wait for 50 ns;
	 S0 <= '1';
	 S1 <= '1';
	 wait for 50 ns;

--eighteenth test case
    A <= "1000001111111111";
    B <= "0111110000111111";
    	 S0 <= '0';
	 S1 <= '0';
	 wait for 50 ns;
	 S0 <= '1';
	 S1 <= '0';
	 wait for 50 ns;
	 S0 <= '0';
	 S1 <= '1';
	 wait for 50 ns;
	 S0 <= '1';
	 S1 <= '1';
	 wait for 50 ns;

--nineteenth test case
    A <= "1011111000010101";
    B <= "1011011110111110";
    	 S0 <= '0';
	 S1 <= '0';
	 wait for 50 ns;
	 S0 <= '1';
	 S1 <= '0';
	 wait for 50 ns;
	 S0 <= '0';
	 S1 <= '1';
	 wait for 50 ns;
	 S0 <= '1';
	 S1 <= '1';
	 wait for 50 ns;

--twentieth test case
    A <= "0011001011011000";
    B <= "1010101111000101";
    	 S0 <= '0';
	 S1 <= '0';
	 wait for 50 ns;
	 S0 <= '1';
	 S1 <= '0';
	 wait for 50 ns;
	 S0 <= '0';
	 S1 <= '1';
	 wait for 50 ns;
	 S0 <= '1';
	 S1 <= '1';
	 wait for 50 ns;
		 
--twentyfirst test case
    A <= "1111111111111111";
    B <= "0000000000000000";
    	 S0 <= '0';
	 S1 <= '0';
	 wait for 50 ns;
	 S0 <= '1';
	 S1 <= '0';
	 wait for 50 ns;
	 S0 <= '0';
	 S1 <= '1';
	 wait for 50 ns;
	 S0 <= '1';
	 S1 <= '1';
	 wait for 50 ns;
		 
--twentysecond test case
    A <= "0000000000000001";
    B <= "0000000000000000";
    	 S0 <= '0';
	 S1 <= '0';
	 wait for 50 ns;
	 S0 <= '1';
	 S1 <= '0';
	 wait for 50 ns;
	 S0 <= '0';
	 S1 <= '1';
	 wait for 50 ns;
	 S0 <= '1';
	 S1 <= '1';
	 wait for 50 ns;
		 
--twentythird test case
    A <= "0000000000000000";
    B <= "0000000000000001";
    	 S0 <= '0';
	 S1 <= '0';
	 wait for 50 ns;
	 S0 <= '1';
	 S1 <= '0';
	 wait for 50 ns;
	 S0 <= '0';
	 S1 <= '1';
	 wait for 50 ns;
	 S0 <= '1';
	 S1 <= '1';
	 wait for 50 ns;
		 
		 
		
	 

	 wait;
    end process;
end tb;

