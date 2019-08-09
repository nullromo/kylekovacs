# Laser Galvanometer

Using two mirrors and a laser pointer, user-specified drawings are projected onto a wall.

## How it works

The galvanometer consists of two microservo motors with mirrors attached to them. One moves in the X direction, and the other moves in the Y direction. A stationary laser pointer shines at the mirrors, allowing the beam to be controlled with the motors.

| Top view of the galvanometer | Projection |
|:-:|:-:|
| ![Top][Top] | ![Projection][Projection] |
| The laser pointer is mounted at the bottom left, shining first at the X-axis mirror and then at the Y-axis one. | When the mirrors move, the dot projected on the wall moves accordingly. |

## User interface

The interface has a few components to it. First off, the main drawing window in the middle is where you click and drag the mouse to create an image. Each click of the mouse create a line, which shows up in the line list on the left of the image.

The lines can be selected and deleted to edit the image. The laser speed can also be changed using the radio buttons. This changes the frequency with which the motors move to the next point.

![Interface][Interface]

At the bottom, a list of images previously drawn and saved shows up. These can be loaded up or stored and they persis across launches of the program.

## Code

This system was programmed using LabVIEW and the processor was a MyRIO. The code is pictured below, first with subVIs collapsed, then with them expanded.

![Small][Small]

![Large][Large]

This was my first experience with LabVIEW, and I thought it was going to be terrible, but it was actually a lot more intuitive than it looks at first. Getting to know the nuances and style of it is a bit tricky, but once you get going it's rather easy. The [code folder](code/) contains all the LabVIEW files.

## More Pictures

| Square drawing | Square projection |
|:-:|:-:|
| ![Square][Square] | ![Square2][Square2] |
| **Star drawing** | **Star projection** |
| ![Star][Star] | ![Star2][Star2] |

Check out this [video](https://youtu.be/C9D14AHB2rQ) on Youtube, or look for it in this repo.


[//]: # (images)
[Top]: ./images/top.jpg "Top view"
[Projection]: ./images/projection.jpg "Projection"
[Interface]: ./images/interface.jpg "User Interface"
[Small]: ./images/small.png "Small code"
[Large]: ./images/large.png "Large code"
[Square]: ./images/square.jpg "Square drawing"
[Square2]: ./images/square2.jpg "Square projection"
[Star]: ./images/star.jpg "Star drawing"
[Star2]: ./images/star2.jpg "Star projection"
