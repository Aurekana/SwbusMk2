#include <Adafruit_NeoPixel.h>

#define OptoPin 2
#define NeoPin 0
#define LEDPin 1

#define NeoCount 10

Adafruit_NeoPixel barrel(NeoCount, NeoPin, NEO_GRB + NEO_KHZ800);

int bullet = 1; // Energy put into system by one firing event
int cooling = 100; // Energy taken out of system every time period
int heat = 1; // Amout of heat to transfer to next barrel section
int multi = 16000; // Color max value

unsigned long startMillis;
unsigned long currentMillis;
const unsigned long period = 1000; // Time period

int counter = 1;

int i;
int j;
int carry;
int scale = multi / 16;

// int color[NeoCount];

// uint32_t temp[] = {barrel.gamma32(barrel.Color(0,0,0)), barrel.gamma32(barrel.Color(80,0,0)), barrel.gamma32(barrel.Color(140,0,0)), barrel.gamma32(barrel.Color(255,0,0)), barrel.gamma32(barrel.Color(255,20,1)), barrel.gamma32(barrel.Color(255,61,4)), barrel.gamma32(barrel.Color(255,89,11)), barrel.gamma32(barrel.Color(255,115,23)), barrel.gamma32(barrel.Color(255,139,39)), barrel.gamma32(barrel.Color(255,162,57)), barrel.gamma32(barrel.Color(255,182,78)), barrel.gamma32(barrel.Color(255,201,100)), barrel.gamma32(barrel.Color(255,218,122)), barrel.gamma32(barrel.Color(255,234,144)), barrel.gamma32(barrel.Color(255,248,167)), barrel.gamma32(barrel.Color(248,255,183)), barrel.gamma32(barrel.Color(255,255,255))};
  
void setup() {
  // put your setup code here, to run once:
  
  pinMode(OptoPin,INPUT);
  pinMode(LEDPin,OUTPUT);

  barrel.begin();
  barrel.show();

  startMillis = millis();

//  for (i = 0; i < NeoCount; i++){
//    color[i] = 0;
//  }

}

int RedColor(int x){
  return 255;
}

int GreenColor(int y){
  int red = (60.6 + (29.1 * y) + (-0.951 * y * y));
  if (red > 255) red = 255;
  if (red < 0) red = 0;
  return red;
}

int BlueColor(int z){
  int blue = (pow(z, 1.26) * 10.2);
  if (blue > 255) blue = 255;
  if (blue < 0) blue = 0;
  return blue;
}

void loop() {
  // put your main code here, to run repeatedly:
  currentMillis = millis();
  if (currentMillis - startMillis >= period){
    counter = counter - cooling;
    startMillis = currentMillis;
  }
  
  if (digitalRead(OptoPin) == LOW){
    digitalWrite(LEDPin, HIGH);
    counter = counter + bullet;
  }
  else{
    digitalWrite(LEDPin,LOW);
  }

  if (counter > multi) counter = multi; // Don't go over max counter value
  if (counter < 1) counter = 1; // Don't go under zero either

//  carry = counter / scale;
//  if (carry > 16) carry = 16;

//  barrel.setPixelColor(0, temp[carry]);

//  color[0] = counter;

  for (j = 0; j < NeoCount; j++){
//    carry = color[j];
//    color[j] = color[j-1];
//    scale = multi / color[j];
//    barrel.setPixelColor(j, r / scale, g / scale, b / scale);
      barrel.setPixelColor(j, RedColor(counter), GreenColor(counter), BlueColor(counter));
  }

  barrel.show();

}
