/// @desc Send to next room
global.level ++;
switch (global.level)
{
	case 1: global.levelRoom = rLevel1; break;
	case 2: global.levelRoom = rLevel2; break;
	case 3: global.levelRoom = rLevel3; break;
	case 4: global.levelRoom = rLevelEnd; break;
}
room_goto(global.levelRoom);
