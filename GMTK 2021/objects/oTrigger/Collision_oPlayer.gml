/// @description
{
	if (!instance_exists(oSpeech))
	{
		scSaySomething(oPlayer.id);
		instance_destroy();
	}
}