//week04-11_sun_???
//google: processing sphere texture 可找到程式
PShape sun;
void setup(){
size(400,400,P3D);
sun = createShape(SPHERE,100);
PImage img = loadImage("moon.jpg");
sun.setTexture(img);
}
void draw(){
  background(0);
  translate(width/2,height/2);
  rotateY(radians(frameCount));
  shape(sun);
}
