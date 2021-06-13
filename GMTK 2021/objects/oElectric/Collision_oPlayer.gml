global.playerHealth -= 10;
scScreenShake(4,10);
instance_create_depth(x,y,depth+1,oSparkles)
instance_destroy();
	if !audio_is_playing(sndHit){
		audio_play_sound(sndHit,0,false);
	}