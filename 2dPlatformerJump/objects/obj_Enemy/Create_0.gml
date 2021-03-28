/// @description Init
// You can write your code in this editor

hDir = 1;
hSpd = 0;
vSpd = 0;

spd_fall = 0.25;
spd_walk = 2;

enum ELOGIC{
	FALL,
	TURN
}
logicType = ELOGIC.FALL;
fallFlag = true;