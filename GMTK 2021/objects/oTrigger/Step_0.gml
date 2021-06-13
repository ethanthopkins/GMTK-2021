if (self.checkIfTextIsGone)
{
	if (!instance_exists(oSpeech))
	{
		if (global.playerCounter == 1)
		{
			global.playerCounter = 2;
			scSaySomething(oPlayer.id);
			instance_destroy();
		}
	} 
}