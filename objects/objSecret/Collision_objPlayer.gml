if global.completed 
{
	global.notes++;
	global.collected[collectId] = true;
	audio_play_sound(sndCollectPaper, 10, false);
	instance_destroy();
}