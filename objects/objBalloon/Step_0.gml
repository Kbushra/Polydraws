solid = objPlayer.sprite_index != sprTriangle;
if image_index >= 2 { instance_destroy(); }

if place_meeting(x, y, objPlayer) && sprite_index != sprBalloonPop
{
	if !solid || timer <= 0
	{
		sprite_index = sprBalloonPop;
		audio_play_sound(sndPop, 10, false);
	}
	else { timer--; }
}
else { timer = 5; }