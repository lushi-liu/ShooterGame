x += lengthdir_x(spdE,direction);
y += lengthdir_y(spdE,direction);


if place_meeting(x,y,oWall) and image_index != 0 
{
	while place_meeting(x,y,oWall)
	{
		x -= lengthdir_x(1,direction);
		y -= lengthdir_y(1,direction); 
	}
	spdE = 0;
	instance_change(oSpark,true);
}