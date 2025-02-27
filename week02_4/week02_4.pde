//week02-4
PImage img;
void setup(){
  size(400,400);
  img = loadImage("cute.jpg");
}  
void draw(){
  background(img);
  fill(255,mouseX);
  println(mouseX);
  rect(0,0,400,400);
}
