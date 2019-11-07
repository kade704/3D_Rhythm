var name = argument0;

var data;

if(file_exists(name))
{
    var file = file_text_open_read(name);    

    var count;
    for(count = 0; !file_text_eof(file); count++)
    {
        data[count, 0] = file_text_read_real(file);
        data[count, 1] = file_text_read_real(file);
        file_text_readln(file);
    }
    file_text_close(file);
    
    return data;
}
else 
{
    show_error("[Error] File Open Failed -> " + name, true);
    return noone;
}

