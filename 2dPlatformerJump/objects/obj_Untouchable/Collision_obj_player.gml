/// @description Insert description here
// You can write your code in this editor

with (other){
	instance_create_layer(x, y, "Instances", obj_playerDie);
	instance_destroy();
}

with (obj_PlayerSpawn){
	coolDown = 1.2 * room_speed;
}