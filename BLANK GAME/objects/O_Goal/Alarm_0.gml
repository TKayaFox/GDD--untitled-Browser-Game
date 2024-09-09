//this brings it to the next level after completed
O_Controller.WhatlevelSet += 1
instance_destroy(O_Goal);
instance_destroy(O_Player);
instance_destroy(O_follow_light);
room_goto(R_Title_Screen)