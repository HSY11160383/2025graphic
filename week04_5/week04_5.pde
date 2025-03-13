//week04-5
void setup(){
  size(400,400,P3D);
}
void draw(){
  background(128);
  translate(width/2, height/2);
  //pushMatrix();
  //translate(0,100);
  //box(50);
  //pushMatrix();
  //translate(0,-25);
  //translate(0,-50);
  //box(10,100,10);
  //popMatrix();
  //popMatrix();
  translate(mouseX,mouseY);
  rotateZ(radians(frameCount));
  translate(0,-50);
  box(10,100,10);
}
