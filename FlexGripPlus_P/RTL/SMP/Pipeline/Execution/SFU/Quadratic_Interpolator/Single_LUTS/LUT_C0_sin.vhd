library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity LUT_C0_sin is
	generic(
		word_bits	:natural:=27;
		bus_bits	:natural:=29;
		add_bits	:natural:=6
	);
	port(
		addr		:in std_logic_vector(add_bits-1 downto 0);
		data		:out std_logic_vector(bus_bits-1 downto 0)
	);
end entity;

architecture behav of LUT_C0_sin is
	type storage is array (0 to 2**add_bits-1) of std_logic_vector(word_bits-1 downto 0);
	constant rom:storage:=(
		"000000000000000000000000010",
		"000000111111111111110101000",
		"000001111111111110101010010",
		"000010111111111011011111101",
		"000011111111110101010101001",
		"000100111111101011001010101",
		"000101111111011100000000101",
		"000110111111000110110111001",
		"000111111110101010101110100",
		"001000111110000110100111010",
		"001001111101011001100010000",
		"001010111100100010011111010",
		"001011111011100000100000000",
		"001100111010010010100101010",
		"001101111000110111110000010",
		"001110110111001111000010011",
		"001111110101010111011101010",
		"010000110011010000000010111",
		"010001110000110111110101010",
		"010010101110001101110110101",
		"010011101011010001001010000",
		"010100101000000000110010000",
		"010101100100011011110010001",
		"010110100000100001001101110",
		"010111011100010000001001000",
		"011000010111100111100111111",
		"011001010010100110101111010",
		"011010001101001100100100001",
		"011011000111011000001011110",
		"011100000001001000101100000",
		"011100111010011101001011010",
		"011101110011010100110000000",
		"011110101011101110100001100",
		"011111100011101001100111010",
		"100000011011000101001001100",
		"100001010010000000010000101",
		"100010001000011010000101110",
		"100010111110010001110010101",
		"100011110011100110100001010",
		"100100101000010111011100010",
		"100101011100100011101111000",
		"100110010000001010100101010",
		"100111000011001011001011010",
		"100111110101100100101110010",
		"101000100111010110011011110",
		"101001011000011111100001111",
		"101010001000111111001111101",
		"101010111000110100110100011",
		"101011100111111111100000011",
		"101100010110011110100100100",
		"101101000100010001010010001",
		"101101110001010110111011101",
		"101110011101101110110011110",
		"101111001001011000001110010",
		"101111110100010010011111011",
		"110000011110011100111100010",
		"110001000111110110111010111",
		"110001110000011111110001101",
		"110010011000010110110111111",
		"110010111111011011100110000",
		"110011100101101101010100101",
		"110100001011001011011101101",
		"110100101111110101011011100",
		"110101010011101010101001110"
	);
begin
	data <= "10"&rom(to_integer(unsigned(addr))) when unsigned(addr)=0 else "00"&rom(to_integer(unsigned(addr)));
end architecture;