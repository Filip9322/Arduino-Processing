char val;
int ledStrip1 = 8;
int ledStrip2 = 9;
int ledStrip3 = 10;
int ledStrip4 = 11;

void setup() {
  // put your setup code here, to run once:
  pinMode(ledStrip1, OUTPUT);
  pinMode(ledStrip2, OUTPUT);
  pinMode(ledStrip3, OUTPUT);
  pinMode(ledStrip4, OUTPUT);
  Serial.begin(9600);
}

void loop() {
  // put your main code here, to run repeatedly:
  if (Serial.available()) {
    val = Serial.read();
  } if (val == '1') {
    digitalWrite(ledStrip1, HIGH);
    digitalWrite(ledStrip2, LOW);
    digitalWrite(ledStrip3, LOW);
    digitalWrite(ledStrip4, LOW);
  } else if (val == '2') {
    digitalWrite(ledStrip1, HIGH);
    digitalWrite(ledStrip2, HIGH);
    digitalWrite(ledStrip3, LOW);
    digitalWrite(ledStrip4, LOW);
  } else if (val == '3') {
    digitalWrite(ledStrip1, HIGH);
    digitalWrite(ledStrip2, HIGH);
    digitalWrite(ledStrip3, HIGH);
    digitalWrite(ledStrip4, LOW);
  } else if (val == '4') {
    digitalWrite(ledStrip1, HIGH);
    digitalWrite(ledStrip2, HIGH);
    digitalWrite(ledStrip3, HIGH);
    digitalWrite(ledStrip4, HIGH);
  }
  delay(10);
}
