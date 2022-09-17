/// @description Insert description here
// You can write your code in this editor
if (!instance_exists(other)) exit;
var bounceDirection = point_direction(other.x, other.y, x, y);
motion_add(bounceDirection, acceleration);
if (speed > other.maxSpeed)
{
	speed = other.maxSpeed;
}