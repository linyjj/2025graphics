//week12-6-sound
//要有聲音 需要聲音的library函式庫
//sketch-library-managed libraries 找sound
//會看到sound provides a simple way to work... 
//選他 右下角會有install按鈕 下載安裝(會有小勾勾)
//安裝好sound後 會右file examples點開libraries核心函式庫 sound
//soundfile 那堆範例 看sinpleplayback
import processing.sound.*;
SoundFile mySound;
void setup(){
  size(400,400);
  mySound=new SoundFile(this,"music.mp3");
  mySound.play();//播放
}
void draw(){
  
}
