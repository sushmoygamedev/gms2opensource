/// @description Insert description here
// You can write your code in this editor
var numberOfEnemy = instance_number(obj_ParentShip) - 1;

if (numberOfEnemy == 0)
{
	var enemiesToGen = 3 + score div 10;
	src_EnemyGen(enemiesToGen, obj_MoonstarFly1);
	
	enemiesToGen = 2 + score div 20;
	src_EnemyGen(enemiesToGen, obj_MoonstarFly2);
}