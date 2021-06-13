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
		scTextFeat(.25,c_white,fDefault,.25,false,sPlayerMedium, "Rusty",oPlayer);
		
		if (global.playerCounter == 0) return(0); 
		if (global.playerCounter == 1) return(1);
		if (global.playerCounter == 2) return(2);
		if (global.playerCounter == 3) return(3);
		if (global.playerCounter == 4) return(4);
		if (global.playerCounter == 5) return(5);
		if (global.playerCounter == 6) return(6);
		if (global.playerCounter == 6) return(6);
		if (global.playerCounter == 7) return(7);
		if (global.playerCounter == 8) return(8);
		if (global.playerCounter == 9) return(9);
		if (global.playerCounter == 10) return(10);
		if (global.playerCounter == 11) return(11);
		if (global.playerCounter == 12) return(12);
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
			global.msg[3] = "(In case you've never played a game before...";
			global.msg[4] = "...use WASD to move)";
			break;
		case 1:
		//2
			global.msg[0] = "Use 'SPACE' to jump.";
			break;
		case 2:
		//3
			global.msg[0] = "Yeeeeeppp, just your typical platformer";
			global.msg[1] = "Wait.";
			break;
		case 3: 
		//4
			scTextFeat(.25,c_white,fDefault,1,false,sPlayerMedium, "Rusty",oPlayer);
			
			global.msg[0] = "Why does it hurt to move?";
			break;
		case 4:
		//5
			scTextFeat(.25,c_white,fDefault,1,false,sPlayerMedium, "Rusty",oPlayer);
			
			global.msg[0] = "Where is everybody?";
			break;
		case 5:
			scTextFeat(.25,c_white,fDefault,1,false,sPlayerMedium, "Rusty",oPlayer);
			
			global.msg[0] = "Why is that health bar decreasing?";
			break;
		case 6:
		//6
			scTextFeat(.25,c_white,fDefault,1,false,sPlayerMedium, "Rusty",oPlayer);
			
			global.msg[0] = "Let me try something...";
			break;
		case 7:
			global.msg[0] = "Hold 'CONTROL' to move slower.";
			global.msg[1] = "Hold 'SHIFT' to move faster.";
			break;
		case 8:
			scTextFeat(.25,c_white,fDefault,2,false,sPlayerMedium, "Rusty",oPlayer);
		
			global.msg[0] = "I'm BROKEN.";
			global.msg[1] = "The faster I go the more damage I take!";
			global.msg[2] = "I need to get to the repair shop quick!";
			break;
		case 9:
			global.msg[0] = "I better be careful on this moving ledge";
			global.msg[1] = "...Because I have a wheel.";
			global.msg[2] = "...Because I'm a robot.";
			break;
		case 10:
			global.msg[0] = "With how broken I am that lightning would one-shot me.";
			break;
		case 11:
			global.msg[0] = "Those platforms don't look very sturdy...";
			global.msg[1] = "I should tread carefully.";
			global.msg[2] = "......";
			global.msg[3] = "You say this tutorial message is late?";
			global.msg[4] = "Yeah that makes sense...well anyway...";
			break;
		case 12:
			global.msg[0] = "I got repaired!";
			global.msg[1] = "Too bad there is still an apocalypse outside.";
			global.msg[2] = "..........";
			global.msg[3] = "Anyway, thanks for playing";
			global.msg[4] = "You did great!"
			if (global.deathCount != 0)
			{
				global.msg[5] = "You only died " + string(global.deathCount) + " times!";
			} else
			{
				global.msg[5] = "You didn't die a single time!";	
			}
			global.msg[6] = "My developers had a lot of fun making this.";
			global.msg[7] = "@ethanThopkins on code in GMS2";
			global.msg[8] = "@DavidDee on Music";
			global.msg[9] = "and @Ssapdra on art.";
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