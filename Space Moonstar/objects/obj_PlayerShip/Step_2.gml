/// @description Insert description here
// You can write your code in this editor
event_inherited();

var halfWidth = sprite_get_width(sprite_index) / 2;
var halfHeight = sprite_get_height(sprite_index) / 2;
var momentumLoss = 0.25;

if (x < halfWidth || x > room_width - halfWidth)
{
	x = xprevious;
	hsp = -hsp * momentumLoss;
}

if (y < halfHeight || y > room_height - halfHeight)
{
	y = yprevious;
	vsp = -vsp * momentumLoss;
}