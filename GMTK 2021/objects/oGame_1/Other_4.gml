global.roomCheckpoint = room;
#region SOUND
	switch (room) 
	{
		case rLevel1: roomSound = snLevel1; break;
		case rLevel1CheckPoint: roomSound = snLevel1; break;
		case rLevel2: roomSound = snLevel2; break;
		case rLevel2CheckPoint: roomSound = snLevel2; break;
		case rLevel3: roomSound = snLevel3; break;
		case rLevel3CheckPoint: roomSound = snLevel3; break;
		default: break;
	}
	if (!audio_is_playing(roomSound))
	{
		audio_play_sound(roomSound,100,true);
	}
#endregion