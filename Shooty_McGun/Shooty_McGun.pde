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

  PVector mouse = new PVector(mouseX, mouseY);
  PVector center = new PVector(650, 805);
  mouse.sub(center);
  translate(650, 805);
  line(0, 0, mouse.x, mouse.y);
}

void keyPressed() {
  Johnny.keyPressedPlayer();
  /*  s =  "key: " + keyCode;
   switch(keyCode) {
   case 37: // left 
   left = true;
   }*/
}

void keyReleased() {
  Johnny.keyReleasedPlayer();
  /*  s =  "key: " + keyCode;
   switch(keyCode) {
   case 37: // left 
   left = true;
   }*/
}
