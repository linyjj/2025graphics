//week05-1b-iluvu
size(300,300);//大小300*300
stroke(255,0,0);//紅色的線條
translate(width/2,height/2);
for(int xx=-150;xx<150;xx++){//大x 0...300
  for(int yy=-150;yy<150;yy++){//大y 0...300
    float x=xx/100.0;//減一半 除100
    float y=-yy/100.0;
    //0...300變-150..+150變-1.5~+1.5
    float d=x*x+y*y-1;
    if(d*d*d-x*x*y*y*y<0) point(xx,yy);
  }
}
