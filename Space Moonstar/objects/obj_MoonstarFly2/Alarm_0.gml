/// @description Insert description here
// You can write your code in this editor
var playerShip = instance_find(obj_PlayerShip, 0);
if (playerShip == noone) exit;

var distance = point_distance(x, y, playerShip.x, playerShip.y);
var direct = point_direction(x, y, playerShip.x, playerShip.y);

if (distance <= attack_range)
{
	var bullet = instance_create_layer(x, y, "Bullet", obj_EnemyBullet);
	bullet.speed = 2;
	bullet.image_angle = direct;
	bullet.direction = direct;
}

alarm[0] = fire_rate;