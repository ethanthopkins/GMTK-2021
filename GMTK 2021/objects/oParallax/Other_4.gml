
if room != rHeader && room != rInitial{//temp
	BGLayer1 = sBG_4;
	BGLayer11 = sBG_11;
	BGLayer2 = sBG_6;
	BGLayer21 = sBG_12;
	BGLayer3 = sBG_5;
	BGLayer31 = sBG_9;
	BGLayer4 = sBG_7;//highest to lowest 
	BGLayer41 = sBG_8;
	PBGCloudsY = 150;
	PBGSunY = 300;
} else {
	BGLayer1 = sBG_7;
	BGLayer11 = sBG_11;
	BGLayer2 = sBG_7;
	BGLayer21 = sBG_12;
	BGLayer3 = sBG_7;
	BGLayer31 = sBG_9;
	BGLayer4 = sBG_7;
	BGLayer41 = sBG_8;
	PBGCloudsY = 150;
	PBGSunY = 300;
}
if room = rLevel0{
	BGLayer1Y = 760	;
	BGLayer2Y = 620	;
	BGLayer3Y = 510	;
	BGLayer4Y = 440	;
	PBGCloudsY = 150;
	PBGSunY = 300;
}