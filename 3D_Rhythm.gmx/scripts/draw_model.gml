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

var _u = cross(_vx, _vy, _vz, _nx, _ny, _nz);
_u = normalize(_u[0], _u[1], _u[2]);

d3d_transform_set_identity();
d3d_primitive_begin(pr_trianglelist);

for(var i = 0; i < array_height_2d(_model); i++)
{ 

    var _vpx = _px + (_vx  * _model[i, 0] * _size) + (_u[0]  * _model[i, 1] * _size) + (_nx  * _model[i, 2] * _size);
    var _vpy = _py + (_vy  * _model[i, 0] * _size) + (_u[1]  * _model[i, 1] * _size) + (_ny  * _model[i, 2] * _size);
    var _vpz = _pz + (_vz  * _model[i, 0] * _size) + (_u[2]  * _model[i, 1] * _size) + (_nz  * _model[i, 2] * _size);

    var _vn = normalize((_vx  * _model[i, 3]) + (_u[0]  * _model[i, 4]) + (_nx  * _model[i, 5]),
                       (_vy  * _model[i, 3]) + (_u[1]  * _model[i, 4]) + (_ny  * _model[i, 5]),
                       (_vz  * _model[i, 3]) + (_u[2]  * _model[i, 4]) + (_nz  * _model[i, 5]));
    
    d3d_vertex_normal_colour(_vpx, _vpy, _vpz, _vn[0], _vn[1], _vn[2], c_white, _alpha);
}

d3d_primitive_end();
d3d_transform_set_identity();
