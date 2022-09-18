import gifAnimation.*;

Environment Environment = new Environment();
Player Johnny = new Player();
Bullet b = new Bullet();
Enemy Houndman = new Enemy();

ArrayList<Bullet> particles = new ArrayList<Bullet>();
ArrayList<Enemy> Hounds = new ArrayList <Enemy>();

//Gifs
Gif Player;
Gif Ground;
Gif Enemy;

//Images
PImage Gun;
PImage Background;
PImage TestBullet;

//Timers
float EnemyTimer  = 0;
float BulletTimer = 5;


void setup() {
  size(1920, 1080);
  frameRate(60);
  noStroke();
 // noFill();
  
  PImage[] allFrames = Gif.getPImages(this, "Ground.gif");
  PImage[] PlayerFrames = Gif.getPImages(this, "JohnnyGun.gif");
  PImage[]HoundFrames = Gif.getPImages(this, "HoundMan.gif");
  
  Gun = loadImage("Gun.png");
  Background = loadImage("Background.png");
  TestBullet = loadImage("TestBullet.png");
 
  size(1920, 1080);

  Ground = new Gif(this, "Ground.gif");
  Ground.play();
  Player = new Gif(this, "JohnnyGun.gif");
  Player.play();
  Enemy = new Gif(this, "HoundMan.gif");
  Enemy.play();
}

void draw() {
clear();
  
   EnemyTimer++; 
  
  background(255);
  
  //Timer
  if(BulletTimer<20){
  BulletTimer=BulletTimer + 2;
  }
  
if(EnemyTimer<40){
  EnemyTimer = EnemyTimer + 1;
  }
  
  Environment.display();
  Johnny.display();

for(Bullet b : particles) {
  b.updateShoot();
  b.display();
}

if(EnemyTimer >= 3*60){
  Houndman.display();
  Houndman.update();
}

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
