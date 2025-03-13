//week04-_04_rotateZ????
void setup(){
  size(400,400,P3D);
}
void draw(){
  background(128);
  translate(width/2,height/2);
  rotateZ(radians(mouseX));//上周的左右轉
  ellipse(0,0,100,150);
}
