/// @description Insert description here
// You can write your code in this editor

get_input();

dir = point_direction(x,y,mouse_x,mouse_y);
image_angle = dir;
hsp = lengthdir_x(movespeed,dir);
vsp = lengthdir_y(movespeed,dir);

if(keyForward){
	x += hsp;
	y += vsp;
}