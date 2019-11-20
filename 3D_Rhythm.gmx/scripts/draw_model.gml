///draw_model(px, py, pz, dx, dy, dz, sx, sy, sz, ux, uy, uz, buffer, size)

var _px = argument0;
var _py = argument1;
var _pz = argument2;
var _dx = argument3;
var _dy = argument4;
var _dz = argument5;
var _sx = argument6;
var _sy = argument7;
var _sz = argument8;
var _ux = argument9;
var _uy = argument10;
var _uz = argument11;
var _buffer = argument12;
var _size = argument13;

shader_set(shd_simple);
shader_set_uniform_vec3(shd_simple, "_position", _px, _py, _pz);
shader_set_uniform_vec3(shd_simple, "_direction", _dx, _dy, _dz);
shader_set_uniform_vec3(shd_simple, "_side", _sx, _sy, _sz);
shader_set_uniform_vec3(shd_simple, "_up", _ux, _uy, _uz);
shader_set_uniform_float(shd_simple, "_size", _size);
vertex_submit(_buffer, pr_trianglelist, -1);
shader_reset();
