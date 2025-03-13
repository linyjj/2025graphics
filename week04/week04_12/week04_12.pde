//week04_14_sun_earth_moon
PShape earth;
PShape moon;
PShape sun;
void setup(){
  size(400,400,P3D);
  sun = createShape(SPHERE,50);
  PImage img = loadImage("sun.jpg");
  sun.setTexture(img);
  earth = createShape(SPHERE,30);
  img = loadImage("earth.jpg");
  earth.setTexture(img);
  moon = createShape(SPHERE,10);
  img = loadImage("moon.jpg");
  moon.setTexture(img);
}
void draw(){
  background(128);
  translate(width/2,height/2);
  //shape(50);//太陽
  shape(sun);
  rotateY(radians(frameCount));
 pushMatrix();
   translate(150,0);
   rotateY(radians(frameCount));
  //sphere(30);//地球
  shape(earth);
  pushMatrix();
   translate(50,0);
   rotateY(radians(frameCount));
  //sphere(10);//月球
  shape(moon);
 popMatrix();
popMatrix();
}
