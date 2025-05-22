htmlGUI();

draw_self();
if image_index >= 5 { global.began = true; instance_destroy(); }

matrix_set(matrix_world, matrix_build_identity());