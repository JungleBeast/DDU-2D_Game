class Enemy extends Entity{

  boolean BulletHit  = false;
  
  //Stats
  Enemy(){
  EnemyR =  150;
  }
  
  void display(){
    if(lifetime>0){
    imageMode(CENTER);
    circle(Houndman.xposEnemy, Houndman.yposEnemy, EnemyR);
    image(Enemy, Houndman.xposEnemy, Houndman.yposEnemy);
     xposEnemy = xposEnemy -8;
     imageMode(CORNER);
    }
  }
  
       void update(){
         
         for(int i = particles.size() - 1; i>=0 ; i-- ){
           Bullet b = particles.get(i);
           if(dist(xposEnemy, yposEnemy, b.xposBullet, b.yposBullet) < 100){  
             particles.remove(b);
             HoundDmg.play();
             HoundHP = HoundHP-1;
           } 
          }  
    if(HoundHP == 0){
      EnemyDead = true;
      lifetime = -1;}
 }   
 void updateDeath(){
   if(EnemyDead = true){
      HoundDeath.play();
      lifetime-=1;
  }
 }
}
