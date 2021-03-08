/// @description Show info if player is close
// You can write your code in this editor

if (closeFlag){
	if (not instance_exists(obj_Text)){
		var inst;
		inst = instance_create_layer(x, y-60, "Instances", obj_Text);
		inst.text = signText;
		with (obj_Camera){
			follow = other.id;
		}
	}
}