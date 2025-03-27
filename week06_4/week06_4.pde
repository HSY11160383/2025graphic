//week06-4 機械手臂
void setup(){
  size(500,500,P3D);
}
void draw(){
  background(255);
  translate(width/2, height/2);
  sphere(10); //參考用圓球
  
  box(200,50,25); //機械手臂一號 手肘部位
  
  fill(252,131,77);
  pushMatrix();
  translate(x,y);
  if(mousePressed) rotateZ(radians(frameCount)); //6-3的概念
  translate(25,0,0);
  box(50,25,50);
  popMatrix();
}
float x = 0, y =0;
void mouseDragged(){
  x += mouseX - pmouseX;
  y += mouseY - pmouseY;
  println("x:" + x + "y:" + y);
}
