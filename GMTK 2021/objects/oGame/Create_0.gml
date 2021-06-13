/// @description GLOBALS
randomize();
#region INIT
	global.iCamera = instance_create_layer(0,0,layer,oCamera);
#endregion
#region RESOLUTION
	global.screenHeight = window_get_height();
	global.screenWidth = window_get_width();
#endregion
#region STORY
	global.lengthOfLevel = 100;
	global.level = 0;
	global.levelRoom = rLevel1;
#endregion
	global.playerHealth = 60;
	global.roomCheckpoint = rLevel1;
	global.checkPoint = false;
	global.healthSave = undefined;
	global.deathCount = 0;
#region SOUND
	roomSound = undefined;
#endregion
#region TEXT
	global.textNotification = 0;
	global.playerCounter = 0;
	global.textNotification = 0;
	global.oldTextNotification = 0;
	global.roomGoTo = false;
	set = false;
	set1 = false;
#endregion
