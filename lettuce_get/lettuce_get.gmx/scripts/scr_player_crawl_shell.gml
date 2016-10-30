// Get inputs and check powerups
scr_get_inputs();
scr_powerup();
sprite_index = powerup_sprite_crawl_shell;

// Faces sprite the direction you are moving
if x_dir = 1
{
image_xscale = 1;
}
else if (x_dir = -1)
{
image_xscale = -1;
}

// Checks for different movement conditions and setes sprite animation
if ((x_vel != 0) && place_meeting(x,y+1,obj_wall))image_speed = 0.1;
else if ( !place_meeting(x,y+1,obj_wall)) 
{
    image_speed = 0;
    image_index = 1;
}
else 
{ 
    image_speed = 0.05;
}

// Goes to slide state
if shell_on_player == 1 && !place_meeting(x,y+1,obj_wall) && abs(x_vel) > 2.5
{
    sprite_index = powerup_sprite_shell;
    state = state.slide;
}

// Goes to crawl state
if shell_on_player == 0
{
    sprite_index = powerup_sprite_crawl;
    state = state.crawl;
}

// Goes to normal state
if !(down) && (!place_meeting(x,y-sprite_height/2,obj_wall) && place_meeting(x,y+1,obj_wall))
{
    state = state.normal;
}

// Calculates Normal speed
x_vel += x_accel/2 * x_dir;
if place_meeting(x,y+1,obj_wall) x_cap = 2;
scr_move_and_collide();

