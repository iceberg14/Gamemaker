switch (vpos)
{
    case 0:
    {
        room_goto(Audio);
        break;
    }
    case 1:
    {
        switch (hpos)
        {
            case 0:
            {
                window_set_size(400,240);
                global.res = 0;
                //display_set_gui_size(400,240);
                //surface_resize(application_surface,400,240);
                break;
            }
            case 1:
            {
                window_set_size(800,480);
                global.res = 1;
                //display_set_gui_size(800,480);
                //surface_resize(application_surface,800,480);
                break;
            }
            case 2:
            {
                window_set_size(1200,720);
                global.res = 2;
                //display_set_gui_size(1200,720);
                //surface_resize(application_surface,1200,720);
                break;
            }
            case 3:
            {
                window_set_size(1600,960);
                global.res = 3;
                //display_set_gui_size(1600,960);
                //surface_resize(application_surface,1600,960);
                break;
            }
            case 4:
            {
                window_set_size(2000,1200);
                global.res = 4;
                //display_set_gui_size(2000,1200);
                //surface_resize(application_surface,2000,1200);
                break;
            }
        }
        break;
    }
    case 2:
    {
        room_goto(Main_Menu);
        break;
    }
    default: break;
}

global.config[1,0] = window_get_width();
global.config[2,0] = window_get_height();
scr_save_config();
