/// @desc Moving
if (xAxis)
{
	if (x <= startingX + platformDistance) && (!change)
	{
		if (x >= startingX + platformDistance)
		{
			change = true;		
		}
		x += platformSpeed;	
		right = true;
		left = false;
	}
	if (x >= startingX - platformDistance) && (change)
	{
		if (x <= startingX - platformDistance)
		{
			change = false;		
		}
		x -= platformSpeed;		
		right = false;
		left = true;
	}
} else
{
	if (y <= startingY + platformDistance) && (!change)
	{
		if (y >= startingY + platformDistance)
		{
			change = true;		
		}
		y += platformSpeed;	
	}
	if (y >= startingY - platformDistance) && (change)
	{
		if (y <= startingY - platformDistance)
		{
			change = false;		
		}
		y -= platformSpeed;		
	}
}
