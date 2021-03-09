/// @description Draw the powerup
// You can write your code in this editor

if (countDown > room_speed){
	draw_set_alpha(1);
	draw_sprite(spr_DJUP_spawn, 0, x, y);
}
else{
	draw_set_alpha(1-countDown/room_speed);
	draw_sprite(spr_doubleJump, 0, x, y);	
	draw_set_alpha(1);
}