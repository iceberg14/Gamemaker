switch(mpos)
{
    case 0:
    {
        room_goto(lvl_1);
        break;
    }
    
    case 1:
    {
        if (global.lvl_2_open == 1)
        {
            room_goto(lvl_2);
            break;
        }
    }

}
