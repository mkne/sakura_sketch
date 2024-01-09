/* MQTT example: mqtt_basic (for GR-ROSE)
*/

#include <WiFiEsp.h>
#include <WiFiEspClient.h>
#include <WiFiEspUdp.h>
#include <PubSubClient.h>


char ssid[] = "oooooooo"; // your network SSID (name)
char pass[] = "oooooooo"; // your network password
int status = WL_IDLE_STATUS; // the Wifi radio's status
IPAddress server(172,20,10,3);  // server for broker
WiFiEspClient espClient;
void callback(char* topic, byte* payload, unsigned int length);
PubSubClient client(server, 1883, callback, espClient);

void callback(char* topic, byte* payload, unsigned int length) {
  Serial.print("Message arrived [");
  Serial.print(topic);
  Serial.print("] ");
  for (int i=0;i<length;i++) {
    Serial.print((char)payload[i]);
  }
  Serial.println();
}

void setup() {
  // initialize serial for debugging
  Serial.begin(115200);
  // initialize serial for ESP module
  Serial3.begin(115200);
  // initialize ESP module
  WiFi.init(&Serial3);

  // check for the presence of the shield
  if (WiFi.status() == WL_NO_SHIELD) {
    Serial.println("WiFi shield not present");
    // don't continue
    while (true);
  }

  // attempt to connect to WiFi network
  while ( status != WL_CONNECTED) {
    Serial.print("Attempting to connect to WPA SSID: ");
    Serial.println(ssid);
    // Connect to WPA/WPA2 network
    status = WiFi.begin(ssid, pass);
  }

  // you're connected now, so print out the data
  Serial.println("You're connected to the network");
}

void loop() {
  // put your main code here, to run repeatedly:
  
  if (!client.connected()) {
    Serial.print("Attempting MQTT connection...");
    // Attempt to connect
    if (client.connect("GR-ROSE")) {
      Serial.println("connected");
      // Once connected, publish an announcement...
      client.publish("outTopic","hello world");
      client.subscribe("inTopic");
    } else {
      Serial.print("failed, rc=");
      Serial.print(client.state());
      Serial.println(" try again in 5 seconds");
      // Wait 5 seconds before retrying
      delay(5000);
    }
  } else {
    static uint32_t last_time = millis();
    if((millis()-last_time) > 100) client.loop();
  }
  if(client.connected()){
    static int count = 0;
    char buffer [50];
    sprintf(buffer, "%d", count);
    client.publish("outTopic", buffer);
    count++;
    delay(500);
  }
}
