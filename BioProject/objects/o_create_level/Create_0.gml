/// @description Insert description here
// You can write your code in this editor

// loop through every potential x value in the world
var cellSize = 1024;
groundType = choose(spr_earthy_ground,spr_martian_ground,spr_moon_ground);
var defCol = c_white;
switch(groundType){
	case spr_earthy_ground:
		defCol = make_colour_rgb(0,144,70);
		break;
	case spr_martian_ground:
		defCol = make_colour_rgb(121,64,1);
		break;
	case spr_moon_ground:
		defCol = make_colour_rgb(120,120,120);
		break;
}

if(instance_exists(o_player)) {
	o_player.x = room_width/2 + choose(64,-64);
	o_player.y = room_height/2 + choose(64,-64);
}
instance_create_layer(room_width / 2, room_height / 2, layer_get_id("Instances"), o_flight_craft);

var lay_id = layer_get_id("Background");
var back_id = layer_background_get_id(lay_id);
layer_background_blend(back_id,defCol);

for(xx = 0; xx <= room_width; xx += cellSize){
	for(yy = 0; yy <= room_height; yy += cellSize){
		ground = instance_create_layer(xx,yy,layer,o_ground);
		ground.sprite_index = groundType;
	}
}

instance_create_layer(x,y,layer,o_mining_manager);