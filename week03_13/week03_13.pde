//week03-13
void setup(){
  size(600,400,P3D);
}
void draw(){
  background(128);
  lights();
  pushMatrix();//備份矩陣
  sphere(100);
  popMatrix();//還原矩陣
  //有備份+還原矩陣就不會出錯
  pushMatrix();
  translate(100,100);
  sphere(100);
  popMatrix();
}
