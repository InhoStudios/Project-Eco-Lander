/// @description Insert description here
// You can write your code in this editor

if(instance_exists(o_flight_craft)){
	if(o_flight_craft.carrying){
		if(zoomScaling < 1.4){
			zoomScaling += 0.05;
		}
	} else {
		if(zoomScaling > 1){
			zoomScaling -= 0.05;
		}
	}
	o_flight_craft.image_xscale = zoomScaling;
	o_flight_craft.image_yscale = zoomScaling;
}

camera_set_view_size(view_camera[0], viewWidth * zoomScaling, viewHeight * zoomScaling);

if(instance_exists(o_player)){
	viewX = o_player.x - camera_get_view_width(view_camera[0]) / 2;
	viewY = o_player.y - camera_get_view_height(view_camera[0]) / 2;
	camera_set_view_pos(view_camera[0], viewX, viewY);
}