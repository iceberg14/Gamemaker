// Get inputs and check powerups
scr_get_inputs();
scr_powerup();
sprite_index = powerup_sprite_crawl;

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

// Calculates Normal speed
x_vel += x_accel/2 * x_dir;
if place_meeting(x,y+1,obj_wall) x_cap = 2;
scr_move_and_collide();

// Goes to crawl_shell state
if (down) && shell_on_player == 1
{
    sprite_index = powerup_sprite_crawl_shell;
    state = state.crawl_shell;
}

// Goes to normal state
if !(down) && !place_meeting(x,y+17-30,obj_wall) && position_meeting(x,y+16,obj_wall)
{
    state = state.normal;
}


