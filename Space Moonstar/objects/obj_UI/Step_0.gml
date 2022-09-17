if (keyboard_check_pressed(vk_escape))
{
	if (!pause)
	{
		pause = true;
		instance_deactivate_all(true);
		room_goto(rm_Start);
	}
	else
	{
		pause = false;
		instance_activate_all();
		room_goto(rm_Space);
	}
}