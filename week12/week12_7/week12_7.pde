// week12_7_sound_intro_ingame_sword_monkey
import processing.sound.*;
SoundFile sndInGame, sndIntro, sndMonkey, sndSword;
void setup() {
  size(400, 400);
  sndInGame = new SoundFile(this, "In Game Music.mp3");
  sndIntro = new SoundFile(this, "Intro Song_Final.mp3");
  sndMonkey = new SoundFile(this, "Monkey 1.mp3");
  sndSword = new SoundFile(this, "sword slash.mp3");
  sndIntro.play(); // 播放開場簡介的音樂
}
boolean playingIntro = true;
void keyPressed() { // 按下空白鍵，會進入遊戲音樂
  if (playingIntro) { // 若在播「開場簡介」
    sndIntro.stop();      // 停止開場簡介的音樂
    sndInGame.play();     // 播放遊戲關卡的音樂
    playingIntro = false; // 現在沒播「開場簡介」
  } 
  else { // 若沒播「開場簡介」
    sndInGame.stop();     // 停止遊戲音樂
    sndIntro.play();      // 播放開場音樂
    playingIntro = true;
  }
}

void mousePressed() {
  if (mouseButton == LEFT)  sndSword.play();   // 左鍵點擊播放揮劍聲
  if (mouseButton == RIGHT) sndMonkey.play();  // 右鍵點擊播放猴子聲
}
