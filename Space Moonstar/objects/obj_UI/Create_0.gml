/// @description Insert description here
// You can write your code in this editor
pause = false;
display_set_gui_size(640, 360);
draw_set_font(fnt_Score);
score = 0;

window_set_cursor(cr_none);

if (!audio_is_playing(snd_BackgroundMusic))
{	
	audio_play_sound(snd_BackgroundMusic, 5, true);
}

