class Enemy extends Entity{
  
  
  
  void display(){
    image(Enemy, xPosEnemy, yPosEnemy);
     xPosEnemy = xPosEnemy -4;
  }
  
}
