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

if(place_meeting(x + hsp,y,o_rock)){
	while(!place_meeting(x + sign(hsp),y,o_rock)){
		x += sign(hsp);
	}
	hsp = 0;
}

if(place_meeting(x,y + vsp,o_rock)){
	while(!place_meeting(x,y + sign(vsp),o_rock)){
		y += sign(vsp);
	}
	vsp = 0;
}

if(craft.carrying){
	x = craft.x;
	y = craft.y;
} else {
	x += hsp;
	y += vsp;
}

if(place_meeting(x,y,craft) && keyInteract && !craft.mining){
	if(craft.carrying){
		if(!place_meeting(x,y,o_rock)){
			craft.carrying = false;
		}
	} else {
		craft.carrying = true;
	}
}

if(!craft.carrying){
	if(x > room_width){
		x = 4;
	}
	if(x < 0){
		x = room_width - 4;
	}

	if(y > room_height){
		y = 4;
	}
	if(y < 0){
		y = room_height - 4;
	}
}