// Changes sprite based on powerup
powerup_sprite = spr_player_grease;
powerup_sprite_shell = spr_player_slide_grease;
powerup_sprite_crawl = spr_player_crawl_grease;
powerup_sprite_no_shell = spr_player_no_shell_grease;
powerup_sprite_crawl_shell = spr_player_crawl_shell_grease;
powerup_sprite_climb =  spr_player_climb_grease;

// Changes Sprite Based on Shell
if shell_on_player == 0 
{
    powerup_sprite_climb = spr_player_climb_grease;
    powerup_sprite = spr_player_no_shell_grease;
}
else if shell_on_player == 1 
{
    powerup_sprite_climb = spr_player_climb_shell_grease;
    powerup_sprite = spr_player_grease;
}

obj_player.x_accel = (1/24);
