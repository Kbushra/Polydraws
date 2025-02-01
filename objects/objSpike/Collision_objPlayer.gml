if objPlayer.sprite_index != sprCircle || popped { exit; }
audio_play_sound(sndPop, 10, false);
objPlayer.visible = false;
popped = true;