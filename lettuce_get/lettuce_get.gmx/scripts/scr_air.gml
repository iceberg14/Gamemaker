// Changes States based on collisions

//Check jump

if y_vel < 0 && (!jump_held) && alarm[4] == -1 y_vel = max(y_vel,-2);

// Ground State
if place_meeting(x+sign(x_vel)*ceil(abs(x_vel)),y,obj_ground) || place_meeting(x,y+round(y_vel),obj_ground) || place_meeting(x+sign(x_vel)*ceil(abs(x_vel)),y+round(y_vel),obj_ground)
{
    ground = "ground";
    scr_ground();
}

// Oneway Platform State
else if y_vel > 0 && place_meeting(x,y + round(y_vel) + sprite_height/2,obj_platform_oneway)
{
    var platform = instance_place(x,y + round(y_vel) + sprite_height/2,obj_platform_oneway)
    if y - sprite_height/2 <= platform.y - platform.sprite_height/2 ground = "platform_oneway";
    scr_platform_oneway();
}

// Oneway Platform Horizontal State
else if y_vel > 0 && place_meeting(x,y + round(y_vel) + sprite_height/2,obj_platform_oneway_moveh) 
{
    var platform = instance_place(x,y + round(y_vel) + sprite_height/2,obj_platform_oneway_moveh)
    if y - sprite_height/2 <= platform.y - platform.sprite_height/2 ground = "platform_oneway_moveh";
    scr_platform_oneway_moveh();
}

// Oneway Platform Vertical State
else if y_vel > 0 && place_meeting(x,y + round(y_vel) + sprite_height/2,obj_platform_oneway_movev) 
{
    var platform = instance_place(x,y + round(y_vel) + sprite_height/2,obj_platform_oneway_movev)
    if y - sprite_height/2 <= platform.y - platform.sprite_height/2 ground = "platform_oneway_movev";
    scr_platform_oneway_movev();
}

// Moves
else
{
    y += round(y_vel);
    x += sign(x_vel)*ceil(abs(x_vel));
}


