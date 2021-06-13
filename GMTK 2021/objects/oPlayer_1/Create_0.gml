/// @desc player variables
#region STATES
enum oPlayerState 
{
	idle,
	slow,
	medium,
	fast,
	dead
}
state = oPlayerState.idle;
playerControls = true;
playerSprite = sPlayerIdle;
#endregion
#region SPEEDS
fastSpeed = 15;
mediumSpeed = fastSpeed * .75;
slowSpeed = fastSpeed * .5;
jumpSpeed = -40 ;
vSpeed = 0;
horizontal = 0;
vertical = 0;
playerSpeed = mediumSpeed;
#endregion
#region PHYSICS
canJump = -1;
jumpWindow = 10;
playerGravity = 3;
falling = false;
currentlyJumping = false;
heightCounter = 0;
playerDirection = 90;
cardinalDirection = 1;
#endregion
#region HEALTH
playerMaxHealth = 60;
jumping = false;
fastDamage = 1 / global.lengthOfLevel;
mediumDamage = fastDamage * .75;
slowDamage = fastDamage * .5;
idleDamage = fastDamage * .25;
jumpDamage = fastDamage * 5;
heightDamage = 0;
heightDamageMultiplier = .001;
playerDamage = idleDamage;
global.playerHealthPercent = global.playerHealth / playerMaxHealth;
#endregion
busy = false;


//selectNext = false;