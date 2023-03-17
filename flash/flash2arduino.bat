@echo off
set /p COM=Type COM-port number: 
avrdude -F -V -c wiring -p atmega2560 -P \\.\COM%COM% -b 115200 -D -U flash:w:../out/arduino.hex 