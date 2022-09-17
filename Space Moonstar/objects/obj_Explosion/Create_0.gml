/// @description Insert description here
// You can write your code in this editor
image_angle = random(360);
fade_speed = 0.1;

audio_play_sound(snd_Explosion, 4, false);

instance_create_layer(x, y, "MiscA", obj_ScreenShake);