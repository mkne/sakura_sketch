#include <Arduino.h>
#include <Stepper.h>

//int XU_reached=0; // 1=>Endposition X unten erreicht, digitalRead(XU)==0
//int XO_reached=0; // 1=>Endposition X oben erreicht, digitalRead(XO)==0
int XU=0; // X Endschalter unten an Pin0
int XO=1; // X Endschalter oben an Pin1 
int XCountUp=0;
int XCountDown=0;

int YU=2; // Y Endschalter unten an Pin2
int YO=3; // Y Endschalter oben an Pin3 
int YCountUp=0;
int YCountDown=0;

//int Tasterstatus=0; // Variable für den Status des Tasters 
//int direction=1; // -1=>down 1=>up

// change this to the number of steps on your motor
#define STEPS 200

// create an instance of the stepper class, specifying
// the number of steps of the motor and the pins it's
// attached to
Stepper XStepper(STEPS, 10, 11, 12, 13);
Stepper YStepper(STEPS, 4, 5, 6, 7);
int XNSLEEP=9;
int YNSLEEP=8;

void setup()
{
    Serial.begin(9600); // set Baudrate for virtual COM-Port
  
    // set the speed of the motor to 150 RPMs
    XStepper.setSpeed(150);
    YStepper.setSpeed(150);
  
    pinMode(XU, INPUT);
    pinMode(XO, INPUT);
    pinMode(YU, INPUT);
    pinMode(YO, INPUT);
    pinMode(XNSLEEP,OUTPUT);
    pinMode(YNSLEEP,OUTPUT);
    pinMode(PIN_LED0,OUTPUT);
    pinMode(PIN_LED1,OUTPUT);
    pinMode(PIN_LED2,OUTPUT);
    pinMode(PIN_LED3,OUTPUT);
    
    digitalWrite(XNSLEEP,1); // enable X Motor output
    digitalWrite(YNSLEEP,1); // enable Y Motor output
}

void loop()
{
    while(digitalRead(XO))
    {
        XCountUp++;
        //Serial.println(XCountUp);
        XStepper.step(+1);
    }
    Serial.print("X-Max: ");
    Serial.println(XCountUp);
    delay(100);
    XCountUp=0;
    
    while(digitalRead(YO))
    {
        YCountUp++;
        //Serial.println(YCountUp);
        YStepper.step(+1);
    }
    Serial.print("Y-Max: ");
    Serial.println(YCountUp);
    delay(100);
    YCountUp=0;
    
    while(digitalRead(XU))
    {
        XCountDown--;
        //Serial.println(XCountDown);
        XStepper.step(-1);
    }
    Serial.print("X-Min: ");
    Serial.println(XCountDown);
    delay(100);
    XCountDown=0;
    
    while(digitalRead(YU))
    {
        YCountDown--;
        //Serial.println(YCountDown);
        YStepper.step(-1);
    }
    Serial.print("Y-Min: ");
    Serial.println(YCountDown);
    delay(100);
    YCountDown=0;
    
}