/*

16 Bit PWM functions for the Atmega328P.

Only one of the timers on the chip is 16 bit, and it controls only two
output pins. On the Pro/ProMini these are pins 9 and 10. Attempts to use
analogWrite16 on other pins will not work.

To call analogWrite16 you must first call setupPWM16 to make sure all the
configuration for the timer is correct.

writePWM is a function that will work on any output pin. The duty cycle is
specified as a double from 0 to 1 instead of an integer to allow many bit
widths.

*/

#include <Arduino.h>

/* Configure digital pins 9 and 10 as 16-bit PWM outputs. */
void setupPWM16() {
  TCCR1A = _BV(COM1A1) | _BV(COM1B1)  /* non-inverting PWM */
    | _BV(WGM11);                     /* mode 14: fast PWM, TOP=ICR1 */
  TCCR1B = _BV(WGM13) | _BV(WGM12)    /* other bits for mode 14 */
    | _BV(CS10);                      /* no prescaling */
  ICR1 = 0xffff;                      /* TOP counter value */
}


/* 16-bit version of analogWrite(). Works only on pins 9 and 10. */
void analogWrite16(uint8_t pin, uint16_t val)
{
  pinMode(pin, OUTPUT);

  // PWM outputs cannot be fully on or off, so we'll use digital write to make that happen
  if(val == 0) {
    digitalWrite(pin, LOW);
  } else if(val == 65535) {
    digitalWrite(pin, HIGH);
  } else {
    // Calls to digital write overwrite some things, so make sure to set them again
    switch (pin) {
      case  9:
        _SFR_BYTE(TCCR1A) |= _BV(COM1A1);
        ICR1 = 0xffff;
        OCR1A = val;
        break;

      case 10:
        _SFR_BYTE(TCCR1A) |= _BV(COM1B1);
        ICR1 = 0xffff;
        OCR1B = val;
        break;

      default:
        return;
    }
  }
}

/* Convert a ratio into an int range */
uint32_t ratioToRange(double ratio, uint32_t top) {
  return max(0, min(top, (uint32_t)(ratio * top)));
}

/* Write a 0-1 float as best we can as a pwm output */
void writePWM(uint8_t pin, double value) {
  if(pin != 9 && pin != 10) {
    analogWrite(pin, ratioToRange(value, 256));
  } else {
    analogWrite16(pin, ratioToRange(value, 65536));
  }
}
