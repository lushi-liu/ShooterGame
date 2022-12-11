/// @description Update Camera

//Get Destination
if instance_exists(follow)
{
	xTo = follow.x;
	yTo = follow.y;
	
	if (follow).object_index == oPlayerD
	{
		x = xTo;
		y = yTo;
	}
}

//Go to Destionation
x += (xTo - x) / 25;
y += (yTo - y) / 25;

x = clamp(x,view_w_half,room_width-view_w_half);
y = clamp(y,view_h_half,room_height-view_h_half);

//Update View
camera_set_view_pos(cam , x - view_w_half , y - view_h_half);

if layer_exists(mountainlayer)
{
	layer_x(mountainlayer,x/2);	
}

if layer_exists(treelayer)
{
	layer_x(treelayer,x/4);	
}