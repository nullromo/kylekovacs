# arduino-encoder
Template code for using encoders with arduino

## How encoders work

An encoder has 2 signal wires. When the encoder is turned, the wires take turns turning on and off. The encoder's direction can be determined by the order in which the encoder wires change state. In the resting position, both encoder wires are high, so the state is `B11`. As the encoder rotates one direction, it will flow through the states `B11, B01, B00, B10, B11` in one complete tick. If it is going the other direction, the order of the states will be reversed. This means that if, say, the sequence of states went `B11, B01, B00, B01`, then we would know that the encoder started turning one direction and then changed directions (because `B01` comes *before* `B00` for this direction). The state machine relies on the fact that only one wire can change state at a time.

A timing diagram for the encoder wire signals with the corresponding states is shown below.

```
         _______         _______         _______         _______
    A __|       |_______|       |_______|       |_______|       |_______
             _______         _______         _______         _______
    B ______|       |_______|       |_______|       |_______|       |___
STATE 0   1   1   0   0   1   1   0   0   1   1   0   0   1   1   0   0
      0   0   1   1   0   0   1   1   0   0   1   1   0   0   1   1   0
```

## How the code works

The code uses a 2-bit number called `encoderState` to track which position the encoder is in and an enum `TurnDirection` to track which direction the encoder has been turning. Once the encoder gets back to the rest position, that constitutes one full turn, and `completedSunwiseTurns` is inc- or decremented. If the direction changes mid-turn, then it won't be a problem since we are tracking all the state changes along with the current turning direction.

## How the code *works*

Arduino allows functions (called interrupt handlers, or interrupt service routines [ISRs]) to be "attached" to I/O pins. In this case, each of the two pins has an ISR attached to it. If an interrupt occurs during the handling of another interrupt, the new interrupt is buffered and handled later. This code is completely safe becuase it is not possible for an interrupt to be dropped, and the shared state variables will always be maintained properly (they are declared as `volitile` to assist with this).
