class Bullet extends Entity{

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
    translate(xposPlayer+ xposBullet + 150, yposBullet + yposPlayer +  70);
    if(v!= null){
    rotate(v.heading());
    rect(0 + 50, 0 - 10, 20,20);
    image(TestBullet,0,0);
    }
    popMatrix();
    }
  imageMode(CORNER);
  }
  
 void Shoot(){
   xposPlayer = Johnny.xposPlayer;
   yposPlayer = Johnny.yposPlayer;
     mouse = new PVector(mouseX - (xposPlayer + 150 ),mouseY - ( yposPlayer + 70));

   v = mouse.copy();
   v.normalize();
 }
 
 void updateShoot(){
   if(v== null) return;
  // image(TestBullet,xposPlayer+ xposBullet + 150,yposBullet + yposPlayer +  70); 
   xposBullet = xposBullet + v.x*25;
   yposBullet = yposBullet + v.y*25;  
   lifetime-=1;
 }
  
  
}
