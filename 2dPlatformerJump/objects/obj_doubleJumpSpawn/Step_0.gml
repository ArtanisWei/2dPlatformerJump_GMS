/// @description Insert description here
// You can write your code in this editor

countDown -= 1;

if (countDown < 0){
	instance_create_layer(x, y, "Instances", obj_doubleJumpPU);
	instance_destroy();
}