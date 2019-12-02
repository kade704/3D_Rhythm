///draw_model(px, py, pz, fx, fy, fz, rx, ry, rz, ux, uy, uz, model, texture, size, alpha)

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
var _model = argument12;
var _texture = argument13;
var _size = argument14;
var _alpha = argument15;

shader_set(shd_Lighting);
shader_set_uniform_vec3(shd_Lighting, "_position", _px, _py, _pz);
shader_set_uniform_vec3(shd_Lighting, "_forward", _fx, _fy, _fz);
shader_set_uniform_vec3(shd_Lighting, "_right", _rx, _ry, _rz);
shader_set_uniform_vec3(shd_Lighting, "_up", _ux, _uy, _uz);
shader_set_uniform_float(shd_Lighting, "_size", _size);
shader_set_uniform_float(shd_Lighting, "_alpha", _alpha);
vertex_submit(_model, pr_trianglelist, _texture);
shader_reset();
