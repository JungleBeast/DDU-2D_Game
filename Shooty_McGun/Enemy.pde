class Enemy extends Entity{
  
  
  
  void display(){
    image(HoundMan, xPosEnemy, yPosEnemy);
     xPosEnemy = xPosEnemy -1;
  }
  
}
