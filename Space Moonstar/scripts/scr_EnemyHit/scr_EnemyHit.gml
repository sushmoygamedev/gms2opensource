// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_EnemyHit(scoreVal){
	instance_destroy();
	other.armor -= 1;
	if (other.armor <= 0)
	{
		score += scoreVal;
	}
	audio_play_sound(snd_Hit, 2, false);
}