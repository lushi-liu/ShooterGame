if instance_exists(oPlayer)
{
	if point_distance(oPlayer.x,oPlayer.y,x,y) < 700
	{
		cannonfire --;
		if cannonfire <= 0
		{
			cannonfire = cannonrate + random_range(-40,40);
			audio_sound_pitch(snShoot, choose(0.8,1.0,1.2));
			audio_play_sound(snShoot,5,false);
			with (instance_create_layer(x,y,"Bullet",oEbullet))
			{
				spdE = 2.5;
				if other.faceLeft == 1 direction = 180;
				else direction = 0;
				image_angle = direction;
			}
		}
	}
}

