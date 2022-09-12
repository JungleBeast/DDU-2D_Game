

class Player extends Entity {

  int xposPlayer = 500;
  int yposPlayer = 735;


  void display() {
    image(Player, xposPlayer, yposPlayer); 
    imageMode(CENTER);
    image(Gun, xposPlayer + 150, yposPlayer + 70); 
    imageMode(CORNER);
  }

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
