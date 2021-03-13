/// @description Update camera
// You can write your code in this editor

if (instance_exists(follow)){
	xTo = follow.x;
	yTo = follow.y;
}

x += (xTo - x) / 25;
y += (yTo - y) / 25;

x = clamp(x, view_w_half, room_width-view_w_half);
y = clamp(y, view_h_quarter, room_height-view_h_half);

camera_set_view_pos(cam, x-view_w_half, y-view_h_half);

if (layer_exists("Mountain")){
	layer_x("Mountain", x / 1.5);
}