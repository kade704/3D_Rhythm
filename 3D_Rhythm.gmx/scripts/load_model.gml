var _name = argument0;

if(file_exists(_name))
{
    var _file = file_text_open_read(_name);
    
    var _vertices = noone;
    var _indices = noone;
    var _normals = noone;
    
    var _vertexCount = 0;
    var _indexCount = 0;
    var _normalCount = 0;
    
    while(!file_text_eof(_file))
    {
        var _string = file_text_read_string(_file);
        
        var _header = string_copy(_string, 1, 2);
        
        if(_header == "v ")
        {   
            var _s = string_split(string_delete(_string, 1, 2));
            _vertices[_vertexCount, 0] = _s[0];
            _vertices[_vertexCount, 1] = _s[1];
            _vertices[_vertexCount, 2] = _s[2];
            _vertexCount++;
        }
        else if(_header == "vn")
        {
           
        }
        else if(_header == "f ")
        {
            var _s = string_split(string_delete(_string, 1, 2));
            
            
            var _v = string_copy(_s[0], 1, string_pos("/")
            
            _indices[_indexCount, 0] = string( _s[0];
            _vertices[_vertexCount, 1] = _s[1];
            _vertices[_vertexCount, 2] = _s[2];
            _vertexCount++;
        }
        else {}

        file_text_readln(_file);
    }
    
    file_text_close(_file);
    
    var _result = noone;
    for(var i = 0; i < _indexCount; i++)
    {
        _result[(i * 3) + 0, 0] = _vertices[_indices[i, 0] - 1, 0];
        _result[(i * 3) + 0, 1] = _vertices[_indices[i, 0] - 1, 1];
        _result[(i * 3) + 0, 2] = _vertices[_indices[i, 0] - 1, 2];
        //_result[(i * 3) + 0, 3] = _normals[_indices[i, 0] - 1, 2];
        
        _result[(i * 3) + 1, 0] = _vertices[_indices[i, 1] - 1, 0];
        _result[(i * 3) + 1, 1] = _vertices[_indices[i, 1] - 1, 1];
        _result[(i * 3) + 1, 2] = _vertices[_indices[i, 1] - 1, 2];
        
        _result[(i * 3) + 2, 0] = _vertices[_indices[i, 2] - 1, 0];
        _result[(i * 3) + 2, 1] = _vertices[_indices[i, 2] - 1, 1];
        _result[(i * 3) + 2, 2] = _vertices[_indices[i, 2] - 1, 2];
    }
    
    for(var i = 0; i < array_height_2d(_result); i++)
    {
        log(string(_result[i, 0]) + " " + string(_result[i, 1]) + " " + string(_result[i, 2]));
    }
    
    log("File Successfully Loaded : " + _name);
    return _result;
}
else 
{
    error("File does not exist. : " + _name);
    return noone;
}

