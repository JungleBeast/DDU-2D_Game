class Enemy extends Entity{

  boolean BulletHit  = false;
  
  //Stats
  Enemy(){
  EnemyR =  150;
  }
  
  void display(){
    if(lifetime>0){
    imageMode(CENTER);
    circle(xposEnemy, yposEnemy, EnemyR);
    image(Enemy, xposEnemy, yposEnemy);
     xposEnemy = xposEnemy -8;
     imageMode(CORNER);
    }
  }
  
       void update(){
         
         for(int i = particles.size() - 1; i>=0 ; i-- ){
           Bullet b = particles.get(i);
           println("afstand til kuglen er!" + dist(xposEnemy, yposEnemy, b.xposBullet, b.yposBullet));
           if(dist(xposEnemy, yposEnemy, b.xposBullet, b.yposBullet) < 100){
             println("Hit HoundMan!!!");
             particles.remove(b);
             HoundHP = HoundHP-1;
           } 
          }  
    if(HoundHP == 0){
      lifetime = -1;}
      
    }
  
}
