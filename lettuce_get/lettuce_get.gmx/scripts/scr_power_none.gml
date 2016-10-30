// Changes sprite based on powerup
powerup_sprite = spr_player_normal;
powerup_sprite_shell = spr_player_slide;
powerup_sprite_crawl = spr_player_crawl;
powerup_sprite_no_shell = spr_player_no_shell;
powerup_sprite_crawl_shell = spr_player_crawl_shell;
powerup_sprite_climb =  spr_player_climb;

// Changes Sprite Based on Shell
if shell_on_player == 0 
{
    powerup_sprite_climb = spr_player_climb;
    powerup_sprite = spr_player_no_shell;
}
else if shell_on_player == 1 
{
    powerup_sprite_climb = spr_player_climb_shell;
    powerup_sprite = spr_player_normal;
}

