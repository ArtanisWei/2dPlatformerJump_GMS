/// @description Insert description here
// You can write your code in this editor

closeFlag = false;
if (instance_exists(obj_player)){
	if (point_in_circle(obj_player.x, obj_player.y, x, y, 64)){
		closeFlag = true;
	}
}