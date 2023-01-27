#include <Adafruit_NeoPixel.h>


#define OptoPin 2
#define NeoPin 0
#define LEDPin 1

#define NeoCount 20

Adafruit_NeoPixel barrel(NeoCount, NeoPin, NEO_GRB + NEO_KHZ800);

int bullet = 1; // Energy put into system by one firing event
int cooling = 10; // Energy taken out of system every time period
int heat = 1; // Amount of heat to transfer to next barrel section
int maxtemp = 2000; // Color max value

unsigned long startMillis;
unsigned long currentMillis;
const unsigned long period = 1000; // Time period

int counter = 1;

int i;
int j;
int k;
int color;
int carry;

int temp[NeoCount];

int RedLUT[] = {  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
                  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
                  0,  8, 45, 80,111,139,164,185,204,219,
                231,241,248,253,255,255,255,255,255,253,
                251,249,247,246,245,245,246,248,251,255,
                255, 255, 255};
int GrnLUT[] = {  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
                  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
                  0,  0,  0,  1,  9, 17, 24, 32, 40, 47,
                 55, 63, 70, 78, 86, 93,101,109,116,124,
                132,139,147,155,162,170,178,185,193,201,
                208, 208, 210};
int BluLUT[] = {  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
                  0,  0,  1,  1,  1,  1,  1,  1,  1,  2,
                  2,  2,  2,  2,  2,  2,  3,  3,  3,  3,
                  3,  3,  3,  4,  4,  4,  4,  4,  4,  4,
                  5,  5,  5,  5,  5,  5,  5,  6,  6,  6,
                  6,  6, 7};

void setup() {
  // put your setup code here, to run once:

  pinMode(OptoPin,INPUT);
  pinMode(LEDPin,OUTPUT);

  barrel.begin();
  barrel.show();

  startMillis = millis();

  for (j = 0; j < NeoCount; j++){
    temp[j] = 0;
  }

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

  if (counter > maxtemp) counter = maxtemp;
  if (counter < 0) counter = 0;

  color = counter / 50;

  temp[0] = color;
  for (k = 1; k < NeoCount; k++){
    carry = temp[k];
    temp[k] = (temp[k-1] + carry) / 2;
  }

  for (i = 0; i < NeoCount; i++){
    // barrel.setPixelColor(i, RedLUT[color], GrnLUT[color], BluLUT[color]);
    barrel.setPixelColor(i, RedLUT[temp[i]], GrnLUT[temp[i]], 0);
  }
  barrel.show();
}
