// The Bean is getting a hex when we execute:
// sendSerialData(data) on the iOS App. Essentially,
// we are checking if the data is
// 1 (LED is ON) or 0 (LED is OFF). 

void setup() {
  // We don't need to do anything here
}

void loop() {
  while (Serial.available() > 0) {
    char data = Serial.read();
    if (data == 1) {
      Bean.setLed(0, 255, 255);
    } else {
      Bean.setLed(0,0,0);
    }
  }
  Bean.sleep(250);
}

