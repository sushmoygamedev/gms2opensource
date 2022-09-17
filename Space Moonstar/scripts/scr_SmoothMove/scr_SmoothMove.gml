// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// Approach(a, b, amount)
//      x = Approach(x, target_x, move_speed);
//      y = Approach(y, target_y, move_speed);

function scr_SmoothMove()
{
	if (argument0 < argument1)
	{
	    argument0 += argument2;
	    if (argument0 > argument1)
	        return argument1;
	}
	else
	{
	    argument0 -= argument2;
	    if (argument0 < argument1)
	        return argument1;
	}
	return argument0;
}