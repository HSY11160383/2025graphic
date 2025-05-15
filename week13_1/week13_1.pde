//week13-1
//Sketch Library Manage Librarics... 安裝Video
//教學在https://processing.org/tutorials/video
import processing.video.*; //java用外掛的匯入
//Capture video; //有視訊鏡頭的用這個版本
Movie movie; //沒鏡頭就用這個
void setup(){
  size(640,480);
  //video = new Capture(this, 640, 480);
  //video.start(); //打開視訊
  movie = new Movie(this, "street.mov");
  movie.loop();
}
void draw(){
  //if (video.available()) video.read();
  //image(video, 0, 0);
  if (movie.available()) movie.read();
  image(movie, 0, 0);
}
