///draw_model(px, py, pz, vx, vy, vz, nx, ny, nz, model, size, alpha)

var _px = argument0;
var _py = argument1;
var _pz = argument2;
var _vx = argument3;
var _vy = argument4;
var _vz = argument5;
var _nx = argument6;
var _ny = argument7;
var _nz = argument8;
var _model = argument9;
var _size = argument10;
var _alpha = argument11;

d3d_transform_set_identity();
d3d_primitive_begin(pr_trianglelist);

for(var i = 0; i < array_height_2d(_model); i++)
{
    d3d_vertex_colour(_model[i, 0] * _size, _model[i, 1] * _size, _model[i, 2] * _size, c_white, _alpha);
}

d3d_primitive_end();
d3d_transform_set_identity();
