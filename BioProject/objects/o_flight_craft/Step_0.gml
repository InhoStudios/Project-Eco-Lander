/// @description Insert description here
// You can write your code in this editor

get_input();

var ww, hh;

ww = keyStrafeRight - keyStrafeLeft;
hh = keyBack - keyForward;
dir = point_direction(x,y,x + ww,y + hh);
if(carrying && (hh != 0 || ww != 0)){
	image_angle = dir;
}

hsp = lengthdir_x(movespeed,dir) * (ww * ww);
vsp = lengthdir_y(movespeed,dir) * (hh * hh);

if(carrying){
	x += hsp;
	y += vsp;
}

if(place_meeting(x,y,o_player)){
	if(keySetMine){
		mineTime++;
		if(mineTime >= mineSetTime){
			if(mining){
				mining = false;
			} else {
				alarm[0] = drillSpeed;
				mining = true;
			}
			mineTime = 0;
		}
	} else {
		mineTime = 0;
	}
}

if(mining){
	if(alarm[0] <= 0){
		show_debug_message("About to Mine");
		anorthite = mineResource(x,y,anorthite);
		alarm[0] = drillSpeed;
	}
	carrying = false;
}