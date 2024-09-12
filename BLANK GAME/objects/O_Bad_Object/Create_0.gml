// @description Initialize
 randoSprite = floor(random_range(0,2))

//set random x-axis jump and new randomized glitch time
//	Note: time to bottom of screen ~ 13 
var spawn_time =random_range(1,3) * game_get_speed(gamespeed_fps)

// Reset Alarm
alarm_set(0, spawn_time);