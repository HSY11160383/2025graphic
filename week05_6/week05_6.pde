//week05-6
//因為有很多移動、旋轉、大腦會混亂 所以用分階層做事
void setup(){
  size(400,400);
}
void draw(){
  background(204);
  
  pushMatrix();
  translate(width/2, height/2);
  rotate(radians(frameCount)*10);
  rect(-50,-5,100,10);
  popMatrix();
  
  pushMatrix();//要固定在左側 -100 
  translate(width/2-100, height/2);
  rotate(radians(frameCount)*10);
  rect(-50,-5,100,10);
  popMatrix(); 
//使用pushMatrix和popMatrix來固定 效果類似 大括號{}， 讓指令固定在兩者之間
}
