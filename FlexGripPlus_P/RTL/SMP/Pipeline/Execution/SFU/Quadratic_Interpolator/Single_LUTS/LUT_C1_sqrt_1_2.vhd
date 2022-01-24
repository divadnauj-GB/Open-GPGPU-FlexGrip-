library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity LUT_C1_sqrt_1_2 is
	generic(
		word_bits	:natural:=16;
		bus_bits	:natural:=20;
		add_bits	:natural:=6
	);
	port(
		addr		:in std_logic_vector(add_bits-1 downto 0);
		data		:out std_logic_vector(bus_bits-1 downto 0)
	);
end entity;

architecture behav of LUT_C1_sqrt_1_2 is
	type storage is array (0 to 2**add_bits-1) of std_logic_vector(word_bits-1 downto 0);
	constant rom:storage:=(
		"1111111111111000",
		"1111110000001000",
		"1111100000101000",
		"1111010001100000",
		"1111000010110000",
		"1110110100010000",
		"1110100110001000",
		"1110011000011000",
		"1110001010110000",
		"1101111101100000",
		"1101110000100000",
		"1101100011110000",
		"1101010111010000",
		"1101001011000000",
		"1100111111000000",
		"1100110011010000",
		"1100100111110000",
		"1100011100011000",
		"1100010001010000",
		"1100000110010000",
		"1011111011100000",
		"1011110001000000",
		"1011100110101000",
		"1011011100100000",
		"1011010010100000",
		"1011001000101000",
		"1010111111000000",
		"1010110101011000",
		"1010101100001000",
		"1010100010111000",
		"1010011001110000",
		"1010010000111000",
		"1010001000001000",
		"1001111111100000",
		"1001110111000000",
		"1001101110101000",
		"1001100110011000",
		"1001011110010000",
		"1001010110001000",
		"1001001110010000",
		"1001000110100000",
		"1000111110111000",
		"1000110111010000",
		"1000101111111000",
		"1000101000100000",
		"1000100001010000",
		"1000011010001000",
		"1000010011000000",
		"1000001100001000",
		"1000000101010000",
		"0111111110011000",
		"0111110111110000",
		"0111110001001000",
		"0111101010101000",
		"0111100100010000",
		"0111011101111000",
		"0111010111101000",
		"0111010001011000",
		"0111001011010000",
		"0111000101010000",
		"0110111111010000",
		"0110111001011000",
		"0110110011100000",
		"0110101101110000"
	);
begin
	data <= "0001"&rom(to_integer(unsigned(addr)));
end architecture;