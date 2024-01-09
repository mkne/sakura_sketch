#include <Arduino.h>
#include <Stepper.h>

int XU=0; // Endschalter unten an Pin0
int XU_reached=0; // 1=>Endposition X unten erreicht
int XO=1; // Endschalter oben an Pin1 
int XO_reached=0; // 1=>Endposition X oben erreicht
int Tasterstatus=0; // Variable für den Status des Tasters
int direction=1; // -1=>down 1=>up

// change this to the number of steps on your motor
#define STEPS 200

// create an instance of the stepper class, specifying
// the number of steps of the motor and the pins it's
// attached to
Stepper stepper(STEPS, 6, 7, 8, 9);


void setup()
{
  // set the speed of the motor to 120 RPMs
  stepper.setSpeed(150);
  
    pinMode(XU, INPUT);
    pinMode(XO, INPUT);
    pinMode(PIN_LED0,OUTPUT);
    pinMode(PIN_LED1,OUTPUT);
    pinMode(PIN_LED2,OUTPUT);
    pinMode(PIN_LED3,OUTPUT);
}

void loop()
{
  
  while(digitalRead(XO))
  {
  	stepper.step(+1);
  }
  while(digitalRead(XU))
  {
  	stepper.step(-1);
  }
}