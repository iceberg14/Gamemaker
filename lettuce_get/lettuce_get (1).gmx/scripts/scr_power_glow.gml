// Changes sprite based on powerup
powerup_sprite = spr_player_glow;
powerup_sprite_shell = spr_player_slide_glow;
powerup_sprite_crawl = spr_player_crawl_glow;
powerup_sprite_no_shell = spr_player_no_shell_glow;
powerup_sprite_crawl_shell = spr_player_crawl_shell_glow;
powerup_sprite_climb =  spr_player_climb_glow;

// Changes Sprite Based on Shell
if shell_on_player == 0 
{
    powerup_sprite_climb = spr_player_climb_glow;
    powerup_sprite = spr_player_no_shell_glow;
}
else if shell_on_player == 1 
{
    powerup_sprite_climb = spr_player_climb_shell_glow;
    powerup_sprite = spr_player_glow;
}

