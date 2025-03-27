//week06-2 中心改新圖
void setup(){
  size(500,500, P3D);
}

void draw(){
  background(142);
  ellipse(width/2, height/2, 200, 200);
  
  translate(width/2, height/2); //至中用
  pushMatrix();
  
  if(mousePressed) rotateZ(radians(frameCount)); //按一下才會轉
  translate(-50,0,0); //把box移到左方 讓一邊成為圓心點
  box(100,30,30);
  popMatrix();
}
