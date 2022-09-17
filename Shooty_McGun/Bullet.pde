class Bullet extends Entity{

  
  Bullet(){
    BulletR = 20;
  }
  
  PVector v;
  PVector mouse;


  void display(){
    if(lifetime>0){
    pushMatrix();
  imageMode(CENTER);
  mouse = new PVector(mouseX - (xposPlayer + 150 ),mouseY - ( yposPlayer + 70));
  translate(xposPlayer + 150, yposPlayer + 70);
  rotate(mouse.heading());
    popMatrix();
    
    
   pushMatrix();
    translate(xposBullet, yposBullet);
    if(v!= null){
    rotate(v.heading());
    circle(0 + 50, 0, BulletR);
    image(TestBullet,0,0);
    }
    popMatrix();
    }
  imageMode(CORNER);
  }
  
 void Shoot(){
   xposBullet = Johnny.xposPlayer + 150;
   yposBullet = Johnny.yposPlayer + 70;
     mouse = new PVector(mouseX - (xposPlayer + 150 ),mouseY - ( yposPlayer + 70));
   v = mouse.copy();
   v.normalize();
   
 }
 
 void updateShoot(){
   if(v== null) return;
   xposBullet = xposBullet + v.x*30;
   yposBullet = yposBullet + v.y*30;  
   lifetime-=1;
 }
  
  
}
