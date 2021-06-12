function scPlayerIdle()
{
	sprite_index = sPlayerIdle;
	playerDamage = idleDamage;
	scPlayerMovement();
	
	if (slow)
	{
		state = oPlayerState.slow;	
	}
	if ((left) || (right)) && ((!slow) && (!fast))
	{
		state = oPlayerState.medium;	
	}
	if (fast)
	{
		state = oPlayerState.fast	
	}
}
function scPlayerSlow()
{
	playerSpeed = slowSpeed;
	playerDamage = slowDamage;
	sprite_index = sPlayerSlow;
	scPlayerMovement();
	
	if((!slow) && (!fast))
	{
		state = oPlayerState.medium;	
	}
	if (fast)
	{
		state = oPlayerState.fast	
	}
}
function scPlayerMedium()
{
	playerSpeed = mediumSpeed;
	playerDamage = mediumDamage;
	sprite_index = sPlayerMedium;
	scPlayerMovement();
	
	if (!slow) && (!fast) && (!left) && (!right) //idle
	{
		state = oPlayerState.idle;	
	}
	if (slow)
	{
		state = oPlayerState.slow;	
	}
	if (fast)
	{
		state = oPlayerState.fast	
	}
}
function scPlayerFast()
{
	playerSpeed = fastSpeed;
	playerDamage = fastDamage;
	sprite_index = sPlayerFast;
	scPlayerMovement();
	
	if (slow) //slow
	{
		state = oPlayerState.slow;	
	}
	if ((!slow) && (!fast)) //medium
	{
		state = oPlayerState.medium;	
	}
}
function scPlayerAnimate()
{
	return;	
}
function scPlayerCollision()
{
	if (right) || (left) //horizontal collision
	if (place_meeting(x+(sign(horizontal) * playerSpeed),y,oCol))
	{
		while (!place_meeting(x + sign(horizontal), y, oCol))
		{
			x += sign(horizontal);	
		}
		horizontal = 0;
	}
	{
		if (place_meeting(x, y + (vSpeed),oCol))
		{
			while (!place_meeting(x, y + sign(vSpeed), oCol))
			{
				y += sign(vSpeed);	
			}
			//if you are on the ground reset canJump
			if (place_meeting(x, y + 1, oCol))
			{
				canJump = jumpWindow;	
			}
			//if you're falling check when you are on the ground
			if (falling)
			{
				if (place_meeting(x, y + 1, oCol))
				{
					heightDamage = heightCounter * heightDamageMultiplier;
					falling = false;
				}	
			}
			vSpeed = 0;
		}	
	}
}
function scPlayerMovement()
{
	//horizontal movement
	horizontal = (right - left);
	scPlayerCollision();
	x += (horizontal * playerSpeed);
	
	//vertical movement
	if (canJump > -1)
	{
		canJump --;	
	}
	if (jump) && (canJump > 0)
	{
		vSpeed = jumpSpeed;	
		canJump = 0;
	}
	//if you are falling count how much damage
	if (sign(vSpeed) > 0) && (!place_meeting(x,y+1,oCol))
	{
		falling = true;
		heightCounter ++;
	}
	//gravity
	vSpeed += playerGravity;
	scPlayerCollision();
	//jump
	y += vSpeed;
	
	if (playerHealth <= 0)
	{
		playerControls = false;
		if (canJump)
		{
			state = oPlayerState.dead;	
		}
	}
}
function scPlayerDead()
{
	return;
}