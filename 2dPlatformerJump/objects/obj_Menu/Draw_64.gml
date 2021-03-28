/// @description Insert description here
// You can write your code in this editor

draw_set_font(menu_font);
draw_set_halign(fa_right);
draw_set_valign(fa_bottom);

for (var i = 0 ; i < menu_items ; i++){
	var offset = 2;
	var txt = menu[i];
	if (menu_cursor == i){
		txt = string_insert("> ", txt, 0);
		var col = c_white;
	}
	else {
		var col = c_gray;
	}
	var xx = menu_x;
	var yy = menu_y - (menu_itemheight * i * 1.5);
	show_debug_message( string(xx) + " " + string(yy));
	draw_set_color(c_black);
	draw_text(xx-offset, yy, txt);
	draw_text(xx+offset, yy, txt);
	draw_text(xx, yy-offset, txt);
	draw_text(xx, yy+offset, txt);
	draw_set_color(col);
	draw_text(xx, yy, txt);
}