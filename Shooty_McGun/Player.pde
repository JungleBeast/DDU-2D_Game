class Player extends Entity {
PImage Health5; PImage Health4;
PImage Health3; PImage Health2;
PImage Health1; PImage Health0;

  PVector position;
  float direction;
  PVector velocity;
  float jumpSpeed;
  float walkSpeed;
  float gravity = 0.5;
  float ground;
//Stats
Player(){

  PlayerR = 200;
  
}

// Tegning af player, gun og aiming
  void display() {
    if(lifetime>0){
Health5 = loadImage("5.png");
Health4 = loadImage("4.png");
Health3 = loadImage("3.png");
Health2 = loadImage("2.png");
Health1 = loadImage("1.png");
Health0 = loadImage("0.png");
    
    
    if(yposPlayer < 680){
      ySpeedPlayer = ySpeedPlayer + gravity;
      yposPlayer = yposPlayer + (int)ySpeedPlayer;
    }else{
      yposPlayer = 680;
    }
    
    circle(xposPlayer + 80, yposPlayer + 120, PlayerR);
    image(Player, xposPlayer, yposPlayer); 
    
    pushMatrix();
    PVector mouse = new PVector(mouseX - (xposPlayer + 150 ),mouseY - ( yposPlayer + 70));
    translate(xposPlayer + 150, yposPlayer + 70);
    rotate(mouse.heading());
    imageMode(CENTER);
    image(Gun, 0,0); 
    popMatrix();
    
    imageMode(CORNER);
    
    if(PlayerHP == 5){
    image(Health5,0,0);
    }
    
    if(PlayerHP == 4){
    image(Health3,0,0);
    }
    
    if(PlayerHP == 3){
    image(Health3,0,0);
    }
    
    if(PlayerHP == 2){
    image(Health2,0,0);
    }
    
    if(PlayerHP == 1){
    image(Health1,0,0);
    }
    
    if(PlayerHP == 0){
    image(Health0,0,0);
    }
    }
  }


// Movement
  void keyPressedPlayer() {
  
    if (key == ' ') { 
      yposPlayer = yposPlayer - 1 ;
      ySpeedPlayer = -15;
    }
    if (key == 's') { 
      yposPlayer = yposPlayer + 20 ;
    
    }
  }
  
   void keyReleasedPlayer(){
    if (key == 'w') { 
    }
   }
          void update(){
         
         for(int i = Hounds.size() - 1; i>=0 ; i-- ){
           Enemy Houndman = Hounds.get(i);
           if(dist(xposPlayer, yposPlayer, Houndman.xposEnemy, Houndman.yposEnemy) < 200){
             PlayerHP = PlayerHP-1;
           } 
          } 
          
    if(PlayerHP == 0){
      lifetime = -1;}   
 }
}
