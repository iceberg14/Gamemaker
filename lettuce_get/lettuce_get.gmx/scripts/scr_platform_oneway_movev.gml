// Check for Collisions

// Vertical Collisions
if place_meeting(x,y + round(y_vel),obj_platform_oneway_movev) && y_vel > 0
{
    platform = instance_place(x,y + round(y_vel),obj_platform_oneway_movev);
    if y + sprite_height/2 <= platform.y
    {
        while(!place_meeting(x, y + 1,obj_platform_oneway_movev)) y += 1;
        y_vel = 0;
    }
}          

if position_meeting(x,y-sprite_yoffset+sprite_height,obj_platform_oneway_movev)
{
    platform = instance_position(x,y-sprite_yoffset+sprite_height,obj_platform_oneway_movev)
    y_vel = platform.y_vel;
}

// Jumping
run_jump = abs(x_vel)/x_cap;
if run_jump > 1 run_jump = 1

if (place_meeting(x,y+1,obj_platform_oneway_movev)) && (jump)
{
    platform = instance_place(x,y+1,obj_platform_oneway_movev);
    if (jump) && y + sprite_height/2 <= platform.y
    {
        y_vel = -jumpspeed * (1 + (max_spd_jump*run_jump));
        audio_play_sound(sound_jump,0,0);
    }
}

if y_vel < 0 && (!jump_held) y_vel = max(y_vel,0);

y += round(y_vel);

x += sign(x_vel)*ceil(abs(x_vel));

// Change State to air
if !position_meeting(x,y+sprite_height/2,obj_platform_oneway_movev) ground = "air";

