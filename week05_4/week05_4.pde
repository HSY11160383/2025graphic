//week05-4
//rotate和translate的差異
void setup(){
  size(400,400);
}
void draw(){
  background(204);
  translate(mouseX,mouseY); //跟著滑鼠移動
  rotate(radians(frameCount)); //1秒轉60格frame AKA 60度
  rect(-50,-5,100,10); //生成一個寬度100的棒子 位置在左上
}

//上面兩行(translate & rect) 如果上下顛倒 會無法使用
