if collectId != 2 && collectId != 3 { depth = objPlayer.depth+1; }
if global.completed { sprite_index = sprNote; }

if global.collected[collectId] { instance_destroy(); }