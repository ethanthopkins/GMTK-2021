
SunRot += .25;
if SunRot > 360{
	SunRot = 0;
}
if SunScale < 1.05{
	SunScaleBool = true
} 
if SunScale > 1.18{
	SunScaleBool = false;
} 
if SunScaleBool = true{
	SunScale += 0.00125;	
} else {
	SunScale -= 0.00125;
}