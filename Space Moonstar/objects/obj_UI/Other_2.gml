/// @description Insert description here
// You can write your code in this editor
ini_open("Save.ini");
global.highscore = ini_read_real("Scores", "Highscore", 0);
ini_close();