/// @description Insert description here
// You can write your code in this editor

for(xx = 0; xx < room_width; xx += 32){
	for(yy = 0; yy < room_height; yy += 32){
		curTile = instance_nearest(xx,yy,o_ground);
		sat[xx,yy] = 0;
		// finding the planet type
		switch(o_create_level.groundType){
		// earthy and martian ground share types
		case spr_earthy_ground:
		case spr_martian_ground:
		// finding the current tile type
			switch(image_index){
				// grass / martian dirt
				case 0:
					viab[xx,yy] = 75;
					break;
				// dirt
				case 1:
					viab[xx,yy] = 60;
					break;
				// sand
				case 2:
					viab[xx,yy] = 50;
					break;
			}
			break;
		case spr_moon_ground:
			switch(image_index){
				// no craters
				case 0:
					viab[xx,yy] = 40;
					break;
				// lots of craters / large
				case 1:
				case 3:
					viab[xx,yy] = 75;
					break;
				// small / little craters
				case 2:
				case 4:
					viab[xx,yy] = 50;
					break;
			}
			break;
		}
	}
}