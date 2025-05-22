//week14-1-PFont
size(300,300);
textSize(50);
text("Hello",10,50);//預設字型
PFont font=createFont("Times New Roman",50);
textFont(font);//換字型
text("Hello",10,100);//放下面一點
//print(PFont.list());
//改用for迴圈 把全部的字型印出來
for(String name:PFont.list()) println(name);
