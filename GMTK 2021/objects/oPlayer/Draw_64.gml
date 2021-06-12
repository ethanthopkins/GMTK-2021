/// @description HEALTH BAR
#region HEALTH
var x1 = global.screenWidth * .1;
var y1 = global.screenHeight * .05;
var x2 = global.screenWidth * .9;
var y2 = global.screenHeight * .1;
var healthBarSize = x2 - x1;

scDrawSetText(c_white,fa_center,fa_middle);
	draw_rectangle(x1,y1,x2,y2,true);
scDrawSetText(c_red, fa_center, fa_middle);
	draw_rectangle(x1,y1,x1 + (healthBarSize * playerHealthPercent), y2, false);
	
if (playerHealth <= 0) //if Dead
{
	playerHealthPercent = 0;
	scDrawSetText(c_red, fa_center, fa_middle);
	draw_text(global.screenWidth * .5, global.screenHeight * .5, "You Are Rusted");
}
#endregion