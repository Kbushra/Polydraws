if !ending { exit; }
draw_sprite_ext(sprBlack, 0, 0, 0, display_get_width(), display_get_height(), 0, c_white, 1);

timer2--;
if timer2 <= 0
{
	draw_sprite(sprTitle, 0, 0, 0-down);
	draw_sprite(sprSecretsComment, global.notes==5, 590, 160-down);
	draw_sprite(sprClose, 0, 590, 200-down);
	
	down = lerp(down, 0, 0.05);
	
	if keyboard_check_pressed(vk_enter) { game_end(); }
}