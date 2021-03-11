/// @description Insert description here
// You can write your code in this editor

#region //Statu Check

if (place_meeting(x, y+1, obj_wall))
    jumpCnt = 1;

#endregion

#region //Control
key_left = keyboard_check(vk_left);
key_right= keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);

var move = key_right - key_left;
hSpd = move * spd_walk;
vSpd += spd_fall;

if ((jumpCnt > 0) and (key_jump)){
    //vSpd -= spd_jump;
	vSpd = -spd_jump;
	jumpCnt -= 1;
}

#endregion

var hSpd_t = hSpd;
var vSpd_t = vSpd;

#region //Collide and move

if (place_meeting(x+hSpd, y, obj_wall)){
	while (!place_meeting(x+sign(hSpd), y, obj_wall))
	    x += sign(hSpd);
	hSpd = 0;
}
x += hSpd;

if (place_meeting(x, y+vSpd, obj_wall)){
	while (!place_meeting(x, y+sign(vSpd), obj_wall))
	    y += sign(vSpd);
	vSpd = 0;
}
y += vSpd;

#endregion

#region //Animated

if (hSpd_t != 0)
    image_xscale = sign(hSpd_t);

if (!place_meeting(x, y+1, obj_wall)){
	sprite_index = spr_Player_F;
	image_speed = 0;
	if (sign(vSpd_t) > 0)
		image_index = 1;
	else
	    image_index = 0;
}
else{
	if (hSpd_t == 0){
		image_speed = 1;
	    sprite_index = spr_Player_N;
	}
	else {
		image_speed = 4;
		sprite_index = spr_Player_R;
	}
}

#endregion