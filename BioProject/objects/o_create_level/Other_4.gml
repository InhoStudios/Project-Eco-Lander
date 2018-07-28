/// @description Insert description here
// You can write your code in this editor

// loop through every potential x value in the world
var cellSize = 32;

for(xx = view_xport[0]; xx < view_xport[0] + view_wport[0]; xx += cellSize){
	for(yy = view_yport[0]; yy < view_yport[0] + view_hport[0]; yy += cellSize){
		instance_create_layer(xx,yy,layer,o_ground);
	}
}