if (place_meeting(x,y-1,oPlayer))
{
	var shakeInt = 10
	x += random_range(-shakeInt,shakeInt);
	if (alarm[0] == -1)
	{
		alarm[0] = room_speed * .5;
	}
}
if (ready)
{
	x = startingX;
	y += oPlayer.playerGravity;
}