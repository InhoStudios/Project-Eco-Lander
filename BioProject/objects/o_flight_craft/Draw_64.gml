/// @description Insert description here
// You can write your code in this editor
draw_text(16,32,"Anorthite: " + string(anorthite));

var mineText = "";
if(mining){
	mineText = "Mining";
} else {
	mineText = "Hold F to Mine";
}
draw_text(16,48,mineText);