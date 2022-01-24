library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity LUT_C0_cos is
	generic(
		word_bits	:natural:=28;
		bus_bits	:natural:=29;
		add_bits	:natural:=6
	);
	port(
		addr		:in std_logic_vector(add_bits-1 downto 0);
		data		:out std_logic_vector(bus_bits-1 downto 0)
	);
end entity;

architecture behav of LUT_C0_cos is
	type storage is array (0 to 2**add_bits-1) of std_logic_vector(word_bits-1 downto 0);
	constant rom:storage:=(
		"1000000000000000000000000000",
		"0111111111111100000000000000",
		"0111111111110000000000000101",
		"0111111111011100000000011011",
		"0111111111000000000001010101",
		"0111111110011100000011010000",
		"0111111101110000000110110000",
		"0111111100111100001100100000",
		"0111111100000000010101010100",
		"0111111010111100100010001010",
		"0111111001110000110100000011",
		"0111111000011101001100001011",
		"0111110111000001101011111000",
		"0111110101011110010100100011",
		"0111110011110011000111110001",
		"0111110010000000000111001100",
		"0111110000000101010100101000",
		"0111101110000010110001111111",
		"0111101011111000100001010100",
		"0111101001100110100100110001",
		"0111100111001100111110101000",
		"0111100100101011110001010011",
		"0111100010000010111111010011",
		"0111011111010010101011010000",
		"0111011100011010110111111011",
		"0111011001011011101000001100",
		"0111010110010100111111000010",
		"0111010011000110111111100100",
		"0111001111110001101100111111",
		"0111001100010101001010101001",
		"0111001000110001011011111111",
		"0111000101000110100100100100",
		"0111000001010100101000000010",
		"0110111101011011101010001101",
		"0110111001011011101110111101",
		"0110110101010100111010010001",
		"0110110001000111010000010001",
		"0110101100110010110101001011",
		"0110101000010111101101010010",
		"0110100011110101111101000010",
		"0110011111001101101000111101",
		"0110011010011110110101101010",
		"0110010101101001100111111001",
		"0110010000101110000100011111",
		"0110001011101100010000011000",
		"0110000110100100010000100101",
		"0110000001010110001010001110",
		"0101111100000010000010100001",
		"0101110110100111111110110011",
		"0101110001001000000100011101",
		"0101101011100010011001000000",
		"0101100101110111000010000001",
		"0101100000000110000101001011",
		"0101011010001111101000010000",
		"0101010100010011110001000101",
		"0101001110010010100101101000",
		"0101001000001100001011111000",
		"0101000010000000101001111100",
		"0100111011110000000110000000",
		"0100110101011010100110010100",
		"0100101111000000010001001110",
		"0100101000100001001101001001",
		"0100100001111101100000100010",
		"0100011011010101010001111110"
	);
begin
	data <= "0"&rom(to_integer(unsigned(addr)));
end architecture;