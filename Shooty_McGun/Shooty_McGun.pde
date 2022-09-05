Ground Floor = new Ground();
Player Johnny = new Player();



import gifAnimation.*;
Gif Player;
Gif Ground;
PImage Gun;

void setup(){
frameRate(60);
//Ground
PImage[] allFrames = Gif.getPImages(this,"Ground.gif");

//Player
PImage[] PlayerFrames = Gif.getPImages(this,"JohnnyGun.gif");
Gun = loadImage("Gun.png");
  
 size(1920,1080);
 
 Ground = new Gif(this, "Ground.gif");
 Ground.play();
 
 Player = new Gif(this, "JohnnyGun.gif");
 Player.play();

}
void draw(){
  clear();
Floor.display();
Johnny.display();

  
  
}
