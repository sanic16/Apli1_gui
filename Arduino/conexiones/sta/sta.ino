#include <ESP8266WiFi.h>

#include "config.h" 
#include "ESP8266_Utils.hpp"

void setup(){
  Serial.begin(115200);
  ConnectWiFi_STA();
}

void loop(){
  
}
