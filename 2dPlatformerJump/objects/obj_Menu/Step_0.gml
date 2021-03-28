/// @description Control / Draw
// You can write your code in this editor

menu_x += (menu_x_target - menu_x) / menu_speed;

if (menu_control){
	if (keyboard_check_pressed(vk_up)){
		menu_cursor = (menu_cursor + 1) % menu_items;
	}
	if (keyboard_check_pressed(vk_down)){
		menu_cursor = (menu_cursor - 1 + menu_items) % menu_items;
	}
	
	if (keyboard_check_pressed(vk_enter)){
		menu_x_target = gui_width + 200;
		menu_commited = menu_cursor;
		//Well, this is not in the todo list 
		//ScreenShake(4, 30);
		menu_control = false;
	}
	
	var mouse_y_gui = device_mouse_y_to_gui(0);
	if ((mouse_y_gui < menu_y) and (mouse_y_gui > menu_top)){
		menu_cursor = (menu_y - mouse_y_gui) div (menu_itemheight * 1.5);
		
		if (mouse_check_button_pressed(mb_left)){
			menu_x_target = gui_width + 200;
			menu_commited = menu_cursor;
			//Well, this is not in the todo list 
			//ScreenShake(4, 30);
			menu_control = false;
		}
	}
}

if ((menu_x > gui_width + 150) and (menu_commited != -1)){
	switch (menu_commited){
		case 2:
			SlideTransition(TRANS_MODE.NEXT, Room1);
			break;
		case 1:
			if (!file_exists(SAVEFILE)){
				SlideTransition(TRANS_MODE.NEXT, Room1);
			}
			else{
				var file = file_text_open_read(SAVEFILE);
				var target = file_text_read_real(file);
				file_text_close(file);
				SlideTransition(TRANS_MODE.GOTO, target);
			}
			break;
		case 0:
			game_end();
			break;
	}
}