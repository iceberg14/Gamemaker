// Increment Gravity
y_vel += y_accel;

// Checks to see if movement speeds are within set paramaters and corrects them
if (y_vel > y_cap)  y_vel -= y_accel;
if (y_vel < -y_cap) y_vel += y_accel;

// Vertical collision
if (place_meeting(x,y + round(y_vel),obj_wall))
{        
    while(!place_meeting(x,y + sign(y_vel),obj_wall))
    {
        y += sign(y_vel);
    }
    y_vel = 0;
    
    if (foh) && !position_meeting(x+(abs(sprite_width/4))*sign(x_vel),y+(abs(sprite_height/2)) + 5,obj_wall) 
    {
        x_vel *= -1;
        image_xscale *= -1;
    }
}

y += round(y_vel);

// Horizontal collision
if (place_meeting(x + x_vel,y,obj_wall)) 
{        
    while(!place_meeting(x + sign(x_vel),y,obj_wall)) x += sign(x_vel);
    x_vel *= -1;
    image_xscale *= -1;
}

x += sign(x_vel)*ceil(abs(x_vel));

if y > (room_height + sprite_height) instance_destroy();
