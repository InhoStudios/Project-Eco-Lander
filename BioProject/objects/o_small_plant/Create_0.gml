/// @description Insert description here
// You can write your code in this editor
if(irandom(100) < 40){
	instance_create_layer(x,y,layer,o_small_mob);
}
image_angle = irandom(360);
image_xscale = random_range(0.5,1.5);
image_yscale = image_xscale;