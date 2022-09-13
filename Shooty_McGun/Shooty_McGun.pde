import gifAnimation.*;





Environment Environment = new Environment();
Player Johnny = new Player();




Gif Player;
Gif Ground;
PImage Gun;
PImage Background;



void setup() {
  frameRate(60);
  //Environment
  PImage[] allFrames = Gif.getPImages(this, "Ground.gif");
  //Player
  PImage[] PlayerFrames = Gif.getPImages(this, "JohnnyGun.gif");
  Gun = loadImage("Gun.png");
  Background = loadImage("Background.png");
  size(1920, 1080);

  Ground = new Gif(this, "Ground.gif");
  Ground.play();

  Player = new Gif(this, "JohnnyGun.gif");
  Player.play();
}
void draw() {
  clear();
  background(255);
  Environment.display();
  Johnny.display();

  

}

void keyPressed() {
  Johnny.keyPressedPlayer();
}

void keyReleased() {
  Johnny.keyReleasedPlayer();
 
}
