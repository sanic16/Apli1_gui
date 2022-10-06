#include <ESP8266WiFi.h>
#include <ESP8266WebServer.h>
#include <FS.h>


#include "config.h"
#include "ESP8266_Utils.hpp"
ESP8266WebServer server(80);

#include "ESP8266_Utils_Server.hpp"
#include "Server.hpp"


void setup(void){
  Serial.begin(115200);
  SPIFFS.begin();
  
  ConnectWiFi_STA(true);
  InitServer();
}

void loop(){
  server.handleClient();
}
