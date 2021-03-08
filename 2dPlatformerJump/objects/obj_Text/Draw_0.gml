/// @description Show the text
// You can write your code in this editor

w_half = w / 2;

draw_set_color(c_black);
draw_set_alpha(0.5);

draw_roundrect_ext( x-w_half-border, y-h-2*border,
                    x+w_half+border, y, 15, 15, false);
draw_sprite(spr_marker, 0, x, y);
draw_set_alpha(1);

DrawSetText(c_white, fnt_Sign, fa_center, fa_top);
draw_text(x, y-h-border, text_current);