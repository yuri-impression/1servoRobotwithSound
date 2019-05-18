import processing.serial.*;
import cc.arduino.*;
import ddf.minim.*;
Arduino arduino;
Minim minim;
AudioInput in;

color white;
int pos = 0; //servo position in degrees (0…180)
  
void setup(){
  size(512, 200, P2D);
  white = color(255);
  colorMode(HSB,100);
  minim = new Minim(this);
  minim.debugOn();  
  in = minim.getLineIn(Minim.STEREO, 1024);// get a line in from Minim, default bit depth as 16
  background(0);
  arduino = new Arduino(this, Arduino.list()[0], 57600); //your offset may vary
  arduino.pinMode(9,5);
  arduino.analogWrite(9, pos);  //calibration
}
void draw(){
  background(0);
  for(int i = 0; i < in.bufferSize() - 1; i++){
    stroke((1+in.left.get(i))*50,100,100);
    line(i, 50 + in.left.get(i)*50, i+1, 50 + in.left.get(i+1)*50);
    stroke(white);
    line(i, 150 + in.right.get(i)*50, i+1, 150 + in.right.get(i+1)*50);
    int newPos = int(map(in.right.get(i)*2, -5, 2, 60, 160));
    println ("Pos = " + newPos);
    if (newPos != pos){
        arduino.analogWrite(9, newPos);
        pos=newPos;
      }
    }
  }

void stop(){
  // always close Minim audio classes when you are done with them
  in.close();
  minim.stop();
  super.stop();
}
