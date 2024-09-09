if (O_Controller.WhatlevelSet = 0)
{
// Go to the room for this tab
room_goto(R_Tab_1)
}
if (O_Controller.WhatlevelSet = 1)
{
// Go to the room for this tab
room_goto(R_Tab_1_2);
}
if (O_Controller.WhatlevelSet = 2)
{
// Go to the room for this tab
room_goto(R_End_Screen);
O_Controller.WhatlevelSet = -1;
}