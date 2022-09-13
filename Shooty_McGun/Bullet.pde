class Bullet extends Entity{
  int xposBullet = 0;
  int yposBullet = 0;
  
  void display(){
    
    pushMatrix();
    imageMode(CENTER);
  PVector mouse = new PVector(mouseX - (xposPlayer + 150 ),mouseY - ( yposPlayer + 70));
  translate(xposPlayer + 150, yposPlayer + 70);
  rotate(mouse.heading());
  image(TestBullet,xposBullet,yposBullet); 
  imageMode(CORNER);
  popMatrix();
  
  
  }
  
  
}
