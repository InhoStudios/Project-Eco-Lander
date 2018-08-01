///mineResource(resource);
var mineX = argument0;
var mineY = argument1;
var resource = argument2;

var mineRes = 0;

for(xx = 0; xx < room_width; xx += 32){
	for(yy = 0; yy < room_height; yy += 32){
		if(yy > mineY){
			break;
		} 
	}
	if(xx > mineX){
		// mining
		var curSat = o_mining_manager.sat[xx,yy];
		var curViab = o_mining_manager.viab[xx,yy];
		// debug
		show_debug_message("Sat: " + string(curSat) + ", Viab: " + string(curViab) + ", Operation: " + string(curViab - curSat));
		// if chances allow mining
		if(irandom(100) < (curViab - curSat)){
			if(o_mining_manager.viab[xx,yy] > 5){
				mineRes = irandom(10);
			} else {
				mineRes = irandom(5);
			}
			show_debug_message("Mined!");
			// increase saturation
			o_mining_manager.sat[xx,yy] += 5;
		}
		show_debug_message("End of mining");
		break;
	}
}

return resource + mineRes;