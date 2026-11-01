### Robotic Arm
#### Plastic Gear GEL v1

**Description**<br>
The rotating base consists of a bevel gear system (1:3) powered by a DC motor connected to a driver that controls its direction and speed of rotation.
The arm comprises two joints and a gripper (spur gear mechanism), all operated by MG90S servos.
The servomotors are powered by a 5V supply, while a 9V supply powers the motor driver

**Component:**
* Arduino UNO R3
* 3 MG90S servo (180°)
* 6 M2 x 8mm 
* 2 M2.5 x 4mm
* DC geared motor
* L298N motor driver
* 3 potentiometer
* 2 push button
* Battery 5V
* Battery 9V
* Jumper wires

**Connection:**
* Push Button &rarr; GPIO 10
* Two state button &rarr; GPIO 2
* Buzzer &rarr; GPIO 6
* Led &rarr; PIN 6 (cathode-220ohm resistance)
* OLED 0,94" &rarr; SCL A5 - SDA A4

**Assembly**<br>
M2 screws were used for assembly to secure the servomotors, and M2.5 screws to attach the “limbs” to the servomotors, while the gripper component connects via a snap-fit

**Code**<br>
The code uses the map(); function to convert potentiometer values (0–1024) into angles for the servomotors (0–180)
As for the pushbuttons, to simplify wiring and avoid adding a 10kΩ resistor, they are connected directly to GND and a GPIO pin and configured as INPUT_PULLUP this way, the digitalRead();  function returns 1 when the button is not pressed (and vice versa)

_**Notes**_: _There are different possible upgrades for a V2:_
* _Replace the DC gear motor with a stepper motor to have more precise movement and power it from the same 5V source the servos are powered from.(I had to use a different power source because the driver I used caused a voltage loss, so using 5V would only give 2V/3V output, clearly not enough for movement)_
* _A bigger arm using a spur gear system for the joint._
* _Servo motor with more torque._

**3d model i partyally used**<br>
[Gripper: ](https://makerworld.com/it/models/1116022-robot-arm-claw-for-mg90s-micro-servo-motor#profileId-1113520)Took the spur gear gripper arm and adapted the hole<br>
[TT motor mount: ](https://makerworld.com/it/models/2697691-tt-motor-mount-version-2)Used it to put the DC motor at a fixed distance for the bevel gear to work<br>
[TT motor mount: ](https://makerworld.com/it/models/439754-stemfie-power-transmission-hub-pln-idx-fxd-ttmotor#profileId-345381)Used it as an adpter for the motor

[Click here for all the 3d model in one plate](https://github.com/tdm-kyo/robotic-arm/blob/main/robotic%20arm.3mf) <br>
[Click here for single 3d model](https://github.com/tdm-kyo/robotic-arm/tree/main/3d%20file)

###### open source is love <3
###### README.md made with [Markdown Live Preview](https://markdownlivepreview.com/)
