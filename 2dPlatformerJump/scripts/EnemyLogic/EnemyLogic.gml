// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyLogic(_id, _logicType){
    with(_id){
		switch (_logicType){
			
			case (ELOGIC.FALL):
			    if (place_meeting(x+sign(hSpd), y, obj_wall)){
	                hDir = -hDir;
                }
			    break;
				
			case (ELOGIC.TURN):
				if (not place_meeting(x, y+1, obj_wall)){
					if (fallFlag){
						fallFlag = false;
	                    hDir = -hDir;
						vSpd -= 3*spd_fall;
					}
                }
				else fallFlag = true;
                if (place_meeting(x+sign(hSpd), y, obj_wall)){
                    hDir = -hDir;
                }
			    break;
		}
	}
}