var _tiles = argument0;

for(var i = 0; i < array_length_1d(_tiles); i++)
{
    if(_tiles[i].Alpha > 0)
    {
        return false;
    }
    
    return true;
}
