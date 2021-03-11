/// @description Mainly the moveable logic..
// You can write your code in this editor

hSpd = sign(hDir) * spd_walk;
vSpd += spd_fall;

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

image_xscale = hDir;