switch (vpos)
{
    case 0:
    {
        room_goto(Map);
        global.lv = 0;
        global.Loaded = 0;
        break;
    }
    case 1:
    {
        audio_stop_all();
        room_goto(Tutorial);
        global.lv = 0;
        global.Loaded = 0;
        break;
    }
    default: break;
}
