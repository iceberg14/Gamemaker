//Throw Turtle Shell and have it bounce back

// Increment gravity each step
y_vel += grav;

if (y_vel > y_cap_fall)  y_vel -= grav;
if (y_vel < -y_cap_rise) y_vel += grav;

// Set image speed
image_speed = 0.2;   

// Check for Collisions

// Vertical Collisions
if (place_meeting(x,y + y_vel,obj_wall))
{        
     while(!place_meeting(x,y + sign(y_vel),obj_wall)) y += sign(y_vel);
    y_vel = 0;
}

y += y_vel;

// Horizontal Collisions

if ((place_meeting(x + x_vel,y,obj_wall)) || place_meeting(x + x_vel,y,obj_shield))
{
    x_vel *= -.9;
    audio_play_sound(sound_shell,0,0);
}

x_vel *= .999

if abs(x_vel) < 1 
{
    x_vel = 0;
    image_speed = 0;
}
x += x_vel;

if (y > (room_height+50)) instance_destroy();

