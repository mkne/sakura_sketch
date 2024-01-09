/*
 WiFiEsp and postParser example: Light_Switch
*/

#include <Arduino.h>
#include "WiFiEsp.h"
#include "postParser.h"

char ssid[] = "oooooooo";        // your network SSID (name)
char pass[] = "oooooooo";        // your network password
int status = WL_IDLE_STATUS;
int LedPin = PIN_LED0;
boolean LedState = false;

WiFiEspServer server(80);
void printWifiStatus();

void setup()
{
  pinMode(LedPin, OUTPUT);
  Serial.begin(115200);   // for serial monitor
  Serial3.begin(115200);  // for ESP module
  WiFi.init(&Serial3);

  // check for the presence of the shield
  if (WiFi.status() == WL_NO_SHIELD) {
    Serial.println("WiFi shield not present");
    // don't continue
    while (true);
  }

  // attempt to connect to WiFi network
  while (status != WL_CONNECTED) {
    Serial.print("Attempting to connect to WPA SSID: ");
    Serial.println(ssid);
    // Connect to WPA/WPA2 network
    status = WiFi.begin(ssid, pass);
  }

  Serial.println("You're connected to the network");
  printWifiStatus();

  // start the web server on port 80
  server.begin();
}


void loop()
{
  WiFiEspClient client = server.available();  // listen for incoming clients

  if (client) {
    // an http request ends with a blank line
    boolean currentLineIsBlank = true;
    PostParser postParser = PostParser(client); // create our parser

    while (client.connected()) {
      if (client.available()) {
        char c = client.read();
        postParser.addHeaderCharacter(c); // compose the header

        if (c == '\n' && currentLineIsBlank) { // end of header
          postParser.grabPayload();

          if(postParser.getField("Action") == "Toggle"){
            LedState = !LedState;
            digitalWrite(LedPin, LedState);
          }

          // Send a nice message back telling the browser/application that we received and processed the data
          client.println("HTTP/1.1 200 OK");
          client.println("Content-Type: text/html");
          client.println("Access-Control-Allow-Origin: *"); // usefull to get all the responses back
          client.println("Connection: close");  // the connection will be closed after completion of the response
          client.println();
          client.print("Done");

          Serial.println(postParser.getHeader()); // print the header for debugging
          delay(10); //used to make sure the 2 serial prints don't overlap each other
          Serial.println(postParser.getPayload()); // print the payload for debugging
          break;
        }

        if (c == '\n') {
          // you're starting a new line
          currentLineIsBlank = true;
        }
        else if (c != '\r') {
          // you've gotten a character on the current line
          currentLineIsBlank = false;
        }
      }
    }


    delay(1);
    client.stop();
  }
}

void printWifiStatus()
{
  // print the SSID of the network you're attached to
  Serial.print("SSID: ");
  Serial.println(WiFi.SSID());

  // print your WiFi shield's IP address
  IPAddress ip = WiFi.localIP();
  Serial.print("IP Address: ");
  Serial.println(ip);

  // print where to go in the browser
  Serial.println();
  Serial.print("To see this page in action, open a browser to http://");
  Serial.println(ip);
  Serial.println();
}

/*
curl -X POST -H "Content-Type: application/json" -d "{Action=Toggle&}"  http://(IPAddress)
*/