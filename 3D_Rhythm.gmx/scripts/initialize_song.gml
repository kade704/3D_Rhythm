var _index = argument0;
var _song = argument1;
var _name = argument2;
var _bpm = argument3;

ds_grid_add(Songs, 0, _index, _index);
ds_grid_add(Songs, 1, _index, _song);
ds_grid_add(Songs, 2, _index, _name);
ds_grid_add(Songs, 3, _index, _bpm);
