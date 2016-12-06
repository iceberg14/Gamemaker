
filename = string("Slot_" + string(global.slot));
if file_exists(filename + ".txt")
{
    Load_file = file_text_open_read(working_directory + filename + ".txt");
    
    for (var i = 0; i < 4; i += 1)
    {
        for (var j = 0; j < 4; j += 1)
        {
            global.load[i, j] = file_text_read_real(Load_file);
            file_text_readln(Load_file);
        }
    }
    
    file_text_close(Load_file);
    global.Loaded = 1;
    global.lv = 0;
    global.checkpointR = 0;  
}

