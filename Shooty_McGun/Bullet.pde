class Bullet extends Entity{

  PVector v;
  PVector mouse;
  void display(){
    
    pushMatrix();
  imageMode(CENTER);
  mouse = new PVector(mouseX - (xposPlayer + 150 ),mouseY - ( yposPlayer + 70));
  translate(xposPlayer + 150, yposPlayer + 70);
  rotate(mouse.heading());
  imageMode(CORNER);
    popMatrix();
    
      image(TestBullet,xposPlayer+ xposBullet + 150,yposBullet + yposPlayer +  70); 
   pushMatrix();
    translate(xposPlayer + 150, yposPlayer + 70);
      rotate(mouse.heading());
    popMatrix();
  
  }
  
 void Shoot(){
   v = mouse.copy();
   v.normalize();
 }
 
 void updateShoot(){
   if(v== null) return;
   xposBullet = xposBullet + v.x*2;
   yposBullet = yposBullet + v.y*2;  
 }
  
  
}
