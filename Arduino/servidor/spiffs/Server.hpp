/*Lógica asociada al funcionamiento del Servidor*/


void handleNotFound(){
  server.send(404, "text/plain", "Not found");
}

void InitServer(){
  server.onNotFound([](){
    if(!HandleFileRead(server.uri()))
      handleNotFound();
  });

  server.begin();
  Serial.println("HTTP server started");
}
