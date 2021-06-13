/// @description HEALTH BAR
#region HEALTH
var x1 = global.screenWidth * .1;
var y1 = global.screenHeight * .05;
var x2 = global.screenWidth * .9;
var y2 = global.screenHeight * .1;
var healthBarSize = x2 - x1;

scDrawSetText(fDefault,c_white,fa_center,fa_middle);
	draw_rectangle(x1,y1,x2,y2,true);
scDrawSetText(fDefault,c_red, fa_center, fa_middle);
	draw_rectangle(x1,y1,x1 + (healthBarSize * global.playerHealthPercent), y2, false);
	
if (global.playerHealth <= 0) //if Dead
{
	global.playerHealthPercent = 0;
	scDrawSetText(c_red, fa_center, fa_middle);
	if (room == rLevel1) || (room == rLevel1CheckPoint)
	{
		draw_text(global.screenWidth * .5, global.screenHeight * .5, "You Are Rusted\nPress Any Key to Continue");
	}
	if (room == rLevel2) || (room == rLevel2CheckPoint)
	{
		draw_text(global.screenWidth * .5, global.screenHeight * .5, "You Are electrocuted\nPress Any Key to Continue");
	}
	if (room == rLevel3) 
	{
		draw_text(global.screenWidth * .5, global.screenHeight * .5, "You have perished!\nPress Any Key to Continue");	
	}
}
#endregion