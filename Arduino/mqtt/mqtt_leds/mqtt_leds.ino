#include <ESP8266WiFi.h>
#include <PubSubClient.h>

#include "config.h"
#include "ESP8266_Utils.hpp"
#include "Leds_setup.hpp"
#include "MQTT.hpp"
#include "ESP8266_Utils_MQTT.hpp"



void setup(void){
  
  Serial.begin(115200);
  led_setup();
  ConnectWiFi_STA(true);

  InitMqtt();
  
}

void loop(void){
  HandleMqtt();
  
}
