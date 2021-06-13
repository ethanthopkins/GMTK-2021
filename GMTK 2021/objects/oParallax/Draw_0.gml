

for(i=0;i<8;i++){
	PBGLayerSunSpots[i] = draw_sprite_ext(sBG_3_1,0,oCamera.x,PBGSunY,1,1,0+SunRot+(i*45),c_white,.8);
}
PBGLayerSun = draw_sprite_ext(sBG_3,0,oCamera.x,PBGSunY,1*SunScale,1*SunScale,0,c_white,1);

for(i=0;i<6;i++){
	PBGClouds[i] = draw_sprite(sBG_2,0,oCamera.x+CloudCycle+(i*256)-1024,PBGCloudsY);
}
for(i=0;i<ceil(room_width/512)+2;i++){
	PBGLayer41[i] = draw_sprite_ext(BGLayer41,0,(sprite_get_width(BGLayer41)*i)+oCamera.x/2-512,BGLayer4Y,1,1,0,ColFadedNear,1);
	PBGLayer4[i] = draw_sprite_ext(BGLayer4,0,((sprite_get_width(BGLayer4)*2)*i)+oCamera.x/2-512,BGLayer4Y,.5,.5,0,ColFadedNear,1);
	PBGLayer31[i] = draw_sprite_ext(BGLayer31,0,(sprite_get_width(BGLayer31)*i)+oCamera.x/2.5-512,BGLayer3Y,1,.90,0,ColFadedMid,1);
	PBGLayer3[i] = draw_sprite_ext(BGLayer3,0,((sprite_get_width(BGLayer3)*2)*i)+oCamera.x/2.5-512,BGLayer3Y,.75,.75,0,ColFadedMid,1);
	PBGLayer21[i] = draw_sprite_ext(BGLayer21,0,(sprite_get_width(BGLayer21)*i)+oCamera.x/3-512,BGLayer2Y,1,.80,0,ColFadedMid,1);
	PBGLayer2[i] = draw_sprite_ext(BGLayer2,0,((sprite_get_width(BGLayer2)*2)*i)+oCamera.x/3-512,BGLayer2Y,1,1,0,ColFadedMid,1);
	PBGLayer11[i] = draw_sprite_ext(BGLayer11,0,(sprite_get_width(BGLayer11)*i)+oCamera.x/4-512,BGLayer1Y,1,.70,0,ColFadedFar,1);
	PBGLayer1[i] = draw_sprite_ext(BGLayer1,0,((sprite_get_width(BGLayer1)*2)*i)+oCamera.x/4-512,BGLayer1Y,1.15,1.15,0,ColFadedFar,1);
}
