if file_exists("Save.txt")
{

    Load_file = file_text_open_read(working_directory + "Save.txt");
    /*
    Load_room = file_text_read_real(Load_file);
    file_text_readln(Load_file);
    global.Load_x = file_text_read_real(Load_file);
    file_text_readln(Load_file);
    global.Load_y = file_text_read_real(Load_file);
    file_text_readln(Load_file);
    global.Load_lives = file_text_read_real(Load_file);
    */
    
    for (var i = 0; i < 3; i += 1)
    {
        for (var j = 0; j < 4; j += 1)
        {
            global.map_1[i, j] = file_text_read_real(Load_file);
            file_text_readln(Load_file);
        }
    }
    
    global.Loaded = 1;
    global.lv = 0;
    file_text_close(Load_file);
    global.checkpointR = 0;
    
}
else
{
global.Loaded = 0;
}
room_goto(Map);
    
