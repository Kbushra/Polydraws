vMovement += 0.2;
vMovement = clamp(vMovement, -10, 10);

var sucked = place_meeting(x, y, objRip) && global.wait <= 0;
if grounded || top != -1 || forming || sucked { vMovement = 0; }
show_debug_message($"{grounded} {top != -1} { forming } {sucked}");

y += vMovement;