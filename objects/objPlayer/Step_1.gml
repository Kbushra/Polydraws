if global.jump { stuck = false; }
if stuck { vMovement = 0; exit; }

if grounded
{	
	if place_free(x, y+2) { y++; }
	if !place_free(x, y+1) { y--; }
}

if !place_free(x+1, y) { x--; }
if !place_free(x-1, y) { x++; }

verticalChecks();

hMovement = lerp(hMovement, (global.r - global.l)*2, 0.2);
	
if hMovement != 0 && place_free(x+hMovement, y) { x += hMovement; }
	
if global.jump && grounded { vMovement = -5.5; grounded = false; }