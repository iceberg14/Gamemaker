switch (mpos)
{
    case 0:
    {
        room_goto(Map);
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
    default: break;
}
