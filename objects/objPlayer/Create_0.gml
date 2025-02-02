vMovement = 0;
hMovement = 0;

grounded = false;

stuck = false;

top = -1;

targ = 0;

forming = true;
if string_count("Form", sprite_get_name(global.curShape)) == 1 { sprite_index = global.curShape; }
else { sprite_index = asset_get_index(sprite_get_name(global.curShape) + "Form"); }

audio_play_sound(sndScribble, 10, false);