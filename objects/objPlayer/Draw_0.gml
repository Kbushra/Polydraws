if global.shape1 || global.shape2 || global.shape3
{
	if global.shape1 { targ = 1; }
	if global.shape2 { targ = 2; }
	if global.shape3 { targ = 3; }
		
	top = 0;
	audio_play_sound(sndRubber, 10, false);
}

if top != -1
{
	draw_sprite_part(sprite_index, image_index, 0, top, sprite_width, sprite_height-top, x-24, y-24+top);
	top += 2;
	
	if top >= sprite_height+20
	{
		top = -1;
		forming = true;
		audio_stop_sound(sndRubber);
		audio_play_sound(sndScribble, 10, false);
	}
}
else { draw_self(); }

if !forming { exit; }

if targ == 1 && sprite_index != sprSquareForm { sprite_index = sprSquareForm; }
if targ == 2 && sprite_index != sprTriangleForm { sprite_index = sprTriangleForm; }
if targ == 3 && sprite_index != sprCircleForm { sprite_index = sprCircleForm; }