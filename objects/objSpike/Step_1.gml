solid = objPlayer.sprite_index != sprCircle;

if popped { pauseMovement(); vMovement = 0; timer--; }
if timer <= 0 { global.respawn = true; game_restart(); }