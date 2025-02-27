//week02-4 要描圖
PImage img;
void setup(){
  size(400,400);
  img=loadImage("0227.png");
}//記得把圖檔像上周一樣拉到程式裡
void draw(){
  background(img);
  fill(255,128);//半透明的色彩 白色 alpha值是128
  println(mouseX);//把mouseX的值 在下面小黑印出來
  rect(0,0,400,400);//畫超大的四邊形 全部蓋住
}
