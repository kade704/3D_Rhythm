///draw_model(px, py, pz, fx, fy, fz, rx, ry, rz, ux, uy, uz, buffer, size, colour, alpha)

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
var _buffer = argument12;
var _size = argument13;
var _colour = argument14;
var _alpha = argument15;

shader_set(shd_lighting);
shader_set_uniform_vec3(shd_lighting, "_position", _px, _py, _pz);
shader_set_uniform_vec3(shd_lighting, "_direction", _fx, _fy, _fz);
shader_set_uniform_vec3(shd_lighting, "_side", _rx, _ry, _rz);
shader_set_uniform_vec3(shd_lighting, "_up", _ux, _uy, _uz);
shader_set_uniform_float(shd_lighting, "_size", _size);
shader_set_uniform_vec4(shd_lighting, "_colour", colour_get_red(_colour) / 255, colour_get_green(_colour) / 255, colour_get_blue(_colour) / 255, _alpha);
vertex_submit(_buffer, pr_trianglelist, -1);
shader_reset();
