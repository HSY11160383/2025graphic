//week06-7 機械手臂-4
void setup(){
  size(500,800,P3D);
}
void draw(){
  background(255);
  translate(width/2, height/2);
  sphere(10);//中心點
  
  fill(252,131,77);
  pushMatrix();
  if(mousePressed && mouseButton==RIGHT) rotateY(radians(frameCount));//右旋轉
  if(mousePressed && mouseButton==RIGHT) rotateZ(radians(frameCount));
  translate(0,-100);
  box(50,200,25);
    pushMatrix();
    translate(0,-100);
    //if(mousePressed) 
    rotateZ(radians(frameCount));
    translate(100,0);
    box(200,50,25);//機械手臂一號 手肘部位
  
      pushMatrix();
        translate(100,0); //固定手臂一號
        rotateZ(radians(frameCount)); //把上面的改成自動轉動
        translate(25,0,0);
        box(50,25,50);
      popMatrix();
    popMatrix();      
popMatrix();    
}
float x = 0, y =0;
void mouseDragged(){
  x += mouseX - pmouseX;
  y += mouseY - pmouseY;
  println("x:" + x + "y:" + y);
}
