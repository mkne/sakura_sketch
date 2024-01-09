/* GR-SAKURA Sketch Template V2.24 */
#include <Arduino.h>

#define INTERVAL 150

void setup()
{
    pinMode(PIN_LED0,OUTPUT);
    pinMode(PIN_LED1,OUTPUT);
    pinMode(PIN_LED2,OUTPUT);
    pinMode(PIN_LED3,OUTPUT);

}

void loop()
{
    digitalWrite(PIN_LED0, 1);
    delay(INTERVAL);
    digitalWrite(PIN_LED0, 0);
    digitalWrite(PIN_LED1, 1);
    delay(INTERVAL);
    digitalWrite(PIN_LED1, 0);
    digitalWrite(PIN_LED2, 1);
    delay(INTERVAL);
    digitalWrite(PIN_LED2, 0);
    digitalWrite(PIN_LED3, 1);
    delay(INTERVAL);
    digitalWrite(PIN_LED3, 0);
    digitalWrite(PIN_LED2, 1);
    delay(INTERVAL);
    digitalWrite(PIN_LED2, 0);
    digitalWrite(PIN_LED1, 1);
    delay(INTERVAL);
    digitalWrite(PIN_LED1, 0);
}
