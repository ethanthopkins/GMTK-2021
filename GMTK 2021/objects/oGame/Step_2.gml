if (instance_exists(oPlayer))
{
	if (global.textNotification != global.oldTextNotification) 
	{
		if (global.speaker == oPlayer)
		{
			global.playerCounter ++;
		}
	}

	//change old value to new value
	global.oldTextNotification = global.textNotification;
	if (global.playerCounter == 0)
	{
		if (!set)
		{
			scSaySomething(oPlayer.id);
			set = true;
		}
	}
	if (global.playerCounter == 13)
	{
		if (room == rLevelEnd)
		{
			game_end();	
		}
	}
}