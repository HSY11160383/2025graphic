//week03-6
void setup(){
  size(400,400);
}
float startX = 10, startY = 10;
float stopX = 390, stopY = 290;
void draw(){
  ellipse(startX, startY, 10,10);
  ellipse(stopX, stopY, 10, 10);
  float midX = lerp(startX, stopX, frameCount / 200.0);
  float midY = lerp(startY, stopY, frameCount / 200.0);
  ellipse(midX, midY, 10, 10);
}
