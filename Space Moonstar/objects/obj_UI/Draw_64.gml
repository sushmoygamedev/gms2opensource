/// @description Insert description here
// You can write your code in this editor

if ( room == rm_Space)
{
	// Player Ship Hit Point
	var playerShip = instance_find(obj_PlayerShip, 0);
	var hpAmount = 0;

	if (playerShip != noone)
	{
		hpAmount = playerShip.armor;
	}
	var hitPointX = 30;
	var hitPointY = 15;
	draw_sprite(spr_HitPoint, hpAmount, hitPointX, hitPointY);

	// Player Score
	draw_set_halign(fa_right);
	var scoreX = room_width - 40;
	var scoreY = 10;
	draw_text(scoreX + 35, scoreY, score);
	draw_set_halign(fa_left);
}
else
{
	draw_set_halign(fa_right);
	var scoreX = room_width - 40;
	var scoreY = 10;
	draw_text(scoreX + 35, scoreY, "HIGHSCORE: " + string(global.highscore));
	draw_set_halign(fa_left);
}