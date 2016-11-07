// Jumping
run_jump = abs(x_vel)/x_cap;
if run_jump > 1 run_jump = 1

if (place_meeting(x,y+1,obj_platform_oneway_moveh)) && (jump)
{
    platform = instance_place(x,y+1,obj_platform_oneway_moveh);
    if (jump) && y - sprite_height/2 <= platform.y - platform.sprite_height/2
    {
        y_vel = -jumpspeed * (1 + (max_spd_jump*run_jump));
        audio_play_sound(sound_jump,0,0);
    }
}

if y_vel < 0 && (!jump_held) y_vel = max(y_vel,0);

// Check for Collisions

// Vertical Collisions
if place_meeting(x,y + round(y_vel),obj_platform_oneway_moveh) && y_vel > 0
{
    platform = instance_place(x,y + round(y_vel),obj_platform_oneway_moveh);
    if y - sprite_height/2 <= platform.y - platform.sprite_height/2
    {
        while(!place_meeting(x,y + 1,obj_platform_oneway_moveh)) y += 1;
        y_vel = 0;
    }
}          

y += round(y_vel);

// Move with platforms
if x_vel != 0 x += ceil(obj_platform_oneway_moveh.x_vel + x_vel);
else x += ceil(obj_platform_oneway_moveh.x_vel);

// Change States to air
if !position_meeting(x,y+sprite_height/2,obj_platform_oneway_moveh) ground = "air";



