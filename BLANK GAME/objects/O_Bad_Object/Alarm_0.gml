/// @description "glitch" left and right randomly

var jump_distance = 100;

//set random x-axis jump and new randomized glitch time
//	Note: time to bottom of screen ~ 13 
var spawn_time =random_range(1,4)* game_get_speed(gamespeed_fps)
var x_jump = random_range(-jump_distance,jump_distance);

//Move x position randomly
x += x_jump;

// Reset Alarm
alarm_set(0, spawn_time);