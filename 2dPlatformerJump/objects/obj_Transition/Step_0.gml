/// @description Transition!
// You can write your code in this editor

if (mode != TRANS_MODE.OFF){
	if (mode == TRANS_MODE.INTRO){
		//precent = max(0, precent - 0.05);
		percent = max(0, percent - max((percent/10), 0.005));
	}
	else {
		percent = min(1.2, percent + max(((1.2-percent)/10), 0.05));
	}
	if ((percent == 1.2) || (percent == 0)){
		switch (mode){
			case TRANS_MODE.INTRO:
			    mode = TRANS_MODE.OFF;
			    break;
			case TRANS_MODE.NEXT:
			    room_goto_next()
			    mode = TRANS_MODE.INTRO;
			    break;
			case TRANS_MODE.GOTO:
			    room_goto(target);
				mode = TRANS_MODE.INTRO;
			    break;
			case TRANS_MODE.RESTART:
			    game_restart();
			    mode = TRANS_MODE.INTRO;
			    break; 
		}
	}
}