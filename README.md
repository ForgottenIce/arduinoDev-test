# ArduinoDev-test

A test project for developing embedded C on the Arduino Mega 2560 board.

## Docker setup with VS Code
Here is how to setup the project.

### Prerequisites
The following needs to be installed:
* Docker
* VS Code
* The Remote Explorer Extension for VS Code

### Setup (Windows)
1. Clone the repository
2. Open a command prompt in the root of the project
3. Run `docker build -t arduino-dev .`
4. Run `docker create -i --name arduino-dev-container -v %cd%:/arduinoDev arduino-dev`
5. Open VS Code
6. Navigate to Remote Explorer on the activity bar
7. Click *"Attach to Container"* on the *arduino-dev-container*
8. Open the folder *"/arduinoDev"* inside the container

## Building
Inside the dev container, simply run `make`. The compiled output will be stored in the *out* folder.

## Flashing to the Arduino
Make sure the Arduino Mega 2560 is connected via USB.

Before flashing, it is important to know what COM-port the Arduino is connected to. To find out, go to *Device Manager -> Ports* and find the Arduino. It usually goes by the name "USB Serial Device (COM**x**)" where **x** is the COM-port number.

1. In Windows, run `flash2arduino.bat` from the *flash* directory in the project
2. Type the port number of the COM-port that the arduino is connected to and press ENTER. e.g for *COM1*, type `1`
3. That's it
