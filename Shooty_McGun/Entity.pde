class Entity{

//Player
int xposPlayer = 500;
int yposPlayer = 680;
float PlayerR;

float ySpeedPlayer = 0;

float left;
float right;
float up;
float down;

//Bullet
float lifetime = 200;
float xposBullet;
float yposBullet;
float BulletR;

//Enemy
float EnemyLifetime = 300;
int xposEnemy = 1920; 
Float xSpeed;

int yposEnemy = 810; 
Float ySpeed;
float EnemyR;

//Hitbox
float w, h;
boolean Collide   = false;
boolean BulletHit  = false;
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
