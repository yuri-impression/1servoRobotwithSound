# 1 servo Robot with Sound / Kids in Tech: Electronics and Robotics Open Day 2019

	11th May, 2019
	14:00-16:00
	@Akure TechHub, Botanical Garden, FUTA


Note: This repository is made for the Arduino workshop held in 11th May in FUTA, Nigeria.  Any suggestions and comments are welcomed. **But note that further support is not planned.**

## Aim
・Students will learn how to establish the basics of interactive system which are required to build simple robots.

## Objectives
・Understand how to wire hardware.
・Understand what Arduino is.
・Comprehend the function of potentiometer in electric circuit.
・Acknowledge the importance of interactivity between machine and world.

## Tools
・One Student One Arduino Project Kit (supplied by GreenLab Microfactory)
・Arduino IDE,  StandardFirmata
・Processing 3 (**Firmata and Minim are necessary to run soundArduino.pde**)

## Staff
・Yuji Ogawa (Hitotsubashi University)
・Adebayo Moses (GreenLab)
・Kolawole Segun (GreenLab)
・Youth in FUTA who got TME education

## Resources
GitHub (documents, codes…) 
https://github.com/yuri-impression/1servoRobotwithSound

## References
- General
	- Talkie Walkie by Guilherme Martins http://lab.guilhermemartins.net/2009/05/26/talkie-walkie/
- SoundWave https://discourse.processing.org/t/how-to-make-sound-wave-change-color-according-to-sound-frequency-from-mic-input/385
- Biting Skull Origami https://www.youtube.com/watch?v=DQeTJtMIF5w

## Workshop Procedure
1. Learn the basics about Arduino and Robots  
2. Learn the difference between analog and digital 
3. Analog control of servo motor with poteniometer 
4. Analog control of servo motor with Processing and mic
5. Making simple robot
*for further procedure, check Akure_11May.pptx or Akure_11May.pdf in the repository*

## How to build a sample robot (briefly)
[SampleVideo](https://github.com/yuri-impression/1servoRobotwithSound/blob/master/TestVideo.mp4) 
1. Download and install Processing IDE and add two libraries: Firmata and Minim. 
2. Download and install Arduino IDE. Open StandardFirmata from upper tab (File -> Examples -> Firmata -> StandardFirmata), and upload to Arduino. (We used the Arduino UNO clone. In Mac OS Sierra/High Sierra/Mojave, you have to install some libraries for recognizing CH341)
3. Download and open SoundArduino.pde
4. Modify the variable witin the line: ~~~Arduino = new Arduino(this, Arduino.list()[0], 57600);~~~
Let the variable in Arduino.list[%] change to make it fit with the serial port you are going to use.
5. Plug any mic to your laptop and make sure the soundinput comes from the mic.
6. Make the paper puppet following the video [Biting Skull Origami](https://www.youtube.com/watch?v=DQeTJtMIF5w).
7. Prepare the paper box of cookie or something and attach the microservo (TowerPro.SG90) to the box. 
8. Attach the paper puppet to the box. For this, see the instruction of [Talkie Walkie by Guirherme Martins](http://lab.guilhermemartins.net/2009/05/26/talkie-walkie/). Use some piece of cardboard or something to connect the upper jaw of the puppet to the shaft of the servo. Lower jaw should be attached too, but leave some space to move.
9. Wire the servo to Arduino which Firmata was uploaded to. 
If you are using SG90 servo:
	- Brown to GND
	- Red to VCC (5V)
	- Yellow to D9
10. Connect Arduino to the serial port which was assigned in Arduino.list[%]
11. Run SoundArduino.pde
12. Talk to the mic and check the soundwave shown in the display.
13. Check how the servo is working and if necessary modify the **4th** and **5th** variable of the map() witin the line: ~~~int newPos = int(map(in.right.get(i)*2, -5, 2, 60, 160));~~~
The range should be within 0-180.


## Review
### The reaction of kids
- Kids have already had some experiences with Arduino. They learned some basics about Arduino and how to wire them. But their knowledge was still limited about how each components are working. To some extent it looks like they enjoyed the workshop.
### Schedule problem
- Because of the delay of the former workshop held in Akure TechHub, our workshop got delayed about an hour. This is not entirely our fault, but still better arrangement of schedule is necessary. Some of participants got irritated because of the delay. There was not so much time to let kids type the code. And also we had to omit the final part of robot making because of the time restriction. But some kids were still interested in how to make it, thus we extended about 30 minute to let kids build the robot.
