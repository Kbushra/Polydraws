if global.wait > 0 { exit; }

objPlayer.x = lerp(objPlayer.x, x, 0.1);
objPlayer.y = lerp(objPlayer.y, y, 0.1);

timer--;
if timer <= 0
{
	room_goto(targetRoom);
	with (objPlayer)
	{
		forming = true;
		sprite_index = sprSquareForm;
		x = other.xPos;
		y = other.yPos;
	}
	
	global.wait = 60;
}