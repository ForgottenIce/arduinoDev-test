default:
#	Create out directory if it doesn't exist
	mkdir -p out

#	Compile C-code to object file
#	-0s=compiler optimizations, -DF_CPU=clock speed (16MHz for ATMEGA2560), -mmcu=microcontroller type, -c=compile only without executable, -o=output file
	avr-gcc -Os -DF_CPU=16000000UL -mmcu=atmega2560 -c -o out/arduino.o src/arduino.c

#	Create binary executable
	avr-gcc -o out/arduino.bin out/arduino.o -mmcu=atmega2560

#	Convert executable to Intel HEX format
	avr-objcopy -O ihex -R .eeprom out/arduino.bin out/arduino.hex

#	Flash the ihex to the arduino using avrdude on COM port 3 (Not supported in docker container, do it from the host machine)
#	avrdude -F -V -c wiring -p atmega2560 -P \\.\COM3 -b 115200 -D -U flash:w:out/arduino.hex

#	Remove temporary .bin & .o files
	rm out/arduino.bin out/arduino.o