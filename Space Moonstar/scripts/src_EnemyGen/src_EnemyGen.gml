// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
///@arg number
///@arg enemy
function src_EnemyGen(number, enemy){
	var centerX = room_width/2;
	var centerY = room_height/2;
	
	repeat(number)
	{
		var directionXY = random(360);
		var distanceXY = random_range(room_width * 0.6, room_width * 1.25);
		var xx = centerX + lengthdir_x(distanceXY, directionXY);
		var yy = centerY + lengthdir_y(distanceXY, directionXY);
		instance_create_layer(xx, yy, "Enemy", enemy);
	}
}