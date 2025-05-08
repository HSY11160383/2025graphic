//week12-6
//要有聲音 需要聲音的Library 函式庫 (mp3, wav, wma)
//Sketch, Library - Managed Libraryies 找 sound
//會看到 Sound | Provides a simple way to work with audio
//選他 右下角 Install 下載安裝
//安裝好 Sound後, 會有Files - Examples 點開 Libraries 核心庫
//Soundfiles 那堆範例 看SimplePlayback 簡單撥放音樂的範例
import processing. sound. *;
SoundFile mySound;
void setup(){
  size(400,400);
  mySound = newSoundFile(this, "music.mp3");
  mySound.play();
}
void draw(){ //記得要有個空的 dra()函式
  
}
