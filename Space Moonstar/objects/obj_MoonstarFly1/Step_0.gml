/// @description Insert description here
// You can write your code in this editor
var playerShip = instance_find(obj_PlayerShip, 0);
if (playerShip == noone) exit;

var playerDirection = point_direction(x, y, playerShip.x, playerShip.y);
image_angle = direction;
motion_add(playerDirection, acceleration);
if speed > maxSpeed {
	speed = maxSpeed;
}