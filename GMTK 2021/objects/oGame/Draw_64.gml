/// @description HEALTH BAR
if (room != rHeader)
{
#region HEALTH
var x1 = global.screenWidth * .15;
var y1 = global.screenHeight * .025;
var x2 = global.screenWidth * .85;
var y2 = global.screenHeight * .075;
var healthBarSize = x2 - x1;

scDrawSetText(fDefault,c_white,fa_center,fa_middle);
	draw_set_color(c_grey);
	draw_rectangle(x1-5,y1-5,x2+5,y2+5,true);
	draw_set_color(c_white);
scDrawSetText(fDefault,c_red, fa_center, fa_middle);
if instance_exists(oPlayer){
	draw_healthbar(x1,y1,x2,y2,(global.playerHealth * 100)/oPlayer.playerMaxHealth,c_black,c_maroon,c_green,0,true,false);
}
if (global.playerHealth <= 0) //if Dead
{
	global.playerHealthPercent = 0;
	scDrawSetText(fDefault,c_red, fa_center, fa_middle);
	if (room == rLevel1) || (room == rLevel1CheckPoint)
	{
		draw_text(global.screenWidth * .5, global.screenHeight * .65, "You Are Rusted\nPress Any Key to Continue");
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
}