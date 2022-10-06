#include <ESP8266WiFi.h>
#include <ESP8266WebServer.h>

#include "config.h"
#include "ESP8266_Utils.hpp"

ESP8266WebServer server(80);

// Función que se ejecutará en la URI "/"
void handleRoot(){
  server.send(200, "text/plain", "Hola mundo!");
}

// Función que se ejecutará en URI desconocida
void handleNotFound(){
  server.send(404, "text/plain", "Not Found");
}

void setup(void){
  Serial.begin(115200);
  ConnectWiFi_STA(true);

  // Ruteo para "/"
  server.on("/", handleRoot);

  // Ruteo para "/inline" usando función lambda
  server.on("/inline", [](){
    server.send(200, "text/plain", "Esto también funciona");
  });

  // Ruteo para URI desconocida
  server.onNotFound(handleNotFound);

  // Iniciar servidor
  server.begin();
  Serial.println("HTTP server started");
}

void loop(){
  server.handleClient();
}
