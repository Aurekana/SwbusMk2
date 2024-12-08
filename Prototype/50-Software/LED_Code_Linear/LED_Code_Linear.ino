#include <FastLED.h>

#define OPTO_PIN 2
#define NEO_PIN 0
#define LED_PIN 1

#define NUM_LEDS 36

CRGB leds[NUM_LEDS];

bool OptoState = LOW;

int RedOffset = 0;
int RedSlope = 1000;

int GreenOffset = 0;
int GreenSlope = 1000;

int BlueOffset = 0;
int BlueSlope = 1000;

int HeatSlope = -1000;

int MaxValue;

long HueValue;
long SatValue;
long ValValue;

int EnergyIn = 50;
int EnergyOut = 1;

long Working;

unsigned long Counter = 0;

// unsigned long timeMillis;
// unsigned long currentMillis;

/* Add energy if Opto is active, constant subtract energy
 *  
 *  Keep track of time with millis()
 *  
 *  Increase red to 255 with slope RedSlope, then increase green to 255 with GreenSlope, then increase blue to 255 with BlueSlope
 *  
 *  Function with input "Time" equals progress through color curve, not related to millis(). "Time" activates based on adding energy. Equal to "Energy" counter.
 *  
 *  HeatTransfer ==> Energy = -1000 * position + Counter
 */

void ColorSet(unsigned long Energy, int pixel) {
  if (Energy > RedSlope) {
    if (Energy > RedSlope + GreenSlope) {
      if (Energy > MaxValue) {
        HueValue = 60;
        SatValue = 0;
        ValValue = 100;

        leds[pixel].setHSV(HueValue, SatValue, ValValue);
      }
      else {
        HueValue = 60;
        SatValue = map(Energy, BlueOffset, BlueSlope, 100, 0);
        ValValue = 100;

        leds[pixel].setHSV(HueValue, SatValue, ValValue);
      }
    }
    else {
      HueValue = map(Energy, GreenOffset, GreenSlope, 0, 60);
      SatValue = 100;
      ValValue = 100;

      leds[pixel].setHSV(HueValue, SatValue, ValValue);
    }
  }
  else {
    HueValue = 0;
    SatValue = 100;
    ValValue = map(Energy, RedOffset, RedSlope, 0, 100); 

    leds[pixel].setHSV(HueValue, SatValue, ValValue);
  }
}

unsigned long HeatTransfer(int pos) {
  Working = ((pos * HeatSlope) + Counter);
  if (Working > MaxValue) {
    return (MaxValue);
  }
  else if (Working < 0) {
    return (0);
  }
  else {
    return (Working);
  }
}

void setup() {
  pinMode(OPTO_PIN,INPUT);
  pinMode(LED_PIN,OUTPUT);

  FastLED.addLeds<NEOPIXEL, NEO_PIN>(leds, NUM_LEDS).setCorrection(leds);
  FastLED.setTemperature(CarbonArc);

//   timeMillis = millis();
  MaxValue = RedSlope + GreenSlope + BlueSlope;
}

void loop() {
  // currentMillis = timeMillis;

  OptoState = digitalRead(OPTO_PIN);
  if (OptoState == HIGH) {
    Counter = Counter + EnergyIn;
  }
  else {
    if (Counter >= EnergyOut) {
      Counter = Counter - EnergyOut;
    }
  }
  for (int i = 0; i < NUM_LEDS; i++) {
    ColorSet(HeatTransfer(i), i);-
  }
}
