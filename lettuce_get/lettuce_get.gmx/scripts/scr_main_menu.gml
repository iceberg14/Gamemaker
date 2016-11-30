switch (mpos)
{
    case 0:
    {
        room_goto(new_game);
        global.lv = 0;
        global.Loaded = 0;
        break;
    }
    case 1:
    {
        room_goto(Options);
        break;
    }
    case 2:
    {
        room_goto(Controls);
        break;
    }
    case 3:
    {
        game_end();
        break;
    }
    case 4:
    {
        scr_load();
    }
    default: break;
}
