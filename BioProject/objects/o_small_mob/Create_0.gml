/// @description Insert description here
// You can write your code in this editor
hp = 15;

movespeed = 3;
dir = 0;
hsp = 0;
vsp = 0;

matingTimer = irandom_range(3600,5000);
eatingTimer = irandom_range(750, 1250);

state = mobIdle;

alarm[2] = 1;