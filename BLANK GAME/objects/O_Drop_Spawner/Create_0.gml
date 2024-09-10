/// @description Intialization

//The spawn timer for the in seconds multiplied by the game speed
spawn_timer = 2 * game_get_speed(gamespeed_fps);

//set spawn_y to immediately below CO_Top_Screen (Tabs)
//Set vertical spawn location directly below CO_Top_Screen object
var spawn_height = CO_TopScreen.x- CO_TopScreen.sprite_height;

// Sets the time for the alarm that controls the pickups
var spawn_time = 2; //Always spawn first predictably to warn player
alarm_set(0,2);