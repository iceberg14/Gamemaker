if file_exists("Save.txt")
{

    Load_file = file_text_open_read(working_directory + "Save.txt");
    Load_room = file_text_read_real(Load_file);
    file_text_readln(Load_file);
    global.Load_x = file_text_read_real(Load_file);
    file_text_readln(Load_file);
    global.Load_y = file_text_read_real(Load_file);
    global.Loaded = 1;
    
    file_text_close(Load_file);
    room_goto(Load_room);
    
    
}
else
{
Loaded = 0;
}
    
