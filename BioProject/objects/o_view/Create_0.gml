/// @description Insert description here
// You can write your code in this editor

zoomScaling = 1;
viewWidth = 640;
viewHeight = 360;

view_camera[0] = camera_create();
camera_set_view_size(view_camera[0], 640 * zoomScaling, 360 * zoomScaling);