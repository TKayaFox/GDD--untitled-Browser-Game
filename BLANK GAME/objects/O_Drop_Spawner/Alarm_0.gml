/// @description Spawn objects at random intervals

//set new spawn time and horizontal address
var spawn_time = random_range(2,7)* game_get_speed(gamespeed_fps);
var spawn_x = random_range(0, (room_width));

// Creates pickup instance at generated coordinates
instance_create_layer(spawn_x, spawn_y, "Instances", O_Bad_Object);

// Generates random spawn time and resets alarm
alarm_set(0, spawn_time);