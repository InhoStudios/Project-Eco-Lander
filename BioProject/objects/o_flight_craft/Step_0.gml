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
	if(!lit){
		light = instance_create_layer(x,y,lightEng.light_layer,o_light);
		lit = true
	}
} 

if(place_meeting(x,y,o_player) && (!place_meeting(x,y,o_rock) || !carrying)){
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

if(place_meeting(x,y,o_rock)){
	carrying = true;
}

if(mining){
	if(alarm[0] <= 0){
		show_debug_message("About to Mine");
		anorthite = mineResource(x,y,anorthite);
		alarm[0] = drillSpeed;
	}
	carrying = false;
	if(!lit){
		light = instance_create_layer(x,y,lightEng.light_layer,o_light);
		lit = true
	}
}

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

if(instance_exists(light)){
	light.image_xscale = 2 * image_xscale;
	light.image_yscale = 2 * image_yscale;
	light.x = x;
	light.y = y;
	light.image_blend = c_yellow;
}

if(!carrying && !mining){
	lit = false;
	if(instance_exists(light)){
		with(light) instance_destroy();
	}
}