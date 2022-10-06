int leds[] = {5, 4, 0, 2, 14, 12, 13, 15};

void led_setup(void){
 for(int i=0; i<=7; i++){
  pinMode(leds[i], OUTPUT);
 }
}
