/// @desc Get Inputs
#region GET INPUTS
if (playerControls)// you are not dead
{
	left = keyboard_check(ord("A")) || keyboard_check(vk_left);
	right = keyboard_check(ord("D")) || keyboard_check(vk_right);
	if (!busy)
	{
		jump = keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up) || keyboard_check_pressed(vk_space)
	} else jump = false;
	slow = keyboard_check(vk_control);
	fast = keyboard_check(vk_shift);
} else //you are dead
{
	left = false;
	right = false;
	jump = false;
	slow = false;
	fast = false;
}
#endregion
#region STATE MACHINE
switch (state)
{
	case oPlayerState.idle: scPlayerIdle(); break;
	case oPlayerState.slow: scPlayerSlow(); break;
	case oPlayerState.medium: scPlayerMedium(); break;
	case oPlayerState.fast: scPlayerFast(); break;
	case oPlayerState.dead: scPlayerDead(); break;
	default: break;
}
#endregion
