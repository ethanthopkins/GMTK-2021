// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/*
function scDrawSetText(font,color,halign,valign)
{
	draw_set_font(font);
	draw_set_color(color);
	draw_set_halign(halign);
	draw_set_valign(valign);
}
*/
function scText(color, halign, valign)
{
	draw_set_color(color);
	draw_set_halign(halign);
	draw_set_valign(valign);
}//scText