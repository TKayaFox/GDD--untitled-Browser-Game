
/// @description Move Player around the world following user input
// Currently not in the script due to amount of variables needed
//Player_Movement();


if (able_to_move) 
{
	
	//Get Key Inputs
	var moveLeft = -keyboard_check(ord("A"));
	var moveRight = keyboard_check(ord("D"));
	var jump = keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_space);
	var jumpHeld = keyboard_check(ord("W")) || keyboard_check(vk_space);


	//Speed determination
	hsp = (moveRight + moveLeft) * move_speed;
	vsp += grav;

	//Running Idle state setter
	if (hsp != 0) 
	{
		player_state = RUNNING;
	} 
	else
	{
		player_state = IDLE;
	}

	//Get last pressed direction
	if ((moveRight + moveLeft) != 0) 
	{
		last_direction = moveRight + moveLeft;
	} //if


	//Coyote Time
	if (vsp > 3 && grounded) 
	{
		jumps--;
		grounded = false;
	} //if


	//Jump
	if (jump && (jumps > 0)) 
	{
		vsp = 0;
		vsp	-= jump_speed;
		jumps--;
	
		if (!grounded)
		{	
			effect_create_layer("Instances", ef_star, x, y, 0, c_white);
		}
	
		grounded = false
	
		// Commented out until I get a jump sound
		//audio_play_sound(jump_sound, 1, false);
	
	} //if

	if (vsp < 0 and !jumpHeld)
	{
		vsp = max(vsp, -jump_speed/2);
	} //if



	//Vertical Collision
	if (place_meeting(x, y + vsp, O_Collision))
	{
		while (!place_meeting(x, y + sign(vsp), O_Collision)) 
		{
			y += sign(vsp);
		} //while

		if (sign(vsp) >= 0) 
		{
			jumps = max_jumps;
			grounded = true;
		} //if
	
		vsp = 0;
	
	} //if

	//Jumping Falling state setter
	if (!grounded) 
	{
		if (vsp <= 0) 
		{
			player_state = JUMPING;
		}
		else if (vsp > 0)
		{
			player_state = FALLING;
		}
	}

	//Horizantal Collision
	if (place_meeting(x + hsp, y, O_Collision)) 
	{
		while (!place_meeting(x + sign(hsp), y, O_Collision)) 
		{
			x += sign(hsp);
		} //while
	
		hsp = 0;
	} //if
	
	
	//Posistion adjustment
	x += hsp;
	y += vsp;


	//Unsticks player
	while (place_meeting(x, y, O_Collision))
	{
		y++;
	}


	//Change Direction
	if (sign(hsp) != 0)
	{
		image_xscale = sign(hsp);
	}
}