/// @description State Timer
// You can write your code in this editor
if(state == mobMove){
	state = mobIdle;
} else {
	dir = irandom(360);
	state = mobMove;
}
alarm[2] = irandom_range(30,60);
