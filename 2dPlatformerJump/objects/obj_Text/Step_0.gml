/// @description Insert description here
// You can write your code in this editor

letters = min(letters + spd, length);
text_current = string_copy(text, 1, floor(letters));

draw_set_font(fnt_Sign);
if (h == 0)
    h = string_height(text);
w = string_width(text_current);

if (letters >= length) and (keyboard_check_pressed(vk_anykey)){
	instance_destroy();
	with (obj_Camera){
		follow = obj_player;
	}
}