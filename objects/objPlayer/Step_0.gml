vMovement += 0.2;
vMovement = clamp(vMovement, -10, 10);

if grounded || top != -1 || forming { vMovement = 0; }

y += vMovement;

if mask_index != sprite_index && sprite_index != sprTriangleForm
{ mask_index = sprite_index; show_debug_message(mask_index); }