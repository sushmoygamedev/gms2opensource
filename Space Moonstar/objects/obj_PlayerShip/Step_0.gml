/// @description Insert description here
// You can write your code in this editor
keyRight = keyboard_check(vk_right) || keyboard_check(ord("D"));
keyLeft = keyboard_check(vk_left) || keyboard_check(ord("A"));
keyUp = keyboard_check(vk_up) || keyboard_check(ord("W"));
keyDown = keyboard_check(vk_down) || keyboard_check(ord("S"));
shootBullets = keyboard_check_pressed(vk_space) || mouse_check_button_pressed(mb_left);
//shootBullets = keyboard_check_pressed(vk_space) || mouse_check_button_pressed(mb_right);
//spriteDir = point_direction(x, y, mouse_x, mouse_y);
//image_angle = spriteDir;

//Reverse Horizontal Movement
//var moveX = keyLeft - keyRight;
var moveX = keyRight - keyLeft;
hsp += moveX * flySpeed;
if (moveX == 0)
{
	hsp = scr_SmoothMove(hsp, 0, fric);
}
x += hsp;

//Reverse Vertical Movement
//var moveY = keyUp - keyDown;
var moveY = keyDown - keyUp;
vsp += moveY * flySpeed;
if(moveY == 0)
{
	vsp = scr_SmoothMove(vsp, 0, fric);
}
y += vsp;

if (shootBullets)
{
	bulletsFiring = instance_create_layer(x, y, "Bullet", obj_Bullet);
	mouseDir = point_direction(x, y, mouse_x, mouse_y);
	bulletsFiring.direction = mouseDir;
	bulletsFiring.speed = 8;
	bulletsFiring.image_angle = mouseDir;
}

if(keyRight && keyDown || keyLeft && keyUp)
{
	image_angle = -15;
}
else if(keyLeft && keyDown || keyRight && keyUp)
{
	image_angle = 15;
}
else
{
	image_angle = 0;
}