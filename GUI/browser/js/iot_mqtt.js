var clientId = "ws" + Math.random();
// Create a client instance
client = new Paho.MQTT.Client("44.196.164.116", 8083, clientId);

// set callback handlers
client.onConnectionLost = onConnectionLost;
client.onMessageArrived = onMessageArrived;

// connect the client
client.connect({timeout: 3, onSuccess:onConnect});
Potenc1 = 0;
Potenc2 = 0;

// called when the client connects
function onConnect() {
  // Once a connection has been made, make a subscription and send a message.
  console.log("Conectado MQTT-WebSocket");
  client.subscribe("temp");
  client.subscribe("humedad");
 
}

// called when the client loses its connection
function onConnectionLost(responseObject) {
  if (responseObject.errorCode !== 0) {
    console.log("Conexión pérdida:"+responseObject.errorMessage);
  }
}

// called when a message arrives
function onMessageArrived(message) {
  console.log(message.destinationName + ": " + message.payloadString);
  if(message.destinationName == "temp"){
    //document.getElementById("ValorA").textContent += message.payloadString;
    Potenc1 = parseFloat(message.payloadString);
  }
  if(message.destinationName == "humedad"){
    Potenc2 = parseFloat(message.payloadString);

  }
}

function switchGPIO(led, status){
  client.send("leds", led+":"+status, 2)
}

