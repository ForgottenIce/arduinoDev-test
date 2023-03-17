#include <avr/io.h>
#include <avr/iom2560.h>
#include <util/delay.h>

int main(void) {
    DDRB = DDRB | (1 << DDB7);
    while(1) {
        PORTB = PORTB | (1 << PB7); //same as OR 0b10000000
        _delay_ms(2000);
        PORTB = PORTB & ~(1 << PB7); //same as AND 0b01111111;
        _delay_ms(2000);
    }
}