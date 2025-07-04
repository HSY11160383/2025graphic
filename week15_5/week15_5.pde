//week15-5

PImage postman, head, body, uparm1, hand1, uparm2, hand2, foot1, foot2;
void setup(){
  size(560,560);
  postman = loadImage("postman.png");
  head = loadImage("head.png");
  body = loadImage("body.png");
  uparm1 = loadImage("uparm1.png");
  uparm2 = loadImage("uparm2.png");
  hand1 = loadImage("hand1.png");
  hand2 = loadImage("hand2.png");
  foot1 = loadImage("foot1.png");
  foot2 = loadImage("foot2.png");
}
float [] angleX = new float [10];
float [] angleY = new float [10]; 
int ID = 0;
ArrayList<String> lines = new ArrayList<String>();
void keyPressed(){
  if(key=='s'){
    String now = "";
    for(int i=0; i<10; i++){
      now += angleX[i] + " ";
      now += angleY[i] + " ";
    }
    lines.add(now);
    String [] arr = new String[lines.size()];
    lines.toArray(arr);
    saveStrings("angles.txt", arr);
    println("現在存檔:" + now);
  }
  if(key=='r'){
    String [] file = loadStrings("angles.txt");
    if(file != null){
      for(int i=0; i<file.length; i++){
        lines.add(file[i]);
        println("現在讀檔:" + file[i]);
      }
    }
  }
  if(key == 'p')playing = !playing;
  
  if(key=='1') ID = 1; // 左邊臂
  if(key=='2') ID = 2; // 左邊手
  if(key=='3') ID = 3; // 右邊臂
  if(key=='4') ID = 4; // 右邊手
  if(key=='5') ID = 5; // 左腳
  if(key=='6') ID = 6; // 右腳
  if(key=='0') ID = 0; // 頭
}
boolean playing = false;
float [] posX = {+236, +185, +116, 290, 357, 220, 260};
float [] posY = {+231, +261, +265, 252, 259, 375, 372};
float [] posAngle = {90, }
void mouseDragged(){
  float dx = mouseX - 236, dy = mouseY -231;
  angleX[0] = degrees(atan2(dy, dx)) +90;
  
  //angleX[ID] += mouseX - pmouseX;
 // angleY[ID] += mouseY - pmouseY;
}
int R = 0;
void myInterpolate(){
  if(lines.size()>=2){
    float alpha = (frameCount%30)/30.0;
    if(alpha==0.0) R = (R+1)%lines.size();
    int R2 = (R+1)%lines.size();
    float [] oldAngle = float(split(lines.get(R), ' '));
    float [] newAngle = float(split(lines.get(R2),' '));
    for(int i=0; i<10; i++){
      angleX[i] = oldAngle[i*2+0]*(1-alpha) + newAngle[i*2+0]*alpha;
      angleY[i] = oldAngle[i*2+1]*(1-alpha) + newAngle[i*2+1]*alpha;
    }
  }
}
void draw(){
  background(#FFFFF2);
  if(playing) myInterpolate();
  image (body,0 ,0);
  
  pushMatrix();
    translate(2200, -375);
    rotate(radians(angleX[1]));
    translate(-220,-375);
    image(foot1,0,0);
  popMatrix(); //左腳
  
  pushMatrix();
    translate(260,372);
    rotate(radians(angleX[2]));
    translate(-260,-372);
    image(foot2,0,0);
  popMatrix(); //右腳
  
   pushMatrix(); // 要畫左邊的上手臂、手肘
    translate(+185, +261);
    rotate(radians(angleX[3]));
    translate(-185, -261);
    image(uparm1, 0, 0); // 上手臂
    pushMatrix();
      translate(+116, +265);
      rotate(radians(angleX[4]));
      translate(-116, -265);
      image(hand1, 0, 0);
    popMatrix();
  popMatrix();
  
  pushMatrix(); // 要畫右邊的上手臂、手肘
    translate(290, 262);
    rotate(radians(angleX[5]));
    translate(-290, -262);
    image(uparm2, 0, 0);
    pushMatrix();
      translate(357, 259);
      rotate(radians(angleX[6]));
      translate(-357, -259);
      image(hand2, 0, 0);
    popMatrix();
  popMatrix();
  
  pushMatrix();
    translate(+236, +231); // 再放回去正確的位置
    //rotate(radians(angle[0]));
    translate(-236, -231); // 把頭的旋轉中心, 放到(0,0)
    image(head, 0, 0); // 再畫頭
  popMatrix();
  image(body, 0, 0);
}
