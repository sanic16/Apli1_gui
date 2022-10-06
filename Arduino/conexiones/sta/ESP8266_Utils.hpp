void ConnectWiFi_STA(){
  Serial.println("");
  WiFi.mode(WIFI_STA);
  WiFi.begin(ssid, password, 0);
  while(WiFi.status() != WL_CONNECTED){
    delay(200);
    Serial.print(".");
  }
  Serial.println();
  Serial.println("Is connected ?"); Serial.print(WiFi.isConnected());
  Serial.println("");
  Serial.print("SSID:  \t");
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
