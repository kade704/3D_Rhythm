///tile_exist(tiles, tile)

var tiles = argument0;
var tile = argument1;

for(var i = 0; i < array_height_2d(tiles); i++)
{
    for(var j = 0; j < array_length_2d(tiles, i); j++)
    {
        if(tiles[i, j].id == tile.id) return true;
    }
}

return false;
