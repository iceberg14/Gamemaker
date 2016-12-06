
filename = "config";
if file_exists(filename) file_delete(filename);
Save_file = file_text_open_write(working_directory + "config.txt");

    
for (var i = 0; i < 4; i += 1)
{
        cell = global.config[i, 0];
        file_text_write_real(Save_file,cell);
        file_text_writeln(Save_file)
}
file_text_close(Save_file);
