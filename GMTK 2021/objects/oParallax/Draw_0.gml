

for(i=0;i<8;i++){
	PBGLayerSunSpots[i] = draw_sprite_ext(sBG_3_1,0,oCamera.x,500,1,1,0+SunRot+(i*45),c_white,.8);
}
PBGLayerSun = draw_sprite_ext(sBG_3,0,oCamera.x,500,1*SunScale,1*SunScale,0,c_white,1);

for(i=0;i<ceil(room_width/512);i++){
	PBGLayer1[i] = draw_sprite(BGLayer1,0,((sprite_get_width(BGLayer1)*2+32)*i)+oCamera.x/4,700);
	PBGLayer2[i] = draw_sprite(BGLayer2,0,((sprite_get_width(BGLayer2)*2+32)*i)+oCamera.x/3,500);
	PBGLayer3[i] = draw_sprite(BGLayer3,0,((sprite_get_width(BGLayer3)*2+32)*i)+oCamera.x/2.5,300);
	PBGLayer4[i] = draw_sprite(BGLayer4,0,((sprite_get_width(BGLayer4)*2+32)*i)+oCamera.x/2,100);
}