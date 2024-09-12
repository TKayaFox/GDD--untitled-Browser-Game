if (O_Controller.WhatlevelSet = 0)
{
// Go to the room for this tab
room_goto(R_Tab_1)
}
else
{
	layer_sequence_create("Sequence",room_width/2,room_height/2 ,Error);
}