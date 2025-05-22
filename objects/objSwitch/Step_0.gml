depth = objPlayer.depth+1;

if place_meeting(x, y, objPlayer) && !collided
{
	collided = true;
	global.toggle = !global.toggle;
	audio_play_sound(sndClick, 10, false);
}
else if !place_meeting(x, y, objPlayer) { collided = false; }

if global.toggle { sprite_index = sprSwitchOn; }
else { sprite_index = sprSwitchOff; }