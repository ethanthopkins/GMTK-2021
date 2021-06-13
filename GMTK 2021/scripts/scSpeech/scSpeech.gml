function scSaySomething(instance)
{
	var _line = scGetTheCharacter(instance); //oGameManager.whatText = oGameManager.whatText;
		////show_debug_message(_line);
	scGetTheText(_line);// oGameManager.theActualText = oGameManager.theActualText;
		////show_debug_message(_result);
}
function scGetTheCharacter(instance) //what should each player say when interacted with
{
	if (instance_exists(oPlayer)) var player = oPlayer.id; else player = 0;
	
	switch(instance)
	{
	case player: 
		scTextFeat(.25,c_white,fDefault,0,false,sPlayerMedium, "Rusty",oPlayer);
		if (global.playerCounter == 0) return(0); 
		if (global.playerCounter == 1) return(1);
		if (global.playerCounter == 2) return(2);
		if (global.playerCounter == 3) return(3);
		break;
	}
}
function scGetTheText(_line) //the actual text storage
{
	switch (_line)
	{
		case 0:
		//0
			global.msg[0] = "Hey there!";
			global.msg[1] = "Welcome to Rust Races!";
			global.msg[2] = "I'm Rusty!";
			break;
		case 1: 
		//2
			global.msg[0] = "(In case you've never played a game before...";
			global.msg[1] = "...use WASD to move)";
			break;
		case 2:
		//2
			global.msg[0] = "Use 'SPACE' to jump.";
			break;
		case 3:
		//3
			global.msg[0] = "Yeeeeeppp, just your typical platformer";
			global.msg[1] = "Wait.";
		case 4: 
		//4
			scTextFeat(.25,c_white,fDefault,.5,false,sPlayerMedium, "Rusty",oPlayer);
			
			global.msg[0] = "Why does it hurt to move?";
			global.msg[1] = "...";
			break;
		case 5:
		//5
			scTextFeat(.25,c_white,fDefault,1,false,sPlayerMedium, "Rusty",oPlayer);
			
			global.msg[0] = "Where is everybody?";
			global.msg[1] = "What is that health bar above me?";
		case 6:
		//6
			scTextFeat(.25,c_white,fDefault,1,false,sPlayerMedium, "Rusty",oPlayer);
			
			global.msg[0] = "I'm scared";
			break;
		default: break;
	}
	(instance_create_layer(0,0,layer,oSpeech))
}
function scTextBox(txt,nxtline)
{
	
		myString = txt;	
		nextLine = nxtLine;
		if (!is_undefined(response1Case)) rsp1Case = response1Case;
		if (!is_undefined(response1)) rsp1Text = response1;
		if (!is_undefined(response2case)) rsp2Case = response2case;
		if (!is_undefined(response2)) rsp2Text = response2;
	
}
function scTextFeat(Speed, Color, Font,shakeInt,wave,talker,name,speaker,response1Case,response1,response2case,response2)
{
		global.textSpeed = Speed;
		global.textColor = Color;
		global.font = Font;
		global.intensity = shakeInt;
		global.talker = talker;
		global.name = name;
		global.speaker = speaker;
		if (wave == true) global.wave = true; 
		if (wave == false) global.wave = false;
}		
function scReactivateTimer()
{
	oPlayer.alarm[0] = room_speed * .5;	
}
function scDrawSetText(font,color,halign,valign)
{
	draw_set_font(font);
	draw_set_color(color);
	draw_set_halign(halign);
	draw_set_valign(valign);
}