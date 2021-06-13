if (!set) length = string_length(string(myString)); set = true;
////show_debug_message(global.justForShow);

{
	if (keyboard_check_pressed(vk_space))
	{
		if (textProgress >= length) 
		{
			//if the current entry on the array does not equal one less than the array total length
			//if (current != array_length(global.msg)-1)
			//{
				//if adding 1 to the array position would equal the total length of the array
				show_debug_message("current: " + string(current+2));
				show_debug_message("arrayLength: " + string(arrayLength));
				if (current+2 > arrayLength) 
				{
					global.textNotification ++;
					instance_destroy();
				} else
				{
					current ++;
					//show_debug_message("current: " + string(current) + "array len: " + string(array_length(global.msg)-1));
					length = string_length(string(global.msg[current]));
					length_so_far = 0;
					textProgress = 0;
				} 
			//} else instance_destroy();
		}
		if (oldCurrent == current) 
		{
			if (textProgress < length) 
			{
				textProgress = length;
			}
		} 
		if (oldCurrent != current) oldCurrent = current;
	}
}