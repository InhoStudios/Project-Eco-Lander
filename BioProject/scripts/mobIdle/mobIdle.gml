image_index = 0;
image_speed = 0;
if(instance_exists(o_large_mob)){
	threat = instance_nearest(x,y,o_large_mob);
	var distX = threat.x - x;
	var distY = threat.y - y;
	var threatDist = 128;
	if((distX * sign(distX)) < threatDist || (distY * sign(distY)) < threatDist){
		state = mobMove;
	}
}