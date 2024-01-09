// ArduinoJson - arduinojson.org
// Copyright Benoit Blanchon 2014-2019
// MIT License
//
// This example shows how to implement an HTTP server that sends a JSON document
// in the response.
// It uses the Ethernet library but can be easily adapted for Wifi.
//
// The JSON document contains the values of the analog and digital pins.
// It looks like that:
// {
//   "analog": [0, 76, 123, 158, 192, 205],
//   "digital": [1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0]
// }
//
// https://arduinojson.org/v6/example/http-server/

#include <Arduino.h>
#include <ArduinoJson.h>
#include "WiFiEsp.h"

char ssid[] = "oooooooo";        // your network SSID (name)
char pass[] = "oooooooo";        // your network password
int status = WL_IDLE_STATUS;

WiFiEspServer server(80);

void setup() {
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

  // start the web server on port 80
  server.begin();

  Serial.println(F("Server is ready."));
  Serial.print(F("Please connect to http://"));
  Serial.println(WiFi.localIP());
}

void loop() {
  // Wait for an incomming connection
  WiFiEspClient client = server.available();

  // Do we have a client?
  if (!client) return;

  Serial.println(F("New client"));

  // Read the request (we ignore the content in this example)
  while (client.available()) client.read();

  // Allocate a temporary JsonDocument
  // Use arduinojson.org/v6/assistant to compute the capacity.
  StaticJsonDocument<500> doc;

  // Create the "analog" array
  JsonArray analogValues = doc.createNestedArray("analog");
  for (int pin = A0; pin < A5; pin++) {
    // Read the analog input
    int value = analogRead(pin);

    // Add the value at the end of the array
    analogValues.add(value);
  }

  // Create the "digital" array
  JsonArray digitalValues = doc.createNestedArray("digital");
  for (int pin = 0; pin < 13; pin++) {
    // Read the digital input
    int value = digitalRead(pin);

    // Add the value at the end of the array
    digitalValues.add(value);
  }

  Serial.print(F("Sending: "));
  serializeJson(doc, Serial);
  Serial.println();

  // Write response headers
  client.println(F("HTTP/1.0 200 OK"));
  client.println(F("Content-Type: application/json"));
  client.println(F("Connection: close"));
  client.print(F("Content-Length: "));
  client.println(measureJsonPretty(doc));
  client.println();

  // Write JSON document
  serializeJsonPretty(doc, client);

  // Disconnect
  client.stop();
}

// See also
// --------
//
// https://arduinojson.org/ contains the documentation for all the functions
// used above. It also includes an FAQ that will help you solve any
// serialization problem.
//
// The book "Mastering ArduinoJson" contains a tutorial on serialization.
// It begins with a simple example, then adds more features like serializing
// directly to a file or an HTTP client.
// Learn more at https://arduinojson.org/book/
// Use the coupon code TWENTY for a 20% discount ❤❤❤❤❤