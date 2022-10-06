/*Lógica asociada al funcionamiento del Servidor*/

// Función que se ejecutará en la URI '/'
void handleRoot(){
  server.send(200, "text/plain", "Hola mundo!");
}

// Función que se ejecutará en URI desconocida
void handleNotFound(){
  server.send(404, "text/plain", "Not Found");
}

void InitServer(){
  // Ruteo para '/'
  server.on("/", handleRoot);

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
