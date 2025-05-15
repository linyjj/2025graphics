//week13-6
import processing.video.*; // 要使用 Movie 需要匯入 video 函式庫
Movie movie;
PImage img;
void setup(){
  size(400, 400, P3D);
  movie = new Movie(this, "street.mov");// 影片檔案，解析度為 720x480
  movie.loop();//循環播放
  img = loadImage("chessboard.png");
  textureMode(NORMAL);
}
void draw(){
  if (movie.available()) movie.read();// 有畫面，就讀入畫面
  beginShape();
    texture(img);
    vertex(0, 0, 0, 0, 0);// x, y, z, u, v
    vertex(400, 0, 0, 1, 0);
    vertex(400, 400, 0, 1, 1);
    vertex(0, 400, 0, 0, 1);
  endShape();
  image(movie, 0, 0, 360, 240);
}
