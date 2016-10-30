// Get inputs and check powerup
scr_get_inputs();
scr_powerup();
sprite_index = powerup_sprite_shell;

//Music

//Animation
if abs(x_vel) > 3 image_speed = 0.2;
if abs(x_vel) <= 3 image_speed = 0;

// Shell Actions
if shell_type = "volcanic" && keyboard_check_pressed(ord("C")) instance_create(x,y,obj_fireball);

// Set max speed
x_cap = 7;

// Speed Up & Friction
if x_vel !=0 && place_meeting(x,y+1,obj_wall)
{
    if (jump) x_vel += sign(x_vel);
    x_vel *= .995;
    if abs(x_vel) < .75 x_vel = 0;
}

scr_move_and_collide();

// Move to another state

// Go to normal state
if !down && place_meeting(x,y+1,obj_wall) && !place_meeting(x,y-sprite_height/2,obj_wall)
{
    state = state.normal;
}

// Go to crawl state
if shell_on_player == 0
{
    state = state.crawl;
    sprite_index = powerup_sprite_crawl;
}

// Go to crawl_shell state
if abs(x_vel) < 1 && place_meeting(x,y+1,obj_wall)
{
    state = state.crawl_shell;
    sprite_index = powerup_sprite_crawl_shell;
}
