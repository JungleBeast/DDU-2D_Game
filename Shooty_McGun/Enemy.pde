class Enemy extends Entity{
  

  void move(){
    xPosEnemy = xPosEnemy -1;
    
    
    
  }
  void display(){
    image(HoundMan, xPosEnemy, yPosEnemy);
    
  }
  
}
