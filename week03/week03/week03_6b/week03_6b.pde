//week03-6b-lerp
void setup(){
  size(400,400); 
}
float startX=10,startY=10;
float stopX=390,stopY=290;
void draw(){
  background(255);
  ellipse(startX,startY,10,10);
  ellipse(stopX,stopY,10,10);
  //lerp()可以做內差 要給他0.0~1.0之間的數
  float midX=lerp(startX,stopX,frameCount/200.0);
  float midY=lerp(startY,stopY,frameCount/200.0);
  //frameCount 是第幾個frame 一小時=六十分 一分=六十秒 
  ellipse(midX,midY,10,10);
}
