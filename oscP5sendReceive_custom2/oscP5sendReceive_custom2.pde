import oscP5.*;
import netP5.*;

OscP5 oscP5_0;

NetAddress myRemoteLocation_0;
int i, j;
void setup() {
  size(400, 400);
  frameRate(25);
  
  oscP5_0 = new OscP5(this,4685); //add2
  
  myRemoteLocation_0 = new NetAddress("127.0.0.1", 4685); //send maxMSP msg to: udpsend 127.0.0.1 4685
}

void draw() {
  background(0,250);  
  
  textSize(27);
  fill(255,255,0);
  text(str(i), height/2, width/2);
  text(str(j), height/2, width/1.5);
}

void oscEvent(OscMessage theOscMessage) {
  
  i = int(theOscMessage.get(0).intValue());
  j = int(theOscMessage.get(1).intValue());
  
  /* print the address pattern and the typetag of the received OscMessage */
  print("### received an osc message.");
  print(" addrpattern: "+theOscMessage.addrPattern());
  println(" typetag: "+theOscMessage.typetag());
}
