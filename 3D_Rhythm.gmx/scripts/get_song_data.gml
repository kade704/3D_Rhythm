var name = argument0;

var data = noone;
data[0, 0] = 0;
data[0, 1] = 1;

if(file_exists(name))
{
    var file = file_text_open_read(name);    

    for(var i = 1; !file_text_eof(file); i++)
    {
        data[i, 0] = file_text_read_real(file);
        data[i, 1] = file_text_read_real(file);
        file_text_readln(file);
    }
    file_text_close(file);
    
    log("File Successfully Loaded : " + name);
    return data;
}
else 
{
    error("File could not open. : " + name);
    return noone;
}
