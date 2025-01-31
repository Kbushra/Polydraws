if objPlayer.sprite_index != sprCircle { exit; }

timerKeep--;
if timerKeep <= 0 { exit; }

objPlayer.x = lerp(objPlayer.x, x, 0.2);
objPlayer.y = lerp(objPlayer.y, y, 0.2);

objPlayer.vMovement = 0;