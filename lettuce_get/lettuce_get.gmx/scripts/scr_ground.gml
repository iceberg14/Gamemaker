// Jumping
run_jump = abs(x_vel)/x_cap;
if run_jump > 1 run_jump = 1

if (place_meeting(x,y+1,obj_wall)) && (jump)
{
    y_vel = -jumpspeed * (1 + (max_spd_jump*run_jump));
    audio_play_sound(sound_jump,0,0);
}

if y_vel < 0 && (!jump_held) && alarm[4] == -1 y_vel = max(y_vel,-2);

// Check for Collisions

// Vertical Collisions
if place_meeting(x,y + round(y_vel),obj_ground)
{
    while(!place_meeting(x,y + sign(y_vel),obj_ground)) y += sign(y_vel);
    y_vel = 0;
}
        
y += round(y_vel);

// Horizontal Collisions
if (place_meeting(x + sign(x_vel)*ceil(abs(x_vel)),y,obj_ground))
{
    while(!place_meeting(x + sign(x_vel),y,obj_ground)) x += sign(x_vel);
    x_vel = 0;
}

x += sign(x_vel)*ceil(abs(x_vel));

// Switches State
if place_meeting(x,y + y_vel,obj_platform_oneway) ground = "platform_oneway";

