import oscP5.*;
import netP5.*;

OscP5 oscP50;
OscP5 oscP51;
OscP5 oscP52;
OscP5 oscP53;
NetAddress myRemoteLocation;

void setup() {
  size(400, 400);
  frameRate(25);
  oscP50 = new OscP5(this, 12000);
  oscP51 = new OscP5(this, 12001);
  oscP52 = new OscP5(this, 4002);
  oscP53 = new OscP5(this, 4003);

  //myRemoteLocation = new NetAddress("127.0.0.1",12000);
  myRemoteLocation = new NetAddress("161.3.39.87", 12000);
}


void draw() {
  background(0);  

  //OscMessage myMessage = new OscMessage("Tu vois que la valeur de X est : ");
  //myMessage.add(mouseX); /* add an int to the osc message */

  /* send the message */
  //oscP5.send(myMessage, myRemoteLocation);

  //OscMessage myMessage = new OscMessage("/test");
  OscMessage myMessage = new OscMessage("/test");

  //myMessage.add(123); /* add an int to the osc message */
  //myMessage.add(12.34); /* add a float to the osc message */
  //myMessage.add("some text"); /* add a string to the osc message */
  //myMessage.add(new byte[] {0x00, 0x01, 0x10, 0x20}); /* add a byte blob to the osc message */
  //myMessage.add(new int[] {1, 2, 3, 4}); /* add an int array to the osc message */
  //oscP5.send(myMessage, myRemoteLocation);
  //println("Vincent: "+oscP50);
  //println(oscP52);
  //oscEvent(oscP52 allo);
}

void mousePressed() {
}

/* incoming osc message are forwarded to the oscEvent method. */
void oscEvent(OscMessage theOscMessage) {
  /* print the address pattern and the typetag of the received OscMessage */
  print("### received an osc message.");
  print(" addrpattern: "+theOscMessage.addrPattern());
  println(" typetag: "+theOscMessage.typetag());
}