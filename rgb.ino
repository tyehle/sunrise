#include <math.h>

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

int red = 9;
int green = 10;
int blue = 11;

/* 
 * FFFFFF output = 87, 97, 185
 * normalized white = 255, 229, 120
 */
int rMax = 255;
int gMax = 229;
int bMax = 120;

double step_size = 0.01;
double t;

void setup() {
  Serial.begin(9600);
  
  t = 0.0;
  
  pinMode(red, OUTPUT);
  pinMode(green, OUTPUT);
  pinMode(blue, OUTPUT);
}

// Brightness scalar [0, 1] for a time on [0, 1]
double brightness(double t) {
  double k = 0.5;
  double u = exp(1/k) - 1;
  return min(1.0, k * log(t + 1/u) + k * log(u));
}

// Brightness [0, 1] of a color chanel (1, 2, 3) for a time t on [0, DATA_SIZE - 1)
double color(int channel, double t) {
  double howBright = brightness(t / (DATA_SIZE - 1));
  
  double low = colorData[(int) t][channel];
  double high = colorData[(int) t + 1][channel];
  
  double colorBrightness = low + (high - low)*(t - ((int)t));
  
  return colorBrightness * howBright;
}

void loop() {
  int r = (int)(color(1, t) * rMax);
  int g = (int)(color(2, t) * gMax);
  int b = (int)(color(3, t) * bMax);

  Serial.print(t); Serial.print(",\t");
  Serial.print(r); Serial.print(",\t");
  Serial.print(g); Serial.print(",\t");
  Serial.print(b); Serial.print("\n");
  
  analogWrite(red,   r);
  analogWrite(green, g);
  analogWrite(blue,  b);

  if(! (t + step_size >= DATA_SIZE - 1)) {
    t += step_size;
  }

  delay(10);
}
