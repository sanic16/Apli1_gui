/*Lógica asociada al funcionamiento del Servidor*/

ESP8266WebServer server(80);

// Función al recibir petición GET
void getLED(){
  // devolver respuesta
  server.send(200, "text/plain", String("GET ") + server.arg(String("Id")));
}

// Función al recibir petición POST
void setLED(){
  // mostrar por puerto serie
  Serial.println(server.argName(0));

  server.send(200, "text/plain", String("POST ") + server.arg(String("Id")) + " " + server.arg(String("Status")));
   
}
// Función que se ejecuta en la URI '/'
void handleRoot(){
  String response = MAIN_page;
  server.send(200, "text/html", response);
}

void handleHelloWorld(){
  String response = ledStatus ? "ON" : "OFF";

  server.setContentLength(sizeof(HTML_PART_1) + sizeof(response) + sizeof(HTML_PART_2));
  server.send(200, "text/html", HTML_PART_1);
  server.sendContent(response);
  server.sendContent(HTML_PART_2);
}
// Función que se ejecutará en URI desconocida
void handleNotFound(){
  server.send(404, "text/plain", "Not Found");
}

void InitServer(){
  // Ruteo para contenido dinámico
  server.on("/helloworld", handleHelloWorld);
  
  // Ruteo para '/'
  server.on("/", handleRoot);

  // Definimos dos ruteos
  server.on("/led", HTTP_GET, getLED);
  server.on("/led", HTTP_POST, setLED);

  // Ruteo para '/inline' usando función lambda
  server.on("/inline", [](){
    server.send(200, "text/plain", "Esto también funciona");
  });

  // Ruteo para URI desconocida
  server.onNotFound(handleNotFound);

  // Iniciar Servidor
  server.begin();
  Serial.println("HTTP server started");
}
