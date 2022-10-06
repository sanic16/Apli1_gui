#include <ESP8266WiFi.h>
#include <PubSubClient.h>

#include "config.h"
#include "ESP8266_Utils.hpp"
#include "MQTT.hpp"
#include "ESP8266_Utils_MQTT.hpp"

void setup(void){
  Serial.begin(115200);
  ConnectWiFi_STA(true);

  InitMqtt();
  
}

void loop(void){
  HandleMqtt();
  PublishMqtt(millis());
  delay(1000);
}
