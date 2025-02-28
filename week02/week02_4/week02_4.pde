PImage img;
void setup(){
  size(400,400);
  img = loadImage("0227.png");
}//記得把圖檔拉入程式中
void draw(){
  background(img);
  fill(255,200);//半透明的白色,alpha值為128
  rect(0,0,400,400);
  stroke(0,100,200);//設定顏色
  if(mousePressed) line(mouseX,mouseY,pmouseX,pmouseY);
}
