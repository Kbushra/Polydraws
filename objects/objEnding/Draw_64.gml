if !ending { exit; }
draw_sprite_ext(sprBlack, 0, 0, 0, display_get_width(), display_get_height(), 0, c_white, 1);

timer2--;
if timer2 <= 0
{
	draw_sprite(sprTitle, 0, 0, 0);
	draw_sprite(sprSecretsComment, global.notes==4, 590, 160);
	draw_sprite(sprClose, 0, 590, 200);
}