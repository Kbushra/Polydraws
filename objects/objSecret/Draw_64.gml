htmlGUI();

if place_meeting(x, y, objPlayer) && !global.completed
{ draw_sprite(sprSecretsLocked, frame, 340, 32); frame += 0.067; }
else { frame = 0; }

matrix_set(matrix_world, matrix_build_identity());