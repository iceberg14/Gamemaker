// Get inputs and check powerups
scr_get_inputs();
scr_powerup();
sprite_index = powerup_sprite_climb;

// Sets speed
y_vel = 2*(down - up);

// Checks for different movement conditions and setes sprite animation

// Moves and Collides
scr_move_and_collide();

// Goes to normal state
if x_dir != 0 || !place_meeting(x,y,obj_ladder)
{
    state = state.normal;
}
else if (jump)
{
    state = state.normal;
    y_vel = -jumpspeed;
    audio_play_sound(sound_jump,0,0);
}



