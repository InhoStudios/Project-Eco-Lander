/// @description Insert description here
// You can write your code in this editor
c_nearblack = make_colour_rgb(25,25,25);
draw_set_colour(c_nearblack);
draw_rectangle(outerMax,outerMax,room_width - outerMax,room_height - outerMax,false);
draw_set_colour(c_white);

draw_self();