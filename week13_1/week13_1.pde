import processing.video.*;
//week13-1
//java使用外掛的匯入
//Capture video;//有視訊鏡頭的用這格版本
Movie movie;//沒有鏡頭用這個版本
void setup(){
  size(640,480);
  //video=new Capture(this,640,480);
  //video.start();
  movie=new Movie(this,"street.mov");
  movie.loop();
}
void draw(){
  //if(video.available()) video.read();
  //image(video,0,0);//若沒有視訊就註解掉
  if(movie.available()) movie.read();
  image(movie,0,0);
}
