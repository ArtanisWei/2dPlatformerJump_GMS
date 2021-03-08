/// @description Insert description here
// You can write your code in this editor

if (closeFlag){
	draw_set_color(c_black);
	draw_set_alpha(0.8);
    draw_sprite(spr_marker, 0, x, y-60);
    draw_set_alpha(1);
}

draw_sprite(spr_sign, 0, x, y);