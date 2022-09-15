class Player extends Entity {


  PVector position;
  float direction;
  PVector velocity;
  float jumpSpeed;
  float walkSpeed;
  float gravity = 0.2;
  float ground;


// Tegning af player, gun og aiming
  void display() {
    
    if(yposPlayer < 680){
      ySpeedPlayer = ySpeedPlayer + gravity;
      yposPlayer = yposPlayer + (int)ySpeedPlayer;
    }else{
      yposPlayer = 680;
    }
    
    
    image(Player, xposPlayer, yposPlayer); 
    
    pushMatrix();
    PVector mouse = new PVector(mouseX - (xposPlayer + 150 ),mouseY - ( yposPlayer + 70));
    translate(xposPlayer + 150, yposPlayer + 70);
    rotate(mouse.heading());
    imageMode(CENTER);
    image(Gun, 0,0); 
    popMatrix();
    
    imageMode(CORNER);
  }


// Movement
  void keyPressedPlayer() {
    if (key == 'd') { 
      xposPlayer = xposPlayer + 50 ;
    }
    if (key == 'w') { 
      yposPlayer = yposPlayer - 1 ;
      ySpeedPlayer = -10;
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
