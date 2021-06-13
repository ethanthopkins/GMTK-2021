/// @desc Send to next room
global.level ++;
if (audio_is_playing(oGame.roomSound))
{
	audio_stop_sound(oGame.roomSound);	
}
switch (global.level)
{
	case 0: global.levelRoom = rLevel0; break;
	case 1: global.levelRoom = rLevel1; break;
	case 2: global.levelRoom = rLevel2; break;
	case 3: global.levelRoom = rLevel3; break;
	case 4: global.levelRoom = rLevelEnd; break;
}
global.checkPoint = false;
global.healthSave = global.playerHealth;
room_goto(global.levelRoom);
