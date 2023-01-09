/// @description Core Player logic

// Player Inputs
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);

// Calculate Movement
var move = key_right - key_left;

hsp = move * walksp;

vsp = vsp + grv

if (place_meeting(x,y+1,owall)) and (key_jump)
{
	vsp = -jumpsp
}

if (place_meeting(x+1,y,owall)) and (key_jump)
{
	vsp = -jumpsp
}

if (place_meeting(x-1,y,owall)) and (key_jump)
{
	vsp = -jumpsp
}

// Horizontal Collision
if (place_meeting(x+hsp,y,owall))
{
	while (!place_meeting(x+sign(hsp),y,owall))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}
x = x + hsp;

// Vertical Collision
if (place_meeting(x,y+vsp,owall))
{
	while (!place_meeting(x,y+sign(vsp),owall))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;

//Animation
if (!place_meeting(x,y+1,owall))
{
	sprite_index = sjump;
	image_speed = 0;
	if (vsp > 0) image_index = 2; else image_index = 5;
}
else
{
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = splayer;
	}
	else
	{
		sprite_index = swalk
	}
}

if (hsp != 0) image_xscale = sign(hsp);
	