import gifAnimation.*;

Environment Environment = new Environment();
Player Johnny = new Player();
Bullet b = new Bullet();
//Bullet cloneBullet = new Bullet();
Enemy Houndman = new Enemy();

ArrayList<Bullet> particles = new ArrayList<Bullet>();


//wa
Gif Player;
Gif Ground;
//What
//Enemies
Gif Enemy;
//This shit
PImage Gun;
PImage Background;
PImage TestBullet;

float BulletTimer = 20;

void setup() {
  size(1920, 1080);
  frameRate(60);
  noStroke();
  //noFill();
  //Environment
  PImage[] allFrames = Gif.getPImages(this, "Ground.gif");
  //Player
  PImage[] PlayerFrames = Gif.getPImages(this, "JohnnyGun.gif");
  Gun = loadImage("Gun.png");
  Background = loadImage("Background.png");
  TestBullet = loadImage("TestBullet.png");
 
 //Enemies
  PImage[]HoundFrames = Gif.getPImages(this, "HoundMan.gif");
 
  size(1920, 1080);

  Ground = new Gif(this, "Ground.gif");
  Ground.play();

  Player = new Gif(this, "JohnnyGun.gif");
  Player.play();
  
  //Enemies
  Enemy = new Gif(this, "HoundMan.gif");
  Enemy.play();
}
void draw() {
  clear();
  background(255);
  //Timer
  if(BulletTimer<20){
  BulletTimer=BulletTimer + 2;
  }
  Environment.display();
  Johnny.display();

for(Bullet b : particles) {
  b.updateShoot();
  b.display();
}
  //cloneBullet.updateShoot();
   // cloneBullet.display();

  Houndman.display();
  Houndman.update();

}

void keyPressed() {
  Johnny.keyPressedPlayer();
}

void keyReleased() {
  Johnny.keyReleasedPlayer();
 
}


void mouseClicked(){
  if(BulletTimer >= 20){
  println(particles.size());
  Bullet b = new Bullet();
  b.Shoot();
  particles.add(b);
  BulletTimer = 0;
  }
}
