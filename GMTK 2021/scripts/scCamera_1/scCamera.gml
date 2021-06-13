// Script assets have changed for v2.3.0 see
// https://help.yoyoGameManagers.com/hc/en-us/articles/360005277377 for more information
function scCamera(lookAheadX,lookAheadY,smooth)
{
	xTo = follow.x;
	yTo = follow.y;

	//Update Object Position
	x += ((xTo+lookAheadX) - x) / smooth;
	y += ((yTo+lookAheadY) - y) / smooth;

	//Keep camera center inside room
	x = clamp(x,viewWidthHalf+lookAheadX, room_width-viewWidthHalf);
	y = clamp(viewHeightHalf+lookAheadY,y, room_height-viewHeightHalf);
	
	camera_set_view_pos(cam,x - (viewWidthHalf-lookAheadX), y - (viewHeightHalf-lookAheadY));
}