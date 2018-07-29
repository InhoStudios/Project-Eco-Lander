/// @description Insert description here
// You can write your code in this editor

if(keyboard_check_pressed(ord("R"))){
	room_restart();
}

var cellSize = 32;

for(xx = view_xport[0]; xx < view_xport[0] + view_wport[0]; xx += cellSize){
	for(yy = view_yport[0]; yy < view_yport[0] + view_hport[0]; yy += cellSize){
		if(!place_meeting(xx,yy,o_ground)){
			instance_create_layer(xx,yy,layer,o_ground);
		}
	}
}