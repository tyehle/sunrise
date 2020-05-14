#include <math.h>
#include <Wire.h>

#include "RTClib.h"

#define DATA_SIZE 36


float colorData[DATA_SIZE][4] = {
  {1000,1.0,0.0401,0.0},
  {1100,1.0,0.0631,0.0},
  {1200,1.0,0.086,0.0},
  {1300,1.0,0.1085,0.0},
  {1400,1.0,0.1303,0.0},
  {1500,1.0,0.1515,0.0},
  {1600,1.0,0.1718,0.0},
  {1700,1.0,0.1912,0.0},
  {1800,1.0,0.2097,0.0},
  {1900,1.0,0.2272,0.0},
  {2000,1.0,0.2484,0.0061},
  {2100,1.0,0.2709,0.0153},
  {2200,1.0,0.293,0.0257},
  {2300,1.0,0.3149,0.0373},
  {2400,1.0,0.3364,0.0501},
  {2500,1.0,0.3577,0.064},
  {2600,1.0,0.3786,0.079},
  {2700,1.0,0.3992,0.095},
  {2800,1.0,0.4195,0.1119},
  {2900,1.0,0.4394,0.1297},
  {3000,1.0,0.4589,0.1483},
  {3100,1.0,0.4781,0.1677},
  {3200,1.0,0.497,0.1879},
  {3300,1.0,0.5155,0.2087},
  {3400,1.0,0.5336,0.2301},
  {3500,1.0,0.5515,0.252},
  {3600,1.0,0.5689,0.2745},
  {3700,1.0,0.586,0.2974},
  {3800,1.0,0.6028,0.3207},
  {3900,1.0,0.6193,0.3444},
  {4000,1.0,0.6354,0.3684},
  {4100,1.0,0.6511,0.3927},
  {4200,1.0,0.6666,0.4172},
  {4300,1.0,0.6817,0.4419},
  {4400,1.0,0.6966,0.4668},
  {4500,1.0,0.7111,0.4919}
//  {4600,1.0,0.7253,0.517},
//  {4700,1.0,0.7392,0.5422},
//  {4800,1.0,0.7528,0.5675},
//  {4900,1.0,0.7661,0.5928},
//  {5000,1.0,0.7792,0.618},
//  {5100,1.0,0.7919,0.6433},
//  {5200,1.0,0.8044,0.6685},
//  {5300,1.0,0.8167,0.6937},
//  {5400,1.0,0.8286,0.7187},
//  {5500,1.0,0.8403,0.7437}
};

// Output Pins
int red = 9;
int green = 6;
int blue = 3;

/*
 * FFFFFF output = 87, 97, 185
 * normalized white = 255, 229, 120
 */
double rMax = 255 / 256.0;
double gMax = 229 / 256.0;
double bMax = 120 / 256.0;

int wakeTime;
int upTime;
int dayTime;
int offTime;

char out[21];
RTC_DS1307 rtc;

// flash once with this set to reset the clock, then flash again with
// it false so the board doesn't set the clock on every boot
bool reset_clock = true;

void setup() {
  Serial.begin(115200);

  if(!rtc.begin()) {
    Serial.println("Couldn't find RTC");
    exit(1);
  }

  if(!rtc.isrunning() || reset_clock) {
    Serial.println("Resetting RTC clock!");
    // set the time to the time this was compiled
    rtc.adjust(DateTime(F(__DATE__), F(__TIME__)) + TimeSpan(14)); // it takes ~14 seconds to program and reset the board
    // set an explicit date and time
//    rtc.adjust(DateTime(2019, 6, 25, 20, 16, 0));
  }
  Serial.print("Now: "); printlnDate(rtc.now());

  setupPWM16();
  pinMode(green, OUTPUT);
  pinMode(blue, OUTPUT);

////  wakeTime = daySeconds(DateTime(1970, 1, 1, 9, 0, 0));
//  wakeTime = daySeconds(DateTime(F(__DATE__), F(__TIME__)) + TimeSpan(14));
//  upTime   = wakeTime + 60*30;
//  dayTime  = upTime + 60*60;
//  offTime  = dayTime + 60*30;

//  wakeTime = daySeconds(DateTime(1970, 01, 01, 11, 9, 00));
  wakeTime = daySeconds(DateTime(F(__DATE__), F(__TIME__)) + TimeSpan(14));
  upTime   = wakeTime + 30;
  dayTime  = upTime + 10;
  offTime  = dayTime + 30;
}




/* ---------- 16 Bit PWM ---------- */
/* Configure digital pins 9 and 10 as 16-bit PWM outputs. */
void setupPWM16() {
  DDRB |= _BV(PB1) | _BV(PB2);        /* set pins as outputs */
  TCCR1A = _BV(COM1A1) | _BV(COM1B1)  /* non-inverting PWM */
    | _BV(WGM11);                     /* mode 14: fast PWM, TOP=ICR1 */
  TCCR1B = _BV(WGM13) | _BV(WGM12)
    | _BV(CS10);                      /* no prescaling */
  ICR1 = 0xffff;                      /* TOP counter value */
}
/* 16-bit version of analogWrite(). Works only on pins 9 and 10. */
void analogWrite16(uint8_t pin, uint16_t val)
{
    switch (pin) {
        case  9: OCR1A = val; break;
        case 10: OCR1B = val; break;
    }
}
/* Write a 0-1 float as best we can as a pwm output */
void writePWM(uint8_t pin, double value) {
  switch(pin) {
    case  9: OCR1A = ratioToRange(value, 65536); break;
    case 10: OCR1B = ratioToRange(value, 65536); break;
    default: analogWrite(pin, ratioToRange(value, 256)); break;
  }
}
/* Convert a ratio into an int range */
uint32_t ratioToRange(double ratio, uint32_t top) {
  return max(0, min(top, (uint32_t)(ratio * top)));
}
/**/



// Brightness scalar [0, 1] for a time on [0, 1]
double brightness(double t) {
  double k = 0.5;
  double u = exp(1/k) - 1;
  return min(1.0, k * log(t + 1/u) + k * log(u));
}

// Brightness [0, 1] of a color chanel (1, 2, 3) for a time t on [0, 1]
double color(int channel, double b, double h) {
  double howBright = brightness(b);
  double dataTime = h * (DATA_SIZE - 1);

  double low = colorData[(int) dataTime][channel];
  double high = colorData[(int) dataTime + 1][channel];

  double colorBrightness = low + (high - low)*(dataTime - ((int)dataTime));

  return colorBrightness * howBright;
}

// Set the lights for a time value on [0, 1]
void setLights(double power, double hue, bool chatty) {
  if(power < 0) power = 0;
  if(power > 1) power = 1;
  if(hue < 0) hue = 0;
  if(hue > 1) hue = 1;
  
  double r = color(1, power, hue) * rMax;
  double g = color(2, power, hue) * gMax;
  double b = color(3, power, hue) * bMax;

  if(chatty) {
    Serial.print(power); Serial.print(",\t");
    Serial.print(hue); Serial.print(",\t");
    Serial.print(r); Serial.print(",\t");
    Serial.print(g); Serial.print(",\t");
    Serial.print(b); Serial.print("\n");
  }

  writePWM(red, r);
  writePWM(green, g);
  writePWM(blue, b);
}




void printlnDate(DateTime date) {
  sprintf(out, "%04d-%02d-%02dT%02d:%02d:%02d\n",
          date.year(), date.month(), date.day(),
          date.hour(), date.minute(), date.second());
  Serial.print(out);
}

int daySeconds(DateTime date) {
  return date.hour() * 3600 + date.minute() * 60 + date.second();
}




void loop() {
  // What mode are we in?
  int now = daySeconds(rtc.now());
  if(wakeTime <= now && now < upTime) {
    Serial.println("Waking up");
    wakeUpdate();
  } else if(upTime <= now && now < dayTime) {
    Serial.println("Holding");
    upUpdate();
  } else if(dayTime <= now && now < offTime) {
    Serial.println("powering down");
    dayUpdate();
  } else {
    Serial.println("Off");
    offUpdate();
  }
}

// modes: waking, on, dimming, off

void wakeUpdate() {
  int span = upTime - wakeTime;
  int howFar = daySeconds(rtc.now()) - wakeTime;
  
  unsigned long startTime = millis();
  unsigned long elapsed = 0;
  double t = (howFar + (elapsed/1000.0)) / (double)span;
  // Set the lights only once in chatty mode
  setLights(t, t, true);
  
  do {
    elapsed = millis() - startTime;
    t = (howFar + (elapsed/1000.0)) / (double)span;
    setLights(t, t, false);
  } while(elapsed < 1000);
}

void upUpdate() {
  setLights(1, 1, false);
  delay(1000);
}

void dayUpdate() {
  int span = offTime - dayTime;
  int howFar = daySeconds(rtc.now()) - dayTime;

  unsigned long startTime = millis();
  unsigned long elapsed = 0;
  double t = (howFar + (elapsed/1000.0)) / (double)span;
  // Set the lights only once in chatty mode
  setLights(1 - t, 1, true);
  
  do {
    elapsed = millis() - startTime;
    t = (howFar + (elapsed/1000.0)) / (double)span;
    setLights(1 - t, 1, false);
  } while(elapsed < 1000);
}

void offUpdate() {
  setLights(0, 0, false);
  delay(1000);
}
