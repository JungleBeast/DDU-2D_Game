class Player extends Entity{
  
  int xposPlayer = 500;
  int yposPlayer = 735;
  

  void display(){
  image(Player, xposPlayer, yposPlayer); 
  image(Gun, 630, 780); 
  }
  
      void keyPressed() {
  if (key == 'd')  { xposPlayer = xposPlayer + 50 ; }
}

}
