import gifAnimation.*;
Gif Player;
Gif Ground;

void setup(){

//Ground
PImage[] allFrames = Gif.getPImages(this,"Ground.gif");

//Player
PImage[] PlayerFrames = Gif.getPImages(this,"JohnnyGun.gif");
  
 fullScreen();
 
 Ground = new Gif(this, "Ground.gif");
 Ground.play();
 
 Player = new Gif(this, "JohnnyGun.gif");
 Player.play();
  
  wobwob
}
void draw(){
  clear();
 image(Player, 500, 840);
 image(Ground, 0, 1000);
  
  
  
}
