
if room = rLevel0{
	room_goto(rLevel1);
}
if room = rLevel1 || room = rLevel1CheckPoint{
	room_goto(rLevel2);
}
if room = rLevel2|| room = rLevel2CheckPoint{
	room_goto(rLevel3);
}
if room = rLevel3|| room = rLevel3CheckPoint{
	room_goto(rLevelEnd);
}
