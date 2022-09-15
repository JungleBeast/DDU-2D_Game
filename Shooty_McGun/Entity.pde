class Entity{

//Player
int xposPlayer = 500;
int yposPlayer = 680;

float left;
float right;
float up;
float down;


//Enemy

int xPosEnemy = 1920; 
Float xSpeed;

int yPosEnemy = 810; 
Float ySpeed;

//Hitbox
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
