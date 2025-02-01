function verticalChecks()
{
	if vMovement == 0 { grounded = !place_free(x, y+2); return; } //No vertical movement
	if place_free(x, y+vMovement) { grounded = false; return; } //In the air
	if vMovement < 0 { vMovement = 0; return; } //Bumped head
	
	//Landing on ground
	while place_free(x, y+2) { y++; }
	grounded = true;
	vMovement = 0;
}

function pauseMovement()
{
	global.jump = false;
	
	global.l = false;
	global.r = false;
	global.u = false;
	global.d = false;
	
	global.shape1 = false;
	global.shape2 = false;
	global.shape3 = false;
}