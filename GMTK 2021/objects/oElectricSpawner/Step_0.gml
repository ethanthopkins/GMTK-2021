/// @desc ?
if (ready)
{
	if (Difficulty = difficulty.veryEasy)
	{
		randX = random_range(x - (sprite_width * .5), x + (sprite_width * .5));
		var electric = instance_create_layer(randX,y,"Mechanics",oElectric);
		alarm[0] = room_speed * choose(7,7.5,8,8.5);
		ready = false;
	}
	if (Difficulty = difficulty.easy)
	{
		randX = random_range(x - (sprite_width * .5), x + (sprite_width * .5));
		var electric = instance_create_layer(randX,y,"Mechanics",oElectric);
		alarm[0] = room_speed * choose(5,5.5,6);
		ready = false;
	}
	if (Difficulty = difficulty.medium)
	{
		randX = random_range(x - (sprite_width * .5), x + (sprite_width * .5));
		var electric = instance_create_layer(randX,y,"Mechanics",oElectric);
		alarm[0] = room_speed * choose(1.5,2,2.5,9,10);
		ready = false;
	}
	if (Difficulty = difficulty.hard)
	{
		randX = random_range(x - (sprite_width * .5), x + (sprite_width * .5));
		var electric = instance_create_layer(randX,y,"Mechanics",oElectric);
		alarm[0] = room_speed * choose(2,2,10);
		ready = false;
	}
}
