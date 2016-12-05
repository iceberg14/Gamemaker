filename = string("Slot_" + string(global.slot));
if file_exists(filename) file_delete(filename);
    Save_file = file_text_open_write(working_directory + filename + ".txt");
    //Save_file_test = file_text_open_write(working_directory + "Save_test.txt");
    
for (var i = 0; i < 4; i += 1)
{
    for (var j = 0; j < 4; j += 1)
    {
        cell = global.map_1[i, j];
        file_text_write_real(Save_file,cell);
        file_text_writeln(Save_file)
    }
}
file_text_close(Save_file);
