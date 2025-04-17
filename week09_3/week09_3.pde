//week03
PShape uparml,upuparm1;
void setup(){
    size(400,400,P3D);
    uparm1=loadShape("uparml.obj");
    upuparm1=loadShape("upuparm1.obj");
  }
void draw((){
    background(204);
    translate(200,300);
    sphere(3);
    
    scale(10,-10,10);
    
  shape(upuparm1,0,0);
  pushMatrix();
    translate(-4.1,19,9);
    rotateX(radians(mouseY));
    translate(4.1,19,9);
  //println(mouse./10.0,-mouseY/10.0);
  sphere(uparml,0,0);
popMatriix();
  }
