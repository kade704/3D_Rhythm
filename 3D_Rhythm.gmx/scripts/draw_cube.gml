///draw_cube(px, py, pz, vx, vy, vz, nx, ny, nz)

var _px = argument0;
var _py = argument1;
var _pz = argument2;
var _vx = argument3;
var _vy = argument4;
var _vz = argument5;
var _nx = argument6;
var _ny = argument7;
var _nz = argument8;

var _u = cross(_vx, _vy, _vz, _nx, _ny, _nz);
_u = normalize(_u[0], _u[1], _u[2]);

d3d_transform_set_identity();
d3d_primitive_begin(pr_linelist);

d3d_vertex(_px + (_vx * 5) + (_u[0] * 5) + (_nx * 5), _py + (_vy * 5) + (_u[1] * 5) + (_ny * 5), _pz + (_vz * 5) + (_u[2] * 5) + (_nz * 5));
d3d_vertex(_px - (_vx * 5) + (_u[0] * 5) + (_nx * 5), _py - (_vy * 5) + (_u[1] * 5) + (_ny * 5), _pz - (_vz * 5) + (_u[2] * 5) + (_nz * 5));
                                                                                                                                   
d3d_vertex(_px + (_vx * 5) - (_u[0] * 5) + (_nx * 5), _py + (_vy * 5) - (_u[1] * 5) + (_ny * 5), _pz + (_vz * 5) - (_u[2] * 5) + (_nz * 5));
d3d_vertex(_px - (_vx * 5) - (_u[0] * 5) + (_nx * 5), _py - (_vy * 5) - (_u[1] * 5) + (_ny * 5), _pz - (_vz * 5) - (_u[2] * 5) + (_nz * 5));
                                                                                                                                   
d3d_vertex(_px + (_vx * 5) + (_u[0] * 5) + (_nx * 5), _py + (_vy * 5) + (_u[1] * 5) + (_ny * 5), _pz + (_vz * 5) + (_u[2] * 5) + (_nz * 5));
d3d_vertex(_px + (_vx * 5) - (_u[0] * 5) + (_nx * 5), _py + (_vy * 5) - (_u[1] * 5) + (_ny * 5), _pz + (_vz * 5) - (_u[2] * 5) + (_nz * 5));
                                                                                                                                   
d3d_vertex(_px - (_vx * 5) + (_u[0] * 5) + (_nx * 5), _py - (_vy * 5) + (_u[1] * 5) + (_ny * 5), _pz - (_vz * 5) + (_u[2] * 5) + (_nz * 5));
d3d_vertex(_px - (_vx * 5) - (_u[0] * 5) + (_nx * 5), _py - (_vy * 5) - (_u[1] * 5) + (_ny * 5), _pz - (_vz * 5) - (_u[2] * 5) + (_nz * 5));
                                                                                                                                   
                                                                                                                                   
d3d_vertex(_px + (_vx * 5) + (_u[0] * 5) - (_nx * 5), _py + (_vy * 5) + (_u[1] * 5) - (_ny * 5), _pz + (_vz * 5) + (_u[2] * 5) - (_nz * 5));
d3d_vertex(_px - (_vx * 5) + (_u[0] * 5) - (_nx * 5), _py - (_vy * 5) + (_u[1] * 5) - (_ny * 5), _pz - (_vz * 5) + (_u[2] * 5) - (_nz * 5));
                                                                                                                                   
d3d_vertex(_px + (_vx * 5) - (_u[0] * 5) - (_nx * 5), _py + (_vy * 5) - (_u[1] * 5) - (_ny * 5), _pz + (_vz * 5) - (_u[2] * 5) - (_nz * 5));
d3d_vertex(_px - (_vx * 5) - (_u[0] * 5) - (_nx * 5), _py - (_vy * 5) - (_u[1] * 5) - (_ny * 5), _pz - (_vz * 5) - (_u[2] * 5) - (_nz * 5));
                                                                                                                                   
d3d_vertex(_px + (_vx * 5) + (_u[0] * 5) - (_nx * 5), _py + (_vy * 5) + (_u[1] * 5) - (_ny * 5), _pz + (_vz * 5) + (_u[2] * 5) - (_nz * 5));
d3d_vertex(_px + (_vx * 5) - (_u[0] * 5) - (_nx * 5), _py + (_vy * 5) - (_u[1] * 5) - (_ny * 5), _pz + (_vz * 5) - (_u[2] * 5) - (_nz * 5));
                                                                                                                                   
d3d_vertex(_px - (_vx * 5) + (_u[0] * 5) - (_nx * 5), _py - (_vy * 5) + (_u[1] * 5) - (_ny * 5), _pz - (_vz * 5) + (_u[2] * 5) - (_nz * 5));
d3d_vertex(_px - (_vx * 5) - (_u[0] * 5) - (_nx * 5), _py - (_vy * 5) - (_u[1] * 5) - (_ny * 5), _pz - (_vz * 5) - (_u[2] * 5) - (_nz * 5));


d3d_primitive_end();
d3d_transform_set_identity();
