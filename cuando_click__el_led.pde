import interfascia.*;
import processing.serial.*;

GUIController c;
IFButton b1, b2;
IFLabel l;

Serial myPort;  // Create object from Serial class
PImage img;

void setup() {
  size(200,200);
  background(155);
  
  c = new GUIController (this);
  
  b1 = new IFButton("Green", 40, 40, 40, 17);
  b2 = new IFButton("Blue", 120, 40, 40, 17);
  
  b1.addActionListener(this);
  b2.addActionListener(this);
  
  String portName = Serial.list()[3];
  myPort = new Serial(this, portName, 9600);
  img = loadImage("reinhart.png");
}


void draw() {
  image(img,0,0);
  if ( mousePressed ==true) {
    myPort.write('1');
    println("1");
  }else {
    myPort.write('0');
  }
}

void actionPerformed(GUIEvent e) {
  if(e.getSource()== b1){
    myPort.write('1');
    background(100, 155, 100);
  } else if (e.getSource() == b2){
    myPort.write('0');
    background(100, 100,130);
  }
}