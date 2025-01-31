if objPlayer.sprite_index != sprCircle { exit; }

timerKeep--;
if timerKeep <= 0 { exit; }

if !audio_is_playing(sndCrank) { audio_play_sound(sndCrank, 10, false); }

objPlayer.x = lerp(objPlayer.x, x, 0.2);
objPlayer.y = lerp(objPlayer.y, y, 0.2);

objPlayer.vMovement = 0;