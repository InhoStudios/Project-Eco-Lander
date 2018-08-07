/// @description Insert description here
// You can write your code in this editor

imgScale = (1 + ((zoomScaling * zoomScaling) * 2)) / 3;

if(instance_exists(o_day)){
	xOffset = (o_day.x + (room_width / 2)) / (room_width / 24);
}

draw_sprite_ext(spr_flight_shadow, 0, o_flight_craft.x + ((zoomScaling - 1) * 12), o_flight_craft.y + ((zoomScaling - 1) * 16), imgScale, imgScale, o_flight_craft.image_angle, c_black, zoomScaling - 0.8);