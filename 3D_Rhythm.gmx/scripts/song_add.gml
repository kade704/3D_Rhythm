///song_add(index, song, artist, name, bpm, path, startTime, highlightTime)

var _index = argument0;
var _song = argument1;
var _artist = argument2;
var _name = argument3;
var _bpm = argument4;
var _path = argument5;
var _startTime = argument6;
var _highlightTime = argument7;

ds_grid_add(obj_Jukebox.Songs, 0, _index, _index);
ds_grid_add(obj_Jukebox.Songs, 1, _index, _song);
ds_grid_add(obj_Jukebox.Songs, 2, _index, _artist);
ds_grid_add(obj_Jukebox.Songs, 3, _index, _name);
ds_grid_add(obj_Jukebox.Songs, 4, _index, _bpm);
ds_grid_add(obj_Jukebox.Songs, 5, _index, _path);
ds_grid_add(obj_Jukebox.Songs, 6, _index, _startTime);
ds_grid_add(obj_Jukebox.Songs, 7, _index, _highlightTime);
