if (global.playerHealth <= 0)
{
	if (global.healthSave != undefined)
	{
		global.playerHealth = global.healthSave;
	} else global.playerHealth = 60;
	if (global.checkPoint)
	{
		if (room == rLevel1) || (room == rLevel1CheckPoint)
		{
			global.roomCheckpoint = rLevel1CheckPoint;	
		}
		if (room == rLevel2) || (room == rLevel2CheckPoint)
		{
			global.roomCheckpoint = rLevel2CheckPoint;	
		}
		if (room == rLevel3) || (room == rLevel3CheckPoint)
		{
			global.roomCheckpoint = rLevel3CheckPoint;	
		}
	}
	global.deathCount ++;
	global.roomGoTo = true;
	room_goto(global.roomCheckpoint);
}