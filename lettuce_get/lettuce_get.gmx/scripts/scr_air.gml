// Changes States based on collisions

// Ground State
if place_meeting(x+x_vel,y,obj_ground) || place_meeting(x,y+y_vel,obj_ground)
{
    ground = "ground";
    scr_ground();
}

// Oneway Platform State
else if y_vel > 0 && place_meeting(x,y + y_vel + sprite_height/2,obj_platform_oneway)
{
    ground = "platform_oneway";
    scr_platform_oneway();
}

// Oneway Platform Horizontal State
else if y_vel > 0 && place_meeting(x,y + y_vel + sprite_height/2,obj_platform_oneway_moveh) 
{
    ground = "platform_oneway_moveh";
    scr_platform_oneway_moveh();
}

// Oneway Platform Vertical State
else if y_vel > 0 && place_meeting(x,y + y_vel + sprite_height/2,obj_platform_oneway_movev) 
{
    ground = "platform_oneway_movev";
    scr_platform_oneway_movev();
}

// Moves
else
{
    y += round(y_vel);
    x += sign(x_vel)*ceil(abs(x_vel));
}


