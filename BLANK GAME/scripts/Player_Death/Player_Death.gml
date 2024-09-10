function Player_Death()
{
	livesleft -= 1 
	if (O_Controller.WhatlevelSet = 0 && !livesleft <= 0 )
{
// Go to the room for this tab
room_goto(R_Tab_1)
x = spawn_x
y = spawn_y
}
if (O_Controller.WhatlevelSet = 1 && !livesleft <= 0)
{
// Go to the room for this tab
room_goto(R_Tab_1_2)
x = spawn_x
y = spawn_y
}
if (livesleft <= 0)
{
window_set_cursor(cr_none)	
alarm[0] = 175
layer_sequence_create("Sequence",room_width/2,room_height/2 ,Switchlevel);
}
}