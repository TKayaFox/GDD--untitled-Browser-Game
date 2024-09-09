//this is just swapping the tab based on the instance variable in each level

// If the room is not the current room for this tab
if (O_Controller.WhatlevelSet = 0)
{
// Go to the room for this tab
room_goto(R_Tab_3)
}
if (O_Controller.WhatlevelSet = 1)
{
// Go to the room for this tab
room_goto(R_Tab_3_2)
}