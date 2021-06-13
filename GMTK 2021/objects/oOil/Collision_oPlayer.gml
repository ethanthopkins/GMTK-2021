if global.playerHealth <= oPlayer.playerMaxHealth *.9{
	global.playerHealth += (oPlayer.playerMaxHealth * .1);
} else {
	global.playerHealth = oPlayer.playerMaxHealth;
}
instance_destroy();