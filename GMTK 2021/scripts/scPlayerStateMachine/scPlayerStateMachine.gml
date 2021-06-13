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
	image_xscale = cardinalDirection;
	/*
	switch (playerSprite)
	{
		case sPlayerIdle: 
			image_xscale = cardinalDirection;
			break;
		case sPlayerSlow: 
			image_xscale = cardinalDirection;
			break;
		case sPlayerMedium: 
			image_xscale = cardinalDirection;
			break;
		case sPlayerFast: 
			image_xscale = cardinalDirection;
			break;
		case sPlayerJump: break;
	}
	*/
}
function scPlayerCollision()
{
	var collisionArray;
	collisionArray[0] = oCol;
	if (instance_exists(oMovingPlatform)) {collisionArray[array_length(collisionArray)] = oMovingPlatform;}
	//if (instance_exists(oFragilePlatform)) {collisionArray[array_length(collisionArray)] = oFragilePlatform;}
	var arrayLength = array_length(collisionArray);
	//show_debug_message(arrayLength);
	if (instance_exists(oMovingPlatform))
	{
		//HORIZONTAL
		if (place_meeting(x+oMovingPlatform.platformSpeed,y,oMovingPlatform))
		{
			x -= oMovingPlatform.platformSpeed;
		}
		if (place_meeting(x-oMovingPlatform.platformSpeed,y,oMovingPlatform))
		{
			x += oMovingPlatform.platformSpeed;
		}
		if (place_meeting(x,y+1,oMovingPlatform))
		{
			var platform = collision_line(x,y,x,y+(sprite_height*.5)+1,oMovingPlatform,false,true);
			if (platform != noone)
			{
				if (platform.xAxis)
				{
					{
						if (platform.right) x += platform.platformSpeed;	
						if (platform.left) x -= platform.platformSpeed;	
					}
				}
			}
		}
		//VERTICAL
		if (place_meeting(x,y+oMovingPlatform.platformSpeed,oMovingPlatform))
		{
			y -= oMovingPlatform.platformSpeed;
		}
		if (place_meeting(x,y-oMovingPlatform.platformSpeed,oMovingPlatform))
		{
			y += oMovingPlatform.platformSpeed;
		}
	}
	if (right) || (left)
	{//HORIZONTAL COLLISION
		for (var i = 0; i < arrayLength; ++i) 
		{
			if (place_meeting(x+(sign(horizontal) * playerSpeed),y,collisionArray[i]))
			{
				while (!place_meeting(x + sign(horizontal), y, collisionArray[i]))
				{
					x += sign(horizontal);
				}
				horizontal = 0;
			}
		}
	}
	//VERTICAL COLLISION
	for (var i = 0; i < arrayLength; ++i) 
	{
		if (place_meeting(x, y + (vSpeed),collisionArray[i]))
		{
			while (!place_meeting(x, y + sign(vSpeed), collisionArray[i]))
			{
				y += sign(vSpeed);	
			}
			//if you are on the ground reset canJump
			if (place_meeting(x, y + 1, collisionArray[i]))
			{
				canJump = jumpWindow;	
			}
			//if you're falling check when you are on the ground
			if (falling)
			{
				//LANDED
				if (place_meeting(x, y + 1, collisionArray[i]))
				{
					jumping = false;
					//But not on the platform
					if (!place_meeting(x,y+1,oMovingPlatform))
					{
						scScreenShake(3, 5);
						heightDamage = heightCounter * heightDamageMultiplier;
						falling = false;
					}
				}	
			}
			vSpeed = 0;
		}	
		
		//FRAGILE PLATFORM COLLISION
		if (instance_exists(oFragilePlatform))
		{
			var _inst = collision_line(x,y,x,y+1,oFragilePlatform,false,true);
			if (_inst != noone)
			{
				if (_inst.ready == false)
				{
					if (place_meeting(x, y + (vSpeed),oFragilePlatform))
					{
						while (!place_meeting(x, y + sign(vSpeed), oFragilePlatform))
						{
							y += sign(vSpeed);	
						}
						//if you are on the ground reset canJump
						if (place_meeting(x, y + 1, oFragilePlatform))
						{
							canJump = jumpWindow;	
						}
						vSpeed = 0;
					}	
				}
			}
		}
	}
}
function scPlayerMovement()
{
	#region horizontal movement
	horizontal = (right - left);
	scPlayerCollision();
	x += (horizontal * playerSpeed);
	#endregion
	#region vertical movement
	if (canJump > -1)
	{
		canJump --;	
	}
	if (jump) && (canJump > 0)
	{
		jumping = true;
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
	if (vSpeed < -1) && (vSpeed > -5)
	{
		playerGravity -= 1;	
	}
	if (vSpeed > 0)
	{
		if (playerGravity < 4)
		{
			playerGravity += 1;
		}
	}
	vSpeed += playerGravity;
	scPlayerCollision();
	//jump
	y += vSpeed;
	#endregion
	#region DIRECTION
	//CHANGE PLAYER DIRECTION 
	if (horizontal > 0)
	{
		playerDirection = 90;	
		cardinalDirection = 1;
	} 
	if (horizontal < 0)
	{
		playerDirection = 180;	
		cardinalDirection = -1;
	}
	#endregion
	#region DEATH
	if (global.playerHealth <= 0)
	{
		playerControls = false;
		if (canJump)
		{
			state = oPlayerState.dead;	
		}
	}
	#endregion
	scPlayerAnimate();
}
function scPlayerDead()
{
	sprite_index = sPlayerDead;
	return;
}