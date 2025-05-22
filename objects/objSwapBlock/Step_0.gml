depth = objPlayer.depth+1;

if sameAsToggle { solid = global.toggle; }
else { solid = !global.toggle; }

if solid { sprite_index = sprSwapOn; image_alpha = 1; }
else { sprite_index = sprSwapOff; image_alpha = 0.5; }