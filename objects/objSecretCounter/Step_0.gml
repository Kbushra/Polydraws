depth = objPlayer.depth+1;

image_index = global.notes;

if global.notes == 5 && !created
{
	layer_sprite_create(layer_get_id("Assets_1"), 384, 80, sprNote);
	layer_sprite_create(layer_get_id("Assets_1"), 416, 80, sprNote);
	layer_sprite_create(layer_get_id("Assets_1"), 448, 80, sprNote);
	layer_sprite_create(layer_get_id("Assets_1"), 480, 80, sprNote);
	layer_sprite_create(layer_get_id("Assets_1"), 512, 80, sprNote);
	
	layer_sprite_create(layer_get_id("Assets_1"), 448, 288, sprAnim);
	
	created = true;
}