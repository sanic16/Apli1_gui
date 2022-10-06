void ConnectWiFi_STA(bool useStaticIP = false){
  delay(10);
  Serial.println("");
  WiFi.mode(WIFI_STA);
  WiFi.begin(ssid, password);
  if (useStaticIP) WiFi.config(ip, gateway, subnet);
  while(WiFi.status() != WL_CONNECTED){
    delay(250);
    Serial.print(".");
  }
  
  Serial.println();
  Serial.print("SSID:\t\t");
  Serial.println(WiFi.SSID());
  Serial.print("Hostname: \t");
  Serial.println(WiFi.hostname());
  Serial.print("Local IP: \t");
  Serial.println(WiFi.localIP());
  Serial.print("Subnet Mask: \t");
  Serial.println(WiFi.subnetMask());
  Serial.print("Gateway IP: \t");
  Serial.println(WiFi.gatewayIP());
  Serial.print("DNS IP: \t");
  Serial.println(WiFi.dnsIP());
  Serial.print("MAC address: \t");
  Serial.println(WiFi.macAddress());
}
/*
void ConnectWiFi_AP(bool useStaticIP = false){
  Serial.println("");
  WiFi.mode(WIFI_AP);
  while(!WiFi.softAP(ssid, password)){
    Serial.print(".");
    delay(250);
  }
  if(useStaticIP) WiFi.softAPConfig(ip, gateway,subnet);

  Serial.println("");
  Serial.print("Iniciado AP:\t");
  Serial.println(ssid);
  Serial.print("IP address:\t");
  Serial.println(WiFi.softAPIP());
}

*/
