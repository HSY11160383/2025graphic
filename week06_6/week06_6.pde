//week06-6 機械手臂-3
void setup(){
  size(500,500,P3D);
}
void draw(){
  background(255);
  translate(width/2, height/2);
  sphere(10);
  
  fill(252,131,77);
  pushMatrix();
  box(50,200,25);
    pushMatrix();
    translate(x,y);
    if(mousePressed) rotateZ(radians(frameCount));
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
