var _index = argument0;
var _song = argument1;
var _artist = argument2;
var _name = argument3;
var _bpm = argument4;
var _path = argument5;

ds_grid_add(Songs, 0, _index, _index);
ds_grid_add(Songs, 1, _index, _song);
ds_grid_add(Songs, 2, _index, _artist);
ds_grid_add(Songs, 3, _index, _name);
ds_grid_add(Songs, 4, _index, _bpm);
ds_grid_add(Songs, 5, _index, _path);
