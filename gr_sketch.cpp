#include <Arduino.h>
#include <Stepper.h>

int XU=0; // Endschalter unten an Pin0
int XU_reached=0; // 1=>Endposition X unten erreicht
int XO=1; // Endschalter oben an Pin1 
int XO_reached=0; // 1=>Endposition X oben erreicht
int Tasterstatus=0; // Variable für den Status des Tasters
int direction=1; // -1=>down 1=>up
int countup=0;
int countdown=0;
int max=0;
int min=0;

// change this to the number of steps on your motor
#define STEPS 200

// create an instance of the stepper class, specifying
// the number of steps of the motor and the pins it's
// attached to
Stepper stepper(STEPS, 6, 7, 8, 9);


void setup()
{
    Serial.begin(9600); // set Baudrate for virtual COM-Port
  
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
        countup++;
        //Serial.println(count);
        stepper.step(+1);
    }
    //max=count;
    Serial.print("Max: ");
    Serial.println(countup);
    delay(2000);
    countup=0;
    
    while(digitalRead(XU))
    {
        countdown--;
        //Serial.println(countdown);
        stepper.step(-1);
    }
    //min=count;
    Serial.print("Min: ");
    Serial.println(countdown);
    delay(2000);
    countdown=0;
}