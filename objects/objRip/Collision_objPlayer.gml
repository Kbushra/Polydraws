if global.wait > 0 || !suck { exit; }

objPlayer.x = lerp(objPlayer.x, x, 0.1);
objPlayer.y = lerp(objPlayer.y, y, 0.1);
objPlayer.vMovement = 0;

if !audio_is_playing(sndSuck) { audio_play_sound(sndSuck, 10, false); }

timer--;
if timer <= 0
{
	room_goto(targetRoom);
	with (objPlayer)
	{
		if !forming { sprite_index = asset_get_index(sprite_get_name(sprite_index) + "Form"); }
		forming = true;
		x = other.xPos;
		y = other.yPos;
	}
	
	global.wait = 60;
	global.toggle = false;
}