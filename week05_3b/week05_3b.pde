//week05-3-b
void setup(){
  size(400,400);
}
void draw(){
  background(128);
  line(200,200,400,200);
  line(200,200, mouseX, mouseY);
  float dx = mouseX-200, dy = mouseY-200;
  float a = atan2(dy, dx); //找到arc弧的 radians
  if(a<0) arc(200,200,200,200,a,0, PIE); //把算出的 arc radians 拿來用
  else arc(200,200,200,200,0,a,PIE);//變成360度都可以
  textSize(30);
  text("radians" + a, 100,100); //dadians 弧度
  text("degress" + degrees(a), 100, 130); //degrees 度
}
