random_get_seed();

global.movement = true;
global.wait = 180;

pauseMovement();

if !variable_global_exists("respawn") { global.respawn = false; }

room_goto(rmStart);