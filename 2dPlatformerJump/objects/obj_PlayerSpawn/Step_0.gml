/// @description Insert description here
// You can write your code in this editor

coolDown = max(0, coolDown - 1);
if (not instance_exists(obj_player)){
	if ((isActive) and (coolDown == 0))
		instance_create_layer(x, y, "Instances", obj_player);
}