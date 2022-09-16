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
  w = 100;
  h = 150;
}

// Tegning af player, gun og aiming
  void display() {
    
    if(yposPlayer < 680){
      ySpeedPlayer = ySpeedPlayer + gravity;
      yposPlayer = yposPlayer + (int)ySpeedPlayer;
    }else{
      yposPlayer = 680;
    }
    
    rect(xposPlayer + 40, yposPlayer + 50, w, h);
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


// Movement
  void keyPressedPlayer() {
    if (key == 'd') { 
      xposPlayer = xposPlayer + 50 ;
    }
    if (key == ' ') { 
      yposPlayer = yposPlayer - 1 ;
      ySpeedPlayer = -15;
    }
    if (key == 'a') { 
      xposPlayer = xposPlayer - 50 ;
    }
    if (key == 's') { 
      yposPlayer = yposPlayer + 20 ;
    }
  }
  
   void keyReleasedPlayer(){
    if (key == 'w') {
     //yposPlayer = yposPlayer + 100; 
    }
   }

}
