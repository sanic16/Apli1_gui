#include <ESP8266WiFi.h>
#include <ESP8266WebServer.h>

#include "config.h"
#include "ESP8266_Utils.hpp"

ESP8266WebServer server(80);

#include "Server.hpp"


void setup(void){
  Serial.begin(115200);
  ConnectWiFi_STA(true);
  InitServer();
}

void loop(){
  server.handleClient();
}
