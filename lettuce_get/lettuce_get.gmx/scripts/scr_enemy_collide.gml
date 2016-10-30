// Shell Collision
if (place_meeting(x,y,obj_shell))
{
    other_shell = instance_place(x,y,obj_shell);
    other_shell.x_vel *= -1;
    instance_destroy();
    global.score += points;
    audio_play_sound(sound_hurt,0,0);
    obj_player.shell_just_thrown = 0;
}

// Fireball Collision
if (place_meeting(x,y,obj_fireball)) 
{
    instance_destroy();
    with obj_fireball instance_destroy();
    global.score += points;
    audio_play_sound(sound_hurt,0,0);
}

if position_meeting(x,y + round(sprite_height/2),obj_platform_moving_v) && position_meeting(x,y - round(sprite_height/2),obj_wall)
instance_destroy();

// Collision with player
if obj_player.invincible = 0 && place_meeting(x,y,obj_player)
{
    if ( obj_player.y + obj_player.sprite_height/2 < y) // Are we halfway above the enemy? colliding from the top.
    {    
        // Checks what happens when we jump on the enemy
        if bouncey == 1 && spikey == 0                  // Bounce off no damage
        {
            with (obj_player) 
            {
                alarm[4] = 40;
                if (jump_held)
                {
                    y_vel = -jumpspeed * 1.25;
                }
                else
                {
                    y_vel = -jumpspeed;
                }
            }
            audio_play_sound(sound_jump,0,0);
        }
        else if bouncey == 1 && spikey == 1                  // Bounce off take damage
        {
            with (obj_player) 
            {
                alarm[4] = 40;
                if (jump_held)
                {
                    y_vel = -jumpspeed * 1.25;
                }
                else
                {
                    y_vel = -jumpspeed;
                }
            }
            audio_play_sound(sound_jump,0,0);
            if obj_player.shell_on_player == 0
            {
                scr_death();
            }
            else
            {
                obj_player.shell_hp -= 1;
                audio_play_sound(sound_player_hurt,0,0);
                obj_player.invincible = 1;
                obj_player.alarm[1] = 60;
                obj_player.alarm[2] = 1;
            }
        }
        else                                             // Don't bounce take damage?
        {
            if obj_player.shell_on_player == 0
            {
                scr_death();
            }
            else
            {
                obj_player.shell_hp -= 1;
                audio_play_sound(sound_player_hurt,0,0);
                obj_player.invincible = 1;
                obj_player.alarm[1] = 60;
                obj_player.alarm[2] = 1;
            }
        }
    }
    else
    {
        if obj_player.shell_on_player == 0
            {
                scr_death();
            }
            else
            {
                obj_player.shell_hp -= 1;
                audio_play_sound(sound_player_hurt,0,0);
                obj_player.invincible = 1;
                obj_player.alarm[1] = 60;
                obj_player.alarm[2] = 1;
            }
    }
}

