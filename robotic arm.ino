#include <Servo.h>

Servo servo1;
Servo servo2;
Servo servo3;

#define servo_1 9
#define servo_2 10
#define servo_3 5

#define pot1 A1
#define pot2 A2
#define pot3 A3

#define IN1 12
#define IN2 13
#define ENA 11

#define but1 2
#define but2 3

void setup() {
  servo1.attach(servo_1);
  servo1.write(0);
  
  servo2.attach(servo_2);
  servo2.write(0);

  servo3.attach(servo_3);
  servo3.write(0);

  pinMode(pot1,INPUT);
  pinMode(pot2,INPUT);
  pinMode(pot3,INPUT);
  pinMode(ENA, OUTPUT);
  pinMode(IN1, OUTPUT);
  pinMode(IN2, OUTPUT);
  pinMode(but1, INPUT_PULLUP);
  pinMode(but2, INPUT_PULLUP);

  analogWrite(ENA, 0);

  Serial.begin(9600);
}

void loop() 
{

  int p1=analogRead(pot1);
  int angle1=map(p1,0,1023,0,180);
  servo1.write(angle1);

  int p2=analogRead(pot2);
  int angle2=map(p2,0,1023,0,180);
  servo2.write(angle2);

  int p3=analogRead(pot3);
  int angle3=map(p3,0,1023,0,180);
  servo3.write(angle3);

  int front=digitalRead(but1);
  int back=digitalRead(but2);

  if(front==0 && back==1)
  {
    digitalWrite(IN1, HIGH);
    digitalWrite(IN2, LOW);
    analogWrite(ENA, 70);
  }

  else if(front==1 && back==0)
  {
    digitalWrite(IN1, LOW);
    digitalWrite(IN2, HIGH);
    analogWrite(ENA, 70);
  }

  else
  {
    analogWrite(ENA, 0);
  }

}