/// @description Core Player logic

// Player Inputs
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);

// Calculate Movement
var move = key_right - key_left;

hsp = move * walksp;

vsp = vsp + grv

if (place_meeting(x,y+1,oinvisiblewall)) and (key_jump)
{
	vsp = -jumpsp
}

// Horizontal Collision
if (place_meeting(x+hsp,y,oinvisiblewall))
{
	while (!place_meeting(x+sign(hsp),y,oinvisiblewall))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}
x = x + hsp;

// Horizontal Collision
if (place_meeting(x,y+vsp,oinvisiblewall))
{
	while (!place_meeting(x,y+sign(vsp),oinvisiblewall))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;

