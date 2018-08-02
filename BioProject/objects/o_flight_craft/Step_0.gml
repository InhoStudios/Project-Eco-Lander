/// @description Insert description here
// You can write your code in this editor

get_input();

if(carrying){
	var ww, hh;

	ww = keyStrafeRight - keyStrafeLeft;
	hh = keyBack - keyForward;
	dir = point_direction(x,y,x + ww,y + hh);
	if((hh != 0 || ww != 0)){
		image_angle = dir;
	}

	hsp = lengthdir_x(movespeed,dir) * (ww * ww);
	vsp = lengthdir_y(movespeed,dir) * (hh * hh);

	x += hsp;
	y += vsp;
	image_index = 1;
} else {
	image_index = 0;
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