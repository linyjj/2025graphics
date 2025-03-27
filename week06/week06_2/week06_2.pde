//week06-2 再加一個移動 把物體放到轉盤的中心
void setup(){
  size(500,500,P3D);
}
void draw(){
  background(142);
  ellipse(width/2,height/2,200,200);
  translate(width/2,height/2);
  pushMatrix();
  if(mousePressed) rotateZ(radians(frameCount));//要按滑鼠才會轉
  translate(-50,0,0);
  box(100,30,30);
  popMatrix();
}
