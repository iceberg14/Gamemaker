// Jumping
if enemy = 0
{
    run_jump = abs(x_vel)/x_cap;
    if run_jump > 1 run_jump = 1
    
    if (place_meeting(x,y+1,obj_platform_oneway)) && (jump)
    {
        platform = instance_place(x,y+1,obj_platform_oneway);
        if (jump) && y + sprite_height/2 <= platform.y
        {
            y_vel = -jumpspeed * (1 + (max_spd_jump*run_jump));
            audio_play_sound(sound_jump,0,0);
        }
    }
    
    if y_vel < 0 && (!jump_held) y_vel = max(y_vel,-2);
}

// Check for Collisions

// Vertical Collisions
if place_meeting(x,y + round(y_vel),obj_platform_oneway) && y_vel > 0
{
    platform = instance_place(x,y + round(y_vel),obj_platform_oneway);
    if (y + sprite_height/2) <= platform.y
    {
        while(!place_meeting(x,y+sign(y_vel),obj_platform_oneway)) y += sign(y_vel);
        y_vel = 0;
    }
}          

y += round(y_vel);

x += sign(x_vel)*ceil(abs(x_vel));

// Change States to air
if !position_meeting(x,y+(sprite_height/2)+1,obj_platform_oneway) ground = "air";

