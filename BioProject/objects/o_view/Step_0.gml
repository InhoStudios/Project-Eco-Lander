/// @description Insert description here
// You can write your code in this editor

if(instance_exists(o_player)){
	viewX = o_player.x - 320;
	viewY = o_player.y - 180;
	camera_set_view_pos(view_camera[0], viewX, viewY);
}