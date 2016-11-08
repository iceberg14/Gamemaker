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
    
    for (var i = 0; i < 4; i += 1)
    {
        for (var j = 0; j > 5; j += 1)
        {
            global.lvls[i, j] = file_text_read_real(Load_file);
            file_text_readln(Load_file);
        }
    }
    
    global.Loaded = 1;
    file_text_close(Load_file);
    global.checkpointR = 0;
    
}
else
{
global.Loaded = 0;
}
room_goto(Map);
    
