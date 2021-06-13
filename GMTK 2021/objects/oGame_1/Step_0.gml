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
#region STORY
	if (global.playerCounter == 0)
	{
		if (!set)
		{
			scSaySomething(oPlayer.id);
			set = true;
		}
	}
	if (global.playerCounter == 1)
	{
		if (!set1)
		{
			scSaySomething(oPlayer.id);	
			set1 = true;
			set = false;
		}
	}
	if (global.playerCounter == 4)
	{
		if (!set)
		{
			scSaySomething(oPlayer.id);
			set1 = false;
			set = true;
		}
	}
#endregion
