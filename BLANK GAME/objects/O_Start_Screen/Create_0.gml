//this starts a timer for the first room to end
if (persistant = true)
{
room_goto(R_Title_Screen)
}
else
{
alarm[0] = 240
audio_play_sound(SE_ComputerStart, 10, false, 1.1, 0, 1.0);
}