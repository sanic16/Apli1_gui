const char* MQTT_BROKER_ADRESS = "44.196.164.116";
const uint16_t MQTT_PORT = 1883;
const char* MQTT_CLIENT_NAME = "ESP8266Client_1";
const char* MQTT_USER = "alejandro";
const char* MQTT_PASSWORD = "1234";

WiFiClient espClient;
PubSubClient mqttClient(espClient);

void SuscribeMqtt(){
  mqttClient.subscribe("leds");
}

String content = "";
void OnMqttReceived(char* topic, byte* payload, unsigned int length){
  Serial.print("Received on");Serial.print(topic);Serial.print(": ");

  content = "";
  for (size_t i = 0; i < length; i++){
    content.concat((char) payload[i]);
  }
  int sts_on = content.indexOf("ON");
  int sts_off = content.indexOf("OFF");
  
  int led5 = content.indexOf("Led5");
  if(led5>-1){
    if (sts_on>-1) digitalWrite(leds[0], HIGH);
    if (sts_off>-1) digitalWrite(leds[0], LOW);
  }

  int led4 = content.indexOf("Led4");
  if(led4>-1){
    if (sts_on>-1) digitalWrite(leds[1], HIGH);
    if (sts_off>-1) digitalWrite(leds[1], LOW);
  }

  int led0 = content.indexOf("Led0");
  if(led0>-1){
    if (sts_on>-1) digitalWrite(leds[2], HIGH);
    if (sts_off>-1) digitalWrite(leds[2], LOW);
  }

  int led2 = content.indexOf("Led2");
  if(led2>-1){
    if (sts_on>-1) digitalWrite(leds[3], HIGH);
    if (sts_off>-1) digitalWrite(leds[3], LOW);
  }
  
  int led14 = content.indexOf("Led14");
  if(led14>-1){
    if (sts_on>-1) digitalWrite(leds[4], HIGH);
    if (sts_off>-1) digitalWrite(leds[4], LOW);
  }

  int led12 = content.indexOf("Led12");
  if(led12>-1){
    if (sts_on>-1) digitalWrite(leds[5], HIGH);
    if (sts_off>-1) digitalWrite(leds[5], LOW);
  }

  int led13 = content.indexOf("Led13");
  if(led13>-1){
    if (sts_on>-1) digitalWrite(leds[6], HIGH);
    if (sts_off>-1) digitalWrite(leds[6], LOW);
  }

  int led15 = content.indexOf("Led15");
  if(led15>-1){
    if (sts_on>-1) digitalWrite(leds[7], HIGH);
    if (sts_off>-1) digitalWrite(leds[7], LOW);
  }
  Serial.println();
  
  
}

String payload;
void PublishMqtt(unsigned long data){
  payload = "";
  payload = String(data);
  mqttClient.publish("leds", (char*)payload.c_str());
}
