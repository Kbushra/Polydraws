audio_sound_set_track_position(sndPop, 0.2);

random_get_seed();

global.movement = true;
global.wait = 120;

pauseMovement();

if !variable_global_exists("respawn")
{
	global.respawn = false;
	global.resRoom = -1;
	global.resX = 0;
	global.resY = 0;
}

if global.respawn
{
	room_goto(global.resRoom);
	objPlayer.x = global.resX;
	objPlayer.y = global.resY;
}
else
{
	room_goto(rmStart);
	objPlayer.x = 122;
	objPlayer.y = 295;
}