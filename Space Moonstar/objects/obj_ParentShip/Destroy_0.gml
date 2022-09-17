/// @description Insert description here
// You can write your code in this editor
instance_create_layer(x, y, "Effect", obj_Explosion);

if (object_index != obj_PlayerShip)
{
	score += maxArmor;
	
	if (score > global.highscore)
	{
		global.highscore = score;
		ini_open("Save.ini");
		ini_write_real("Scores", "HighScore", global.highscore);
		ini_close();
	}
}