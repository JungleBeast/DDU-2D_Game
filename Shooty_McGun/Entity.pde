class Entity{

//Player
int xposPlayer = 500;
int yposPlayer = 680;

float ySpeedPlayer = 0;

float left;
float right;
float up;
float down;

//Bullet
float lifetime = 200;


//Enemy

int xposEnemy = 1920; 
Float xSpeed;

int yposEnemy = 810; 
Float ySpeed;

//Hitbox
float w, h;

boolean HitboxIntersect(Player r1, Enemy r2){
float DistX = abs((r1.xposPlayer+r1.w/2)-(r2.xposEnemy+r2.w/2));
float DistY = abs((r1.yposPlayer+r1.h/2)-(r2.yposEnemy+r2.h/2));
float CombinedHalfWidth = r1.w/2+r2.w/2;
float CombinedHalfHeight = r1.h/2+r2.h/2;

//Check collision on X-Axis
if (DistX < CombinedHalfWidth){
if (DistY < CombinedHalfHeight){
  return true;}}
  
return false;}

boolean Collide   = false;
boolean BuletHit  = false;
boolean Disappear = false;
int HitBoxX = 50;
int HitBoxY = 50;

//Enemy
int HoundHP       = 3;
int BirdHP        = 2;
int SpitterHP     = 3;
int BruteHP       = 10;


int BossHead      = 30;
int BossRightArm  = 20;
int BossLeftArm   = 20;

boolean EnemyDead = false;

//Player
int PlayerHP = 5;
boolean PlayerDead = false;
}
