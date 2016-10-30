// Changes sprite based on powerup
powerup_sprite = spr_player_volcanic;
powerup_sprite_shell = spr_player_slide_volcanic;
powerup_sprite_crawl = spr_player_crawl_volcanic;
powerup_sprite_no_shell = spr_player_no_shell_volcanic;
powerup_sprite_crawl_shell = spr_player_crawl_shell_volcanic;
powerup_sprite_climb =  spr_player_climb_volcanic;

// Changes Sprite Based on Shell
if shell_on_player == 0 
{
    powerup_sprite_climb = spr_player_climb_volcanic;
    powerup_sprite = spr_player_no_shell_volcanic;
}
else if shell_on_player == 1 
{
    powerup_sprite_climb = spr_player_climb_shell_volcanic;
    powerup_sprite = spr_player_volcanic;
}

if (state = state.slide || state = state.crawl_shell) && (throw) && alarm[3] = -1
{
    alarm[3] = 20;
    fire = instance_create(x,y,obj_fireball);
    fire.x_dir = sign(x_dir);
}

