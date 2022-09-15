class Enemy extends Entity{
  
  
  
  void display(){
    imageMode(CENTER);
    rect(xPosEnemy - 75, yPosEnemy - 50, HitBoxX + 75, HitBoxY + 50);
    image(Enemy, xPosEnemy, yPosEnemy);
     xPosEnemy = xPosEnemy -4;
     imageMode(CORNER);
  }
  
}
