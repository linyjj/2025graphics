//week02-7 想要把畫出來的座標變成我們的程式碼
ArrayList<Integer>x,y;
ArrayList<ArrayList<Integer>>xx=new ArrayList<ArrayList<Integer>>();
ArrayList<ArrayList<Integer>>yy=new ArrayList<ArrayList<Integer>>();
PImage img;
void setup(){
  size(400,400);
  img=loadImage("0227.png");//每次新的檔案都要把圖拉進來
}//記得把圖檔像上周一樣拉到程式裡
void draw(){
  background(img);
  fill(255,200);//半透明的色彩 白色 alpha值是128
  //println(mouseX);//把mouseX的值 在下面小黑印出來
  rect(0,0,400,400);//畫超大的四邊形 全部蓋住
//上面是week02-4 下面用迴圈 從資料結構取出來
  for(int I=0;I<xx.size();I++){
    ArrayList<Integer>x=xx.get(I);
    ArrayList<Integer>y=yy.get(I);
    println("beginShape();");
    for(int i=1;i<x.size();i++){
      line(x.get(i),y.get(i),x.get(i-1),y.get(i-1));
     }
     println("endShape();");
  }
}
void keyPressed(){//小心注音輸入法會卡住按鍵 要用英文輸入
  if(key=='s'||key=='S'){
    for(int I=0;I<xx.size();I++){
      ArrayList<Integer>x=xx.get(I);
      ArrayList<Integer>y=yy.get(I);
      for(int i=1;i<x.size();i++){
        println("vertex("+x.get(i)+","+y.get(i)+");");
      }//改在keyPressed()按下s或S時 再全部印
    }
  }
}
void mouseDragged(){
  //println("vertex(mouseX,moouseY);");
  //println("vertex("+mouseX+","+mouseY+");");不要在這裡印
  x.add(mouseX);
  y.add(mouseY);
}
void mousePressed(){//滑鼠按下去時 建新的資料結構
  x=new ArrayList<Integer>(); xx.add(x);
  y=new ArrayList<Integer>(); yy.add(y);
}
