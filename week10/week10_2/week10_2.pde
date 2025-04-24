//week10-2
PImage postman,head,body;
void setup(){
  size(560,560);
 postman=loadImage("postman.png");
 head=loadImage("head.png");
 body=loadImage("body.png");
}
void draw(){
  background(#FFFFF2);
  image(postman,0,0);
  fill(255,0,255,128);
  rect(0,0,560,560);
  pushMatrix();
  translate(+236,-231);
  rotate(radians(mouseX));
  translate(-236,-231);
  image(head,0,0);
  popMatrix();
image(body,0,0);
}
