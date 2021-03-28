/// @description Play the effect
// You can write your code in this editor

if (time > room_speed)
	scaleRatio = 2 - time / room_speed;
else
    scaleRatio = min(1, 2*time / room_speed);
	
var i;
newDis = 30 * time / room_speed;

for (i = 0 ; i < 8 ; ++i){
	draw_sprite_ext(spr_redBall, 0,
	                x+lengthdir_x(newDis, dirList[i]),
					y+lengthdir_y(newDis, dirList[i]),
					scaleRatio, scaleRatio, 0, c_white, 1);
}