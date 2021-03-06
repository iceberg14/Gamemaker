// Jumping
run_jump = abs(x_vel)/x_cap;
if run_jump > 1 run_jump = 1

if (place_meeting(x,y+1,obj_platform_oneway)) && (jump)
{
    platform = instance_place(x,y+1,obj_platform_oneway);
    if (jump) && y <= platform.y - platform.sprite_height
    {
        y_vel = -jumpspeed * (1 + (max_spd_jump*run_jump));
        audio_play_sound(sound_jump,0,0);
    }
}

if y_vel < 0 && (!jump_held) y_vel = max(y_vel,0);

// Check for Collisions

// Vertical Collisions
if place_meeting(x,y + round(y_vel),obj_platform_oneway) && y_vel > 0
{
    platform = instance_place(x,y + round(y_vel),obj_platform_oneway);
    if y <= platform.y - platform.sprite_height
    {
        while(!place_meeting(x, y + 1,obj_platform_oneway)) y += 1;
        y_vel = 0;
    }
}          

y += round(y_vel);

x += sign(x_vel)*ceil(abs(x_vel));

// Change State to air
if !position_meeting(x,y+sprite_height/2,obj_platform_oneway_movev) ground = "air";

