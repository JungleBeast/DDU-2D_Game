

class Player extends Entity{
  
  int xposPlayer = 500;
  int yposPlayer = 735;
  

  void display(){
  image(Player, xposPlayer, yposPlayer); 
  imageMode(CENTER);
  image(Gun, 650, 805); 
  imageMode(CORNER);
  }
  
      void keyPressed() {
  if (key == 'd')  { xposPlayer = xposPlayer + 50 ; }
}
void sub(PVector v) {
  x=x-v.x;
  y=y-v.y;
}
}
