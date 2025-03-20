//week05-5
void setup(){
  size(400,400);
}
void draw(){
  background(204);
  rotate(radians(frameCount)*10);
  translate(mouseX,mouseY);
  rect(-50,-5,100,10);
}
