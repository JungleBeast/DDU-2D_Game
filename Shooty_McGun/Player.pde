class Player extends Entity {

  int xposPlayer = 500;
  int yposPlayer = 735;
  PImage image;
  PVector position;
  float direction;
  PVector velocity;
  float jumpSpeed;
  float walkSpeed;
  float gravity = 5;
  float ground;



// Tegning af player, gun og aiming
  void display() {
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
      yposPlayer = yposPlayer - 100 ;
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
     yposPlayer = yposPlayer + 100; 
    }
   }

  
  
  void sub(PVector v) {
    x=x-v.x;
    y=y-v.y;
  }
}
