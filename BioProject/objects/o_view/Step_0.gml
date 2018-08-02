/// @description Insert description here
// You can write your code in this editor

if(instance_exists(o_flight_craft)){
	if(o_flight_craft.carrying){
		camera_set_view_size(view_camera[0], 704, 396);
		o_flight_craft.image_xscale = 1.1;
		o_flight_craft.image_yscale = 1.1;
	} else {
		camera_set_view_size(view_camera[0], 640, 360);
		o_flight_craft.image_xscale = 1;
		o_flight_craft.image_yscale = 1;
	}
}

if(instance_exists(o_player)){
	viewX = o_player.x - camera_get_view_width(view_camera[0]) / 2;
	viewY = o_player.y - camera_get_view_height(view_camera[0]) / 2;;
	camera_set_view_pos(view_camera[0], viewX, viewY);
}