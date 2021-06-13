if (!paralyzed)
{
	if (x <= startingX + distance) && (!change)
	{
		if (x >= startingX + distance)
		{
			change = true;		
		}
		x += platformSpeed;	
		y -= 2;
		right = true;
		left = false;
	}
	if (x >= startingX - distance) && (change)
	{
		if (x <= startingX - distance)
		{
			change = false;		
		}
		x -= platformSpeed;	
		y -= 2;
	}
}