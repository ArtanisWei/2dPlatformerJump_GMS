/// @description Insert description here
// You can write your code in this editor

listLength = array_length(eList);

if (maxxCD = -1){
	return;
}

coolDown = max(0, coolDown - 1);
if (coolDown == 0){
	var inst;
	
	inst = instance_create_layer(x, y, "Instances", eList[nowPlace])
	inst.logicType = eLType[nowPlace];
	inst.hDir = eDirection[nowPlace];
	
	nowPlace = (nowPlace + 1) % listLength;
	coolDown = maxxCD;
}