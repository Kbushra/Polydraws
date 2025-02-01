audio_sound_set_track_position(sndPop, 0.2);
sndId = audio_play_sound(musPaper, 11, true);

random_get_seed();

global.movement = true;
global.wait = 120;
global.toggle = false;

global.completed = false;

pauseMovement();

if !variable_global_exists("respawn")
{
	global.respawn = false;
	global.resRoom = -1;
	global.resX = 0;
	global.resY = 0;
	
	global.musPos = 0;
	
	global.notes = 5;
	global.collected[0] = false;
	global.collected[4] = false;
}

if global.respawn
{
	room_goto(global.resRoom);
	objPlayer.x = global.resX;
	objPlayer.y = global.resY;
}
else
{
	room_goto(rmRealPlat4);
	//room_goto(rmStart);
	objPlayer.x = 122;
	objPlayer.y = 295;
}

audio_sound_set_track_position(sndId, global.musPos);