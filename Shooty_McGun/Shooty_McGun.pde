import gifAnimation.*;





Environment Environment = new Environment();
Player Johnny = new Player();


Gif Player;
Gif Ground;
PImage Gun;
PImage Background;
PImage Background2;



void setup(){
frameRate(60);
//Environment
PImage[] allFrames = Gif.getPImages(this,"Ground.gif");
Background2 = loadImage("Background2.png");
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
  background(255);
Environment.display();
Johnny.display();

PVector mouse = new PVector(mouseX,mouseY);
PVector center = new PVector(650, 805);
mouse.sub(center);
translate(650, 805);
line(0,0, mouse.x,mouse.y);
  
  
}
