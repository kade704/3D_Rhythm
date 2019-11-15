///draw_cube(px, py, pz, vx, vy, vz, nx, ny, nz, size, edge, colour, alpha)

var _px = argument0;
var _py = argument1;
var _pz = argument2;
var _vx = argument3;
var _vy = argument4;
var _vz = argument5;
var _nx = argument6;
var _ny = argument7;
var _nz = argument8;
var _size = argument9 / 2;
var _edge = argument10;
var _colour = argument11;
var _alpha = argument12;

var u = cross(_vx, _vy, _vz, _nx, _ny, _nz);
u = normalize(u[0], u[1], u[2]);


// Front
draw_quad(_px + (_vx * _size), _py + (_vy * _size), _pz + (_vz * _size), u[0], u[1], u[2], _vx, _vy, _vz, _size * 2, _edge, _colour, _alpha);

// Back
draw_quad(_px - (_vx * _size), _py - (_vy * _size), _pz - (_vz * _size), u[0], u[1], u[2], -_vx, -_vy, -_vz, _size * 2, _edge, _colour, _alpha);

//Left
draw_quad(_px + (u[0] * _size), _py + (u[1] * _size), _pz + (u[2] * _size), _vx, _vy, _vz, u[0], u[1], u[2], _size * 2, _edge, _colour, _alpha);

//Right
draw_quad(_px - (u[0] * _size), _py - (u[1] * _size), _pz - (u[2] * _size), _vx, _vy, _vz, -u[0], -u[1], -u[2], _size * 2, _edge, _colour, _alpha);

//Top
draw_quad(_px + (_nx * _size), _py + (_ny * _size), _pz + (_nz * _size), _vx, _vy, _vz, _nx, _ny, _nz, _size * 2, _edge, _colour, _alpha);

//Bottom
draw_quad(_px - (_nx * _size), _py - (_ny * _size), _pz - (_nz * _size), _vx, _vy, _vz, -_nx, -_ny, -_nz, _size * 2, _edge, _colour, _alpha);
