# Robot Arm
A custom master/slave robot arm with 5 degrees of freedom.

## What is this?

This system consists of a master arm made of wood with sensors embedded inside its joints, and a slave arm made of metal with motors at its joints.

| Master arm | Slave arm |
|:-:|:-:|
| ![Master Arm][Master Arm] | ![Slave Arm][Slave Arm] |
| The master arm has 4 degrees of freedom (rotation at the base, 2 mid-arm joints, and a wrist rotation) and a dial mounted on the base (left-hand side) for the gripper. There are two buttons on the base (record and playback) and a power switch. All the electronics (processor, power supply, breadboard) are housed below the master arm. | The slave arm has 5 motors (a stepper motor at the base and 4 servos attached to the arm). All the wires exit though the base and connect to the master arm via a single connector. |

By grabbing ahold of and moving the master arm, a human operator can control the slave arm, record motions, and play them back. The buttons at the base of the master arm tell the microcontroller when to start recording and when to play the recording back.

## Videos

Since github markdown does not support embedded videos, I have to use links:

- This [video](https://youtu.be/X3Wbde3pkQc) shows the arm grasping a widget and carrying it around,
- and [this one](https://youtu.be/dP_zAAKOD1A) shows recording and playback of a series of motions.

## Electronics

A Teensy 3.6 microcontroller runs the [code](code.ino) to operate the arm. The arm is actuated using 4 servo motors (hand, wrist, elbow, shoulder) and a stepper motor (torso). The base joint of both arms is fully rotational, hence the use of a stepper motor and an encoder. The rest of the joints do not rotate 360 degrees, so they make use of servo motors and potentiometers. Stored in the base of the master arm are a large power supply and a breadboard with a voltage regulator on it (the motors requre a different voltage than the potentiometers and encoder). Simple buttons were used to control the interrupts to transition the state of the program.

![Wires][Wires]

## Code details

The program has 3 main states: `RECORD` and `PLAYBACK` (as mentioned above), and a `WAIT` state. Depending on the desired speed, the frequency of the `mainLoop` function can be changed by changing the value in the `loop` function. This will adjust the operating speed of the device. In `RECORD` mode, the program simply takes note of the positions of all the motors and stores them in a program buffer. In `PLAYBACK` mode, the program loops through the recorded program and actuates the arm accordingly (clamping the values to set minimums and maximums). At the end of the program, it repeats. Finally, when not in `RECORD` mode, the program constantly updates the values from the sensors and tries to filter out jitter.

## Additional photos

| Master Arm (other side) | Slave Arm (side) |
|:-:|:-:|
| ![Master Arm 2][Master Arm 2] | ![Side][Side] |
| **Slave Arm (back)** | **Slave Arm (top)** |
| ![Back][Back] | ![Top][Top] |

[//]: # (images)
[Master Arm]: ./images/master-arm.jpg "Master Arm"
[Master Arm 2]: ./images/master-arm2.jpg "Master Arm 2"
[Slave Arm]: ./images/slave-arm.jpg "Slave Arm"
[Top]: ./images/top.jpg "Top"
[Wires]: ./images/wires.jpg "Wires"
[Back]: ./images/back.jpg "Back"
[Side]: ./images/side.jpg "Side"
