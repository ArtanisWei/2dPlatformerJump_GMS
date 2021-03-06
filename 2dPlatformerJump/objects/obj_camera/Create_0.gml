/// @description Set up camera
// You can write your code in this editor

cam = view_camera[0];
follow = obj_player;

view_w_half = camera_get_view_width(cam) / 2;
view_h_half = camera_get_view_height(cam)/ 2;
view_h_quarter = view_h_half / 2;

xTo = xstart;
yTo = ystart;