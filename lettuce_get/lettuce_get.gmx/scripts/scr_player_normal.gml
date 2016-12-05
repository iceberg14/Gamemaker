// Get inputs and check powerup
scr_get_inputs();
scr_powerup();
sprite_index = powerup_sprite;

// Throw Shell Script
if throw == 1 && shell_just_thrown == 0
{
    shell_just_thrown = 1;
    alarm[0] = 30;
    instance_create(x+sign(image_xscale),y,obj_shell);
    shell_on_player = 0;
}

// Faces sprite the direction you are moving
if x_dir != 0 image_xscale = sign(x_dir);

// Checks for different movement conditions and sets sprite animation
if ((x_vel != 0) && (ground != "air"))
{
    if image_index == 4 image_index = 0;
    image_speed = 1/5;
}
else
{
    image_speed = 0;
    image_index = 4;
}

// Calculates Normal speed
x_vel += x_accel * x_dir;
x_cap = 3;
scr_move_and_collide();

//STATE CHANGES -- STATE CHANGES -- STATE CHANGES

// Goes to slide state
if (down) && shell_on_player = 1 && !place_meeting(x+10,y,obj_wall) && !place_meeting(x-10,y,obj_wall) && abs(x_vel) > 2 && alarm[6] == -1
{
    alarm[5] = 10;
    if alarm[7] == -1 
    {
        x_vel += 2*sign(x_vel);
        alarm[7] = 60;
    }
    sprite_index = powerup_sprite_shell;
    state = state.slide;
    
}

// Goes to crawl_shell state
if (down) && shell_on_player = 1 && !place_meeting(x+10,y,obj_wall) && !place_meeting(x-10,y,obj_wall) && abs(x_vel) <= 2
{
    sprite_index = powerup_sprite_crawl_shell;
    state = state.crawl_shell;
}

// Goes to crawl state
if (down) && shell_on_player = 0 && !place_meeting(x+10,y,obj_wall) && !place_meeting(x-10,y,obj_wall)
{
    sprite_index = powerup_sprite_crawl;
    state = state.crawl;
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




