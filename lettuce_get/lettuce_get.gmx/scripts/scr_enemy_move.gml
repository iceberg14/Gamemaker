// Increment Gravity
y_vel += y_accel;

// Checks to see if movement speeds are within set paramaters and corrects them
if (y_vel > y_cap)  y_vel -= y_accel;
if (y_vel < -y_cap) y_vel += y_accel;

// Vertical collision
if (place_meeting(x,y + round(y_vel),obj_wall))
{        
    if (foh) && !position_meeting(x+(sprite_width/4)*sign(x_vel),y+(sprite_height/2),obj_wall) 
    {
        x_vel *= -1;
        image_xscale *= -1;
    }
}

// Horizontal collision
if (place_meeting(x + ceil(abs(x_vel))*sign(x_vel),y,obj_wall)) 
{        
    while(!place_meeting(x + sign(x_vel),y,obj_wall)) x += sign(x_vel);
    x_vel *= -1;
    image_xscale *= -1;
}

// Moves and collides based on ground type
scr_ground_type();

// Kills enemy if out of room
if y > (room_height + sprite_height) instance_destroy();
