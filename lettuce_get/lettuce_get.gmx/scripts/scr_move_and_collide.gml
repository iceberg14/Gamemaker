// Increment gravity each step
y_vel += y_accel;

// Detects the direction of movement and lowers velocity until zero is hit or surpassed. Sets x_vel = 0 if no direction
if sign(x_vel) != 0 && (x_dir == 0) && state != state.slide
{
    if sign(x_vel) != sign(x_vel - x_accel*sign(x_vel)) x_vel = 0;
    x_vel -= x_accel * sign(x_vel);
}

// Checks to see if movement speeds are within set paramaters and corrects them
if (abs(x_vel) > x_cap)                            x_vel -= 3*x_accel*sign(x_vel);
if (y_vel < -y_cap_rise) || (y_vel > y_cap_fall)   y_vel -= y_accel*sign(y_vel);

// Ground Type Collisions and MOVEMENT
scr_ground_type();

// Collide with Shell
if shell_just_thrown == 0 && shell_on_player == 0
{
    if place_meeting(x,y,obj_shell)
    {
        shell_on_player = 1;
        other_shell = instance_place(x,y,obj_shell);
        shell_hp = other_shell.hp;
        with other_shell instance_destroy();
    }
}

// Runs death script if lower than room height
if y>(room_height+sprite_height) scr_death();


