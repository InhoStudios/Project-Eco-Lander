/// @description Insert description here
// You can write your code in this editor
rm_start = mediumplanet;
random_set_seed(current_second + current_minute + current_hour);
switch(choose(0,1,2)){
	case 0:
		rm_start = smallplanet;
		break;
	case 1:
		rm_start = mediumplanet;
		break;
	case 2:
		rm_start = largeplanet;
		break;
}
room_goto(rm_start);