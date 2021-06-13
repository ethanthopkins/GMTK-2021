if (global.textNotification != global.oldTextNotification) 
{
	if (global.speaker == oPlayer)
	{
		global.playerCounter ++;
	}
}

//change old value to new value
global.oldTextNotification = global.textNotification;