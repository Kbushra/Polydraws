if image_index < image_number-1 || !forming { exit; }

if sprite_index == sprSquareForm { sprite_index = sprSquare; }
if sprite_index == sprTriangleForm { sprite_index = sprTriangle; }
if sprite_index == sprCircleForm { sprite_index = sprCircle; }

forming = false;
targ = 0;
global.movement = true;
audio_stop_sound(sndScribble);