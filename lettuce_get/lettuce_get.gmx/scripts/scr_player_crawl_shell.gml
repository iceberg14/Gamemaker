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
if ((abs(x_vel) > 0) && (ground != "air"))
{
    image_speed = 1/6;
}
else
{
    image_speed = 0;
    image_index = 0;
}

// Calculates Normal speed
x_vel += x_accel * x_dir;
if place_meeting(x,y+1,obj_wall) x_cap = 2;
scr_move_and_collide();

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
if !(down) && place_meeting(x,y+1,obj_wall) && !place_meeting(x,y+sprite_yoffset-30,obj_wall)
{
    state = state.normal;
}


// Goes to climb state
if position_meeting(x,y,obj_ladder) && ((up) || (down))
{
    ladder = instance_place(x,y,obj_ladder);
    sprite_index = powerup_sprite_climb;
    image_speed = 0;
    x_vel = 0;
    x = ladder.x;
    state = state.climb;
}

// Tapped move so you can't scoot across one pixel at a time without animating
if keyboard_check_pressed(vk_right) || keyboard_check_pressed(vk_left)
{
    image_speed = 1;
    image_index = 1;
}


