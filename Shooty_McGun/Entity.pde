class Entity{
float x;
float y;

float xSpeed = -5;

float xPos = 1920;
float yPos = 680;

float left;
float right;
float up;
float down;

  
void move(){
 rect(xPos, yPos, 50,50);
 
 xPos = xPos + xSpeed;

  
}
}
