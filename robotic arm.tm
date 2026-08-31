<TeXmacs|2.1.5>

<style|<tuple|generic|italian>>

<\body>
  <with|font-series|bold|<center|3axis Robotic Arm>>

  <center|<small|Plastic Gear GEL v1>>

  Three-axis robotic arm controlled by three potentiometers (extension and
  gripper opening/closing) and two push-buttons (rotation).

  \;

  Componenti

  <\indent>
    <\itemize>
      <item>3 MG90S servo (180)

      <item>6 M2 <math|*\<times\>> 8mm\ 

      <item>2 M2.5 <math|\<times\>> 4mm flat screw

      <item>1 DC geared motor

      <item>L298N motor driver

      <item>Arduino UNO R3

      <item>3 potentiometer

      <item>2 button

      <item>Battery 5V

      <item>Battery 9V
    </itemize>
  </indent>

  \;

  <\ornament>
    <\center>
      The rotating base consists of a bevel gear system (1:3) powered by a DC
      motor connected to a driver that controls its direction and speed of
      rotation.

      The arm comprises two joints and a gripper (spur gear mechanism), all
      operated by MG90S servos.

      The servomotors are powered by a 5V supply, while a 9V supply powers
      the motor driver
    </center>
  </ornament>

  <center|ASSEMBLY>

  <ornament|M2 screws were used for assembly to secure the servomotors, and
  M2.5 screws to attach the \Plimbs\Q to the servomotors, while the gripper
  component connects via a snap-fit mechanism>

  \;

  <center|CODE>

  <\ornament>
    The code uses the map(); function to convert potentiometer values
    (0\U1024) into angles for the servomotors (0\U180)

    As for the pushbuttons, to simplify wiring and avoid adding a
    10k\<Omega\> resistor, they are connected directly to GND and a GPIO pin
    and configured as INPUT_PULLUP this way, the digitalRead(); \ function
    returns 1 when the button is not pressed (and vice versa)
  </ornament>

  \;

  <\small>
    3d model i partially used :

    <\ornament>
      https://makerworld.com/it/models/1116022-robot-arm-claw-for-mg90s-micro-servo-motor#profileId-1113520

      i took the spur gear gripper arm and adapted the hole
    </ornament>

    <\ornament>
      https://makerworld.com/it/models/2697691-tt-motor-mount-version-2

      i used it to put the DC motor at a fixed distance for the bevel gear to
      work
    </ornament>

    <\ornament>
      https://makerworld.com/it/models/439754-stemfie-power-transmission-hub-pln-idx-fxd-ttmotor#profileId-345381

      used it as an adpter for the motor
    </ornament>
  </small>

  \;
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>