if objPlayer.sprite_index != sprCircle || popped { exit; }
audio_play_sound(sndPop, 10, false);
audio_stop_sound(sndRubber);
objPlayer.visible = false;
popped = true;