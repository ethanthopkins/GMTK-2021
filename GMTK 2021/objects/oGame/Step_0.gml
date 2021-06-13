if (room != rHeader)
{
	#region HEALTH
	if (global.playerHealth > 0) // if alive
	{
		if ((global.playerHealth - oPlayer.playerDamage) < 0)
		{
			global.playerHealth = 0;	
		} else global.playerHealth -= oPlayer.playerDamage;
		
		if (oPlayer.heightDamage != 0)
		{
			if ((global.playerHealth - oPlayer.heightDamage) < 0)
			{
				global.playerHealth = 0;	
			} else
			{
				global.playerHealth -= oPlayer.heightDamage;	
				oPlayer.heightDamage = 0;
			}
		}
		global.playerHealthPercent = global.playerHealth / oPlayer.playerMaxHealth;
	} 
#endregion
}

