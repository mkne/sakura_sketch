/* GR-SAKURA Sketch Template V2.24 */
#include <Arduino.h>
#include <Stepper.h>
int SPU = 2048;
Stepper Motor(SPU, 6,7,8,9);
int XU=0; // Endschalter unten an Pin0
int XU_reached=0; // 1=>Endposition X unten erreicht
int XO=1; // Endschalter oben an Pin1 
int XO_reached=0; // 1=>Endposition X oben erreicht
int Tasterstatus=0; // Variable für den Status des Tasters
int direction=1; // -1=>down 1=>up

void setup()
{
    Motor.setSpeed(4);
    pinMode(XU, INPUT);
    pinMode(XO, INPUT);
    pinMode(PIN_LED0,OUTPUT);
    pinMode(PIN_LED1,OUTPUT);
    pinMode(PIN_LED2,OUTPUT);
    pinMode(PIN_LED3,OUTPUT);
}

void loop() 
{
    XU_reached=!digitalRead(XU);
    
    if(direction==-1 & !XU_reached)
    {
		digitalWrite(PIN_LED0, 0);
        Motor.step(-1); //...Drehe den Motor um einen einzigen Schritt.
    }
    else
    {
        digitalWrite(PIN_LED0, 1);
        direction=1;
    }
    
    XO_reached=!digitalRead(XO);
    if(direction==1 & !XO_reached)
    {
        digitalWrite(PIN_LED3, 0);
        Motor.step(1); //...Drehe den Motor um einen einzigen Schritt.
    }
    else
    {
		digitalWrite(PIN_LED3, 1);
		direction=-1; 
    }
}