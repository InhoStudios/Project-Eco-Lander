/// @description Insert description here
// You can write your code in this editor

// getting the image index
index = choose(0,1,2,3,4);;

if(instance_exists(o_ground) && irandom(100) > 75){
	ground = instance_nearest(x,y,o_ground);
	index = ground.image_index;
}

image_index = 0;
image_speed = 0;
image_xscale = choose(-1,1);
image_yscale = choose(-1,1);