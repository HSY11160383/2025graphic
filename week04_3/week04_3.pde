//week04-3
void setup(){
  size(400,400,P3D);
}
void draw(){
  background(128);
  translate(width/2, height/2);
  //rotateY(radians(mouseX)); //左右轉
  rotateX(radians(-mouseY));
  box(200);
}
