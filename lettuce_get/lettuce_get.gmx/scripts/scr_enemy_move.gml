// Increment Gravity
y_vel += y_accel;

// Calculates Normal speed
x_vel += x_accel * x_dir;

// Faces sprite the direction you are moving
if x_dir != 0 image_xscale = sign(x_dir);

// Detects the direction of movement and lowers velocity until zero is hit or surpassed. Sets x_vel = 0 if no direction
if sign(x_vel) != 0 && (x_dir == 0)
{
    if sign(x_vel) != sign(x_vel - x_accel*sign(x_vel)) x_vel = 0;
    x_vel -= x_accel * sign(x_vel);
}

// Checks to see if movement speeds are within set paramaters and corrects them
if (abs(x_vel) > x_cap) x_vel -= x_accel*sign(x_vel);
if (y_vel > y_cap)  y_vel -= y_accel;
if (y_vel < -y_cap) y_vel += y_accel;

// Vertical collision
if (position_meeting(x,y-sprite_yoffset+sprite_height,obj_wall)) && y_vel > 0
{        
    if (foh) && !position_meeting(x+(bbox_right-x)*sign(x_vel)+x_vel,y-sprite_yoffset+sprite_height,obj_wall) 
    {
        while position_meeting(x+(bbox_right-x)*sign(x_vel),y-sprite_yoffset+sprite_height,obj_wall) x += sign(x_vel);
        x_vel = 0;
        x_dir *= -1;
    }
}

// Horizontal collision
if (place_meeting(x + ceil(abs(x_vel))*sign(x_vel),y,obj_ground)) 
{        
    while(!place_meeting(x + sign(x_vel),y,obj_ground)) x += sign(x_vel);
    x_vel = 0;
    x_dir *= -1;
}

// Moves and collides based on ground type
scr_ground_type();

// Kills enemy if out of room
if y > (room_height + sprite_height) instance_destroy();

