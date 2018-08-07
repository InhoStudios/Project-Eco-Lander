// check for mob
var move = movespeed;

image_speed = 1;

if(instance_exists(o_large_mob)){
	threat = instance_nearest(x,y,o_large_mob);
	var distX = threat.x - x;
	var distY = threat.y - y;
	var threatDist = 128;
	if((distX * sign(distX)) < threatDist || (distY * sign(distY)) < threatDist){
		dir = point_direction(threat.x,threat.y,x,y);
		move = movespeed * 1.5;
		image_speed = 1.25;
	}
}

image_angle = dir;

hsp = lengthdir_x(movespeed,dir);
vsp = lengthdir_y(movespeed,dir);

if(place_meeting(x + hsp,y,o_rock)){
	while(!place_meeting(x + sign(hsp),y,o_rock)){
		x += sign(hsp);
	}
	hsp = 0;
}

if(place_meeting(x,y + vsp,o_rock)){
	while(!place_meeting(x,y + sign(vsp),o_rock)){
		y += sign(vsp);
	}
	vsp = 0;
}

x += hsp;
y += vsp;