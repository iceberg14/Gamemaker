if file_exists("Save.sav")
{
    Load_file = file_text_open_read("Save.sav");
    Load_room = file_text_read_real(Load_file);
    file_text_close(Load_file);
    room_goto(Load_room);
    
}
else
{
//nothing yet
}
    
