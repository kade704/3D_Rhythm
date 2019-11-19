///draw_model(px, py, pz, dx, dy, dz, ux, uy, uz, model, size)

var _px = argument0;
var _py = argument1;
var _pz = argument2;
var _dx = argument3;
var _dy = argument4;
var _dz = argument5;
var _ux = argument6;
var _uy = argument7;
var _uz = argument8;
var _model = argument9;
var _size = argument10;

var _s = cross(_ux, _uy, _uz, _dx, _dy, _dz);
_s = normalize(_s[0], _s[1], _s[2]);

d3d_transform_set_identity();
d3d_primitive_begin(pr_trianglelist);

for(var i = 0; i < array_height_2d(_model); i++)
{ 
    var _x = _px + (_dx * _model[i, 0] * _size) + (_ux * _model[i, 1] * _size) + (_s[0] * _model[i, 2] * _size);
    var _y = _py + (_dy * _model[i, 0] * _size) + (_uy * _model[i, 1] * _size) + (_s[1] * _model[i, 2] * _size);
    var _z = _pz + (_dz * _model[i, 0] * _size) + (_uz * _model[i, 1] * _size) + (_s[2] * _model[i, 2] * _size);

    var _n = normalize((_dx * _model[i, 3]) + (_ux * _model[i, 4]) + (_s[0] * _model[i, 5]),
                       (_dy * _model[i, 3]) + (_uy * _model[i, 4]) + (_s[1] * _model[i, 5]),
                       (_dz * _model[i, 3]) + (_uz * _model[i, 4]) + (_s[2] * _model[i, 5]));
    
    d3d_vertex_normal_colour(_x, _y, _z, _n[0], _n[1], _n[2], c_white, 1);
}

d3d_primitive_end();
d3d_transform_set_identity();
