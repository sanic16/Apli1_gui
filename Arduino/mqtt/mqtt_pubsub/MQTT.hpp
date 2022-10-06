const char* MQTT_BROKER_ADRESS = "44.196.164.116";
const uint16_t MQTT_PORT = 1883;
const char* MQTT_CLIENT_NAME = "ESP8266Client_1";
const char* MQTT_USER = "alejandro";
const char* MQTT_PASSWORD = "1234";

WiFiClient espClient;
PubSubClient mqttClient(espClient);

void SuscribeMqtt(){
  mqttClient.subscribe("hello");
}

String content = "";
void OnMqttReceived(char* topic, byte* payload, unsigned int length){
  Serial.print("Received on");Serial.print(topic);Serial.print(": ");

  content = "";
  for (size_t i = 0; i < length; i++){
    content.concat((char) payload[i]);
  }
  Serial.print(content);
  Serial.println();
}

String payload;
void PublishMqtt(unsigned long data){
  payload = "";
  payload = String(data);
  mqttClient.publish("hello", (char*)payload.c_str());
}
