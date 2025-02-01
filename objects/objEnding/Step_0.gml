if objPlayer.x < 960 || ending { exit; }

global.movement = false;
pauseMovement();

audio_sound_gain(objGeneral.sndId, 0, 500);

timer--;
if timer <= 0
{
	times++;
	timer = 60;
	
	if times == 0 { instance_create_layer(1200, 200, "Instances", objRip); }
	if times == 1 { instance_create_layer(900, 140, "Instances", objRip); }
	if times == 2 { instance_create_layer(750, 240, "Instances", objRip); }
	if times == 3 { instance_create_layer(1050, 170, "Instances", objRip); }
	
	if times == 4
	{
		instance_create_layer(960, 250, "Instances", objRip);
		audio_play_sound(sndSuck, 10, false);
	}
}

if times >= 4
{
	objPlayer.x = lerp(objPlayer.x, 960, 0.1);
	objPlayer.y = lerp(objPlayer.y, 250, 0.1);
	objPlayer.vMovement = 0;
	
	if !audio_is_playing(sndSuck) { ending = true; }
}