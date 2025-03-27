//week06-3
void setup(){
  size(500,500, P3D);
}

void draw(){
  background(142);
  ellipse(width/2, height/2, 200, 200);
  translate(width/2, height/2); //至中用
  pushMatrix();
  translate(x, y);
  if(mousePressed && mouseButton==RIGHT) {
    rotateZ(radians(frameCount));
  } //按一下才會轉
  translate(-50,0,0); //把box移到左方 讓一邊成為圓心點
  box(100,30,30);
  popMatrix();
}
float x = 0, y = 0;
void mouseDragged(){
  x += mouseX - pmouseX;
  y += mouseX - pmouseY;
}
