class Bullet extends Entity{

  PVector v;
  PVector mouse;
  float xposBullet;
float yposBullet;

  void display(){
    
    pushMatrix();
  imageMode(CENTER);
  mouse = new PVector(mouseX - (xposPlayer + 150 ),mouseY - ( yposPlayer + 70));
  translate(xposPlayer + 150, yposPlayer + 70);
  rotate(mouse.heading());
    popMatrix();
    
    lifeSpan = 200;
    
   pushMatrix();
    translate(xposPlayer+ xposBullet + 150, yposBullet + yposPlayer +  70);
    if(v!= null){
    rotate(v.heading());
    image(TestBullet,0,0);
    }
    popMatrix();
    
  imageMode(CORNER);
  }
  
 void Shoot(){
     mouse = new PVector(mouseX - (xposPlayer + 150 ),mouseY - ( yposPlayer + 70));

   v = mouse.copy();
   v.normalize();
 }
 
 void updateShoot(){
   if(v== null) return;
   xposBullet = xposBullet + v.x*20;
   yposBullet = yposBullet + v.y*20;  
   lifeSpan -= 10;
 }
  
  
}
