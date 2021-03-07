/// @description init (many parameters!)
// You can write your code in this editor

enum TRANS_MODE{
	OFF,
	NEXT,
	GOTO,
	RESTART,
	INTRO
}

h = display_get_gui_height();
w = display_get_gui_width();

w_half = w / 2;
h_half = h / 2;

mode = TRANS_MODE.INTRO;
percent = 1;
target = room;