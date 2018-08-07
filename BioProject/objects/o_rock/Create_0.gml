/// @description Insert description here
// You can write your code in this editor
image_index = irandom(image_number);
image_speed = 0;
image_xscale = choose(random_range(0.75,1.25),-random_range(0.75,1.25));
image_yscale = image_xscale;
image_angle = irandom(360);
if(o_create_level.groundType != spr_earthy_ground){
	image_blend = o_create_level.defCol;
} else {
	image_blend = c_ltgray;
}