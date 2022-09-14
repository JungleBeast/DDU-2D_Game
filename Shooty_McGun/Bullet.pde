class Bullet extends Entity{
  float xposBullet = 0;
  float yposBullet = 0;
  PVector v;
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
  
 void mousePressed(){
   v = PVector.fromAngle(0.1);
   xposBullet = xposBullet + v.x*2;
   yposBullet = yposBullet + v.y*2;
   
 }
  
  
}
