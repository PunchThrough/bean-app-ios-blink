// The Bean is getting a hex when we execute:
// sendSerialData(data) on the iOS App. Essentially,
// we are checking if the data is
// 1 (LED is ON) or 0 (LED is OFF). 

void setup() {
  // Open serial communications and wait for port to open:
  Serial.begin(9600);
}

void loop() {
    while (Serial.available() > 0) {
       char data = Serial.read();
       if (data == 1) {
         Bean.setLed(0,255,0);
         delay(1000);
         Bean.setLed(0,0,255);
         delay(1000);
         Bean.setLed(255,0,0);
         delay(1000);
         Bean.setLed(0,0,0);
         delay(1000);
       } else {
         Bean.setLed(0,0,0);
     }
  }

        delay(1000);
}

