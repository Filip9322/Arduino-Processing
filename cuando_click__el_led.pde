
//---Importa librerias---
import interfascia.*;
import processing.serial.*;

GUIController c; //eventos
IFButton b1, b2, b3, b4; //botones
IFLabel l; //texto impreso

Serial myPort;  // Create object from Serial class
PImage img1; //var para 1 imagen
PImage img2;
PImage img3;
PImage img4;

void setup() {
  size(700,538); //tamaño de ventana
  background(155); //fondo inicial
  
  c = new GUIController (this); // se crea la interfaz interactiva
  
  //se crea y define los botones X, Y , Width, Height
  b1 = new IFButton("Estado 1", 40, 500, 50, 20);
  b2 = new IFButton("Estado 2", 120, 500, 50, 20);
  b3 = new IFButton("Estado 3", 200, 500, 50, 20);
  b4 = new IFButton("Estado 4", 280, 500, 50, 20);
  
  //Los botones reciben listener
  b1.addActionListener(this);
  b2.addActionListener(this);
  b3.addActionListener(this);
  b4.addActionListener(this);
  
  //se agregan a la interfaz
  c.add(b1);
  c.add(b2);
  c.add(b3);
  c.add(b4);
  
  //se define el puerto de entrada y el baudRate
  String portName = Serial.list()[3];
  myPort = new Serial(this, portName, 9600);
}


void draw() {
  
}

// funcion de escuchar eventos
void actionPerformed(GUIEvent e) {
  if(e.getSource()== b1){
    myPort.write('1');
    img1 = loadImage("1estado.png");
    //background(100, 155, 100);
    image(img1,20,20);
  } else if (e.getSource() == b2){
    myPort.write('2');
    img2 = loadImage("2estado.png");
    //background(100, 100,130);
    image(img2,20,20);
  }else if (e.getSource() == b3){
    myPort.write('3');
    img3 = loadImage("3estado.png");
    //background(100, 100,130);
    image(img3,20,20);
  }else if (e.getSource() == b4){
    myPort.write('4');
    img4 = loadImage("4estado.png");
    //background(100, 100,130);
    image(img4,20,20);
  }
  
  
  
}