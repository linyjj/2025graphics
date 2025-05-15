//week13-2-camera-movie-center-up
//電腦圖學在繪圖時 會設定camera的相關係數
import processing.video.*;//要使用影片外掛
Movie movie;
void setup(){
  size(720,480,P3D);//要記得加上p3d才能有opengl 3d功能
  movie=new Movie(this,"street.mov");
  movie.loop();
}
void draw(){
  background(128);
  camera(mouseX,mouseY,500,360,240,0,0,1,0);
  //很多參數
  //現在把影片中心點當主角
  if(movie.available())movie.read();
  image(movie,0,0);
}
