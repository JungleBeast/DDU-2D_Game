class Enemy extends Entity{

  //Stats
  Enemy(){
    w  =  150;
    h  =  100;
  }
  
  void display(){
    imageMode(CENTER);
    rect(xposEnemy - 75, yposEnemy - 50, w , h);
    image(Enemy, xposEnemy, yposEnemy);
     xposEnemy = xposEnemy -4;
     imageMode(CORNER);
     if(){
       
  }
  
  
}
