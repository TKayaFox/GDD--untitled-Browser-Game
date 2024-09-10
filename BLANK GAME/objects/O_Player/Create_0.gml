/// @description Player Variables

move_speed = 8;
hsp = 0;
vsp = 0;
grav = 1;
jump_speed = 20;
coins = 0;
jumps = 0;
max_jumps = 1;
last_direction = 1;
grounded = false;
able_to_move = true;
invincible = false;
blink = false;
livesleft = 3;

// Player States
// Probably should make this an enum
IDLE = 0;
RUNNING = 1;
JUMPING = 2;
FALLING = 3;

player_state = IDLE;

//this is just saving the player location for respawning
spawn_x = x 
spawn_y = y 