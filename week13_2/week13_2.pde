//week13-2 3D effect
//電腦圖學繪圖時，會設定camera得相關係數
import processing.video.*; 
Movie movie;
void setup(){
  size(600,400,P3D); //配上3D功能 
  movie = new Movie(this, "street.mov"); 
  movie.loop(); //迴圈撥放 解析度為720x480
}
void draw(){
  background(128);
  //https://processing.org/reference/camera_.html
  camera(mouseX, mouseY, 500, 360, 240, 0, 0, 1, 0);
  //很多參數 eyeX, eyeY, eyeZ, centerX, centerY, centerZ, upX, upY, upZ  
  //現在把影片中心點當主角
  if(movie.available())movie.read();
  image(movie,0 ,0);
}
