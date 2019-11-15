///draw_quad(px, py, pz, vx, vy, vz, nx, ny, nz, size, edge, colour, alpha)

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

//  3 ┌───┐ 4
//    │ ↑ │
//  1 └───┘ 2

var x1 = _px + (u[0] * _size) - (_vx * _size);
var y1 = _py + (u[1] * _size) - (_vy * _size);
var z1 = _pz + (u[2] * _size) - (_vz * _size);

var x2 = _px - (u[0] * _size) - (_vx * _size);
var y2 = _py - (u[1] * _size) - (_vy * _size);
var z2 = _pz - (u[2] * _size) - (_vz * _size);

var x3 = _px + (u[0] * _size) + (_vx * _size);
var y3 = _py + (u[1] * _size) + (_vy * _size);
var z3 = _pz + (u[2] * _size) + (_vz * _size);

var x4 = _px - (u[0] * _size) + (_vx * _size);
var y4 = _py - (u[1] * _size) + (_vy * _size);
var z4 = _pz - (u[2] * _size) + (_vz * _size);

var ex1 = _px + (u[0] * (_size - _edge)) - (_vx * (_size - _edge));
var ey1 = _py + (u[1] * (_size - _edge)) - (_vy * (_size - _edge));
var ez1 = _pz + (u[2] * (_size - _edge)) - (_vz * (_size - _edge));

var ex2 = _px - (u[0] * (_size - _edge)) - (_vx * (_size - _edge));
var ey2 = _py - (u[1] * (_size - _edge)) - (_vy * (_size - _edge));
var ez2 = _pz - (u[2] * (_size - _edge)) - (_vz * (_size - _edge));

var ex3 = _px + (u[0] * (_size - _edge)) + (_vx * (_size - _edge));
var ey3 = _py + (u[1] * (_size - _edge)) + (_vy * (_size - _edge));
var ez3 = _pz + (u[2] * (_size - _edge)) + (_vz * (_size - _edge));

var ex4 = _px - (u[0] * (_size - _edge)) + (_vx * (_size - _edge));
var ey4 = _py - (u[1] * (_size - _edge)) + (_vy * (_size - _edge));
var ez4 = _pz - (u[2] * (_size - _edge)) + (_vz * (_size - _edge));

d3d_primitive_begin(pr_trianglelist);

d3d_vertex_colour(x1, y1, z1, _colour, _alpha);
d3d_vertex_colour(ex1, ey1, ez1, _colour, _alpha);
d3d_vertex_colour(ex2, ey2, ez2, _colour, _alpha);

d3d_vertex_colour(x1, y1, z1, _colour, _alpha);
d3d_vertex_colour(ex2, ey2, ez2, _colour, _alpha);
d3d_vertex_colour(x2, y2, z2, _colour, _alpha);


d3d_vertex_colour(x4, y4, z4, _colour, _alpha);
d3d_vertex_colour(ex4, ey4, ez4, _colour, _alpha);
d3d_vertex_colour(ex3, ey3, ez3, _colour, _alpha);

d3d_vertex_colour(x4, y4, z4, _colour, _alpha);
d3d_vertex_colour(ex3, ey3, ez3, _colour, _alpha);
d3d_vertex_colour(x3, y3, z3, _colour, _alpha);


d3d_vertex_colour(x3, y3, z3, _colour, _alpha);
d3d_vertex_colour(ex3, ey3, ez3, _colour, _alpha);
d3d_vertex_colour(ex1, ey1, ez1, _colour, _alpha);

d3d_vertex_colour(x3, y3, z3, _colour, _alpha);
d3d_vertex_colour(ex1, ey1, ez1, _colour, _alpha);
d3d_vertex_colour(x1, y1, z1, _colour, _alpha);


d3d_vertex_colour(x2, y2, z2, _colour, _alpha);
d3d_vertex_colour(ex2, ey2, ez2, _colour, _alpha);
d3d_vertex_colour(ex4, ey4, ez4, _colour, _alpha);

d3d_vertex_colour(x2, y2, z2, _colour, _alpha);
d3d_vertex_colour(ex4, ey4, ez4, _colour, _alpha);
d3d_vertex_colour(x4, y4, z4, _colour, _alpha);

d3d_primitive_end();
