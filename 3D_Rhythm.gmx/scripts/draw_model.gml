///draw_model(px, py, pz, fx, fy, fz, rx, ry, rz, ux, uy, uz, shader, buffer, texture, size)

var _px = argument0;
var _py = argument1;
var _pz = argument2;
var _fx = argument3;
var _fy = argument4;
var _fz = argument5;
var _rx = argument6;
var _ry = argument7;
var _rz = argument8;
var _ux = argument9;
var _uy = argument10;
var _uz = argument11;
var _shader = argument12;
var _buffer = argument13;
var _texture = argument14;
var _size = argument15;

shader_set(_shader);
shader_set_uniform_vec3(_shader, "_position", _px, _py, _pz);
shader_set_uniform_vec3(_shader, "_direction", _fx, _fy, _fz);
shader_set_uniform_vec3(_shader, "_side", _rx, _ry, _rz);
shader_set_uniform_vec3(_shader, "_up", _ux, _uy, _uz);
shader_set_uniform_float(_shader, "_size", _size);
vertex_submit(_buffer, pr_trianglelist, _texture);
shader_reset();
