switch (mpos)
{
    case 0:
    {
        room_goto(Play);
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
