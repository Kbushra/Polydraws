if waiter && !objPlayer.forming { global.wait--; }

if place_meeting(x, y, objPlayer) { firstCollision = true; }
else if firstCollision { suck = true; }