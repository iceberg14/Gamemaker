switch (vpos)
{
    case 0:
    {
        keyboard_key_press(vk_escape);
        keyboard_key_release(vk_escape);
        break;
    }
    case 1:
    {
        keyboard_key_press(vk_escape);
        keyboard_key_release(vk_escape);
        audio_stop_all();
        audio_play_sound(sound_title,0,1);
        room_goto(Main_Menu);
        break;
    }
    case 2:
    {
        game_end();
        break;
    }
    default: break;
}
