
all: parts latin full

parts:
	./convert_h_to_hexfont.pl ../font8x8_basic.h > font8x8_basic.hex
	./convert_h_to_hexfont.pl ../font8x8_box.h > font8x8_box.hex
	./convert_h_to_hexfont.pl ../font8x8_block.h > font8x8_block.hex
	./convert_h_to_hexfont.pl ../font8x8_control.h > font8x8_control.hex
	./convert_h_to_hexfont.pl ../font8x8_ext_latin.h > font8x8_ext_latin.hex
	./convert_h_to_hexfont.pl ../font8x8_greek.h > font8x8_greek.hex
	./convert_h_to_hexfont.pl ../font8x8_hiragana.h > font8x8_hiragana.hex
	./convert_h_to_hexfont.pl ../font8x8_misc.h > font8x8_misc.hex
	./convert_h_to_hexfont.pl ../font8x8_sga.h > font8x8_sga.hex

latin:
	./convert_h_to_hexfont.pl ../font8x8_basic.h > font8x8_latin.hex
	./convert_h_to_hexfont.pl ../font8x8_control.h >> font8x8_latin.hex
	./convert_h_to_hexfont.pl ../font8x8_ext_latin.h >> font8x8_latin.hex

full:
	./convert_h_to_hexfont.pl ../font8x8_basic.h > font8x8.hex
	./convert_h_to_hexfont.pl ../font8x8_control.h >> font8x8.hex
	./convert_h_to_hexfont.pl ../font8x8_ext_latin.h >> font8x8.hex
	./convert_h_to_hexfont.pl ../font8x8_greek.h >> font8x8.hex
	./convert_h_to_hexfont.pl ../font8x8_misc.h >> font8x8.hex
	./convert_h_to_hexfont.pl ../font8x8_box.h >> font8x8.hex
	./convert_h_to_hexfont.pl ../font8x8_block.h >> font8x8.hex
	./convert_h_to_hexfont.pl ../font8x8_hiragana.h >> font8x8.hex
	./convert_h_to_hexfont.pl ../font8x8_sga.h >> font8x8.hex

clean:
	rm *.hex
