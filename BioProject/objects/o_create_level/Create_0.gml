/// @description Insert description here
// You can write your code in this editor

// loop through every potential x value in the world
var cellSize = 1024;

for(xx = 0; xx < room_width; xx += cellSize){
	for(yy = 0; yy < room_height; yy += cellSize){
		instance_create_layer(xx,yy,layer,o_ground);
	}
}