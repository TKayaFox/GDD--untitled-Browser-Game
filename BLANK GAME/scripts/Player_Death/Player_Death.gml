function Player_Death()
{

	//destroy spawned objects
	instance_destroy(O_Bad_Object);

	//lose a life
	livesleft -= 1
	
	//Check for game over
	if (livesleft > 0)
	{
		//Go to appropriate tab
		//	Note: normally a simply if else would work, but switch makes it easier to add more levels
		switch(O_Controller.WhatlevelSet)
		{
			case 1:
				room_goto(R_Tab_1_2);
				break;
			default:
				room_goto(R_Tab_1);
				break;
		}
		
		//move to spawn point
		x = spawn_x;
		y = spawn_y;
	}
	 //Else we are Out of lives. game over
	else
	{
		window_set_cursor(cr_none);
		alarm[0] = 100;
		layer_sequence_create("Sequence",room_width/2,room_height/2 ,Death_error);
	}
}