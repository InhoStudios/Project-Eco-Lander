/// @description Insert description here
// You can write your code in this editor

get_input();

var ww, hh;
var craft = instance_nearest(x,y,o_flight_craft);
craft.depth = depth - 1;

ww = keyStrafeRight - keyStrafeLeft;
hh = keyBack - keyForward;
dir = point_direction(x,y,x + ww,y + hh);
if(hh != 0 || ww != 0){
	image_angle = dir;
}
hsp = lengthdir_x(movespeed,dir) * (ww * ww);
vsp = lengthdir_y(movespeed,dir) * (hh * hh);

if(craft.carrying){
	x = craft.x;
	y = craft.y;
} else {
	x += hsp;
	y += vsp;
}

if(place_meeting(x,y,craft) && keyInteract && !craft.mining){
	if(craft.carrying){
		craft.carrying = false;
	} else {
		craft.carrying = true;
	}
}