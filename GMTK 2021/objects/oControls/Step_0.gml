if keyboard_check_pressed(vk_tab){
	if window_get_fullscreen() = true{
		window_set_fullscreen(false);
	} else {
		window_set_fullscreen(true);
	}
}
if keyboard_check_direct(vk_escape){
	game_end();
}