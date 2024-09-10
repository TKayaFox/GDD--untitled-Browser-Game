/// @description Start end level sequence

//destroy spawned objects
instance_destroy(O_Bad_Object);

//start end level sequence
x = 0
y = 0
window_set_cursor(cr_none)	
alarm[0] = 175
layer_sequence_create("Sequence",room_width/2,room_height/2 ,Switchlevel);
