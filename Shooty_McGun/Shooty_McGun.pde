import gifAnimation.*;





Environment Environment = new Environment();
Player Johnny = new Player();
Bullet cloneBullet = new Bullet();



Gif Player;
Gif Ground;

//Enemies
Gif HoundMan;

PImage Gun;
PImage Background;
PImage TestBullet;
float xposBullet;
float yposBullet;

void setup() {
  size(1920, 1080);
  
  frameRate(60);
  //Environment
  PImage[] allFrames = Gif.getPImages(this, "Ground.gif");
  //Player
  PImage[] PlayerFrames = Gif.getPImages(this, "JohnnyGun.gif");
  Gun = loadImage("Gun.png");
  //Enemies
  PImage[]HoundFrames = Gif.getPImages(this, "HoundMan.gif");
  
 Background = loadImage("Background.png");
 TestBullet = loadImage("TestBullet.png");
 
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
  cloneBullet.display();
  cloneBullet.Shoot();
  Enemy.display();

}

void keyPressed() {
  Johnny.keyPressedPlayer();
}

void keyReleased() {
  Johnny.keyReleasedPlayer();
 
}
