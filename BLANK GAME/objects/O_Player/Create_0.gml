/// @description Player Variables

moveSpeed = 8;
hsp = 0;
vsp = 0;
grav = 1;
jumpSpeed = 20;
coins = 0;
jumps = 0;
maxJumps = 1;
lastDirection = 1;
grounded = false;
ableToMove = true;
invincible = false;
blink = false;


// Player States
// Probably should make this an enum
IDLE = 0;
RUNNING = 1;
JUMPING = 2;
FALLING = 3;
HURT = 4;

playerState = IDLE;

//this is just saving the player location for respawning
//startingX = x 
//startingY = y 