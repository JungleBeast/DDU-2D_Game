import gifAnimation.*;

Environment Environment = new Environment();
Player Johnny = new Player();
<<<<<<< HEAD
Bullet cloneBullet = new Bullet();
=======
>>>>>>> e1d7ce9e04000fc90ac4ae7c4891ed32970ba9a3
Enemy Houndman = new Enemy();

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
float xposBullet;
float yposBullet;


void setup() {
  size(1920, 1080);
  frameRate(60);
  noStroke();
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
  Environment.display();
  Johnny.display();

<<<<<<< HEAD
  cloneBullet.updateShoot();
    cloneBullet.display();
=======
for(Bullet b : particles) {
  b.updateShoot();
  b.display();
}
>>>>>>> e1d7ce9e04000fc90ac4ae7c4891ed32970ba9a3

  Houndman.display();

}

void keyPressed() {
  Johnny.keyPressedPlayer();
}

void keyReleased() {
  Johnny.keyReleasedPlayer();
 
}


void mouseClicked(){
<<<<<<< HEAD
  cloneBullet.Shoot();
=======
  println(particles.size());
  Bullet b = new Bullet();
  b.Shoot();
  particles.add(b);
>>>>>>> e1d7ce9e04000fc90ac4ae7c4891ed32970ba9a3
}
