///draw_quad(px, py, pz, vx, vy, vz, nx, ny, nz, edge, colour)

var _px = argument0;
var _py = argument1;
var _pz = argument2;
var _vx = argument3;
var _vy = argument4;
var _vz = argument5;
var _nx = argument6;
var _ny = argument7;
var _nz = argument8;
var _edge = argument9;
var _colour = argument10;

var u = cross(_vx, _vy, _vz, _nx, _ny, _nz);
u = normalize(u[0], u[1], u[2]);

//  3 ┌───┐ 4
//    │ ↑ │
//  1 └───┘ 2

var x1 = _px + (u[0] * 5);
var y1 = _py + (u[1] * 5);
var z1 = _pz + (u[2] * 5);

var x2 = _px - (u[0] * 5);
var y2 = _py - (u[1] * 5);
var z2 = _pz - (u[2] * 5);

var x3 = x1 + (_vx * 10);
var y3 = y1 + (_vy * 10);
var z3 = z1 + (_vz * 10);

var x4 = x2 + (_vx * 10);
var y4 = y2 + (_vy * 10);
var z4 = z2 + (_vz * 10);

var ex1 = x1 - (u[0] * _edge) + (_vx * _edge);
var ey1 = y1 - (u[1] * _edge) + (_vy * _edge);
var ez1 = z1 - (u[2] * _edge) + (_vz * _edge);

var ex2 = x2 + (u[0] * _edge) + (_vx * _edge);
var ey2 = y2 + (u[1] * _edge) + (_vy * _edge);
var ez2 = z2 + (u[2] * _edge) + (_vz * _edge);

var ex3 = x3 - (u[0] * _edge) - (_vx * _edge);
var ey3 = y3 - (u[1] * _edge) - (_vy * _edge);
var ez3 = z3 - (u[2] * _edge) - (_vz * _edge);

var ex4 = x4 + (u[0] * _edge) - (_vx * _edge);
var ey4 = y4 + (u[1] * _edge) - (_vy * _edge);
var ez4 = z4 + (u[2] * _edge) - (_vz * _edge);

d3d_primitive_begin(pr_trianglelist);

d3d_vertex_colour(x1, y1, z1, _colour, 1);
d3d_vertex_colour(ex1, ey1, ez1, _colour, 1);
d3d_vertex_colour(ex2, ey2, ez2, _colour, 1);

d3d_vertex_colour(x1, y1, z1, _colour, 1);
d3d_vertex_colour(ex2, ey2, ez2, _colour, 1);
d3d_vertex_colour(x2, y2, z2, _colour, 1);


d3d_vertex_colour(x4, y4, z4, _colour, 1);
d3d_vertex_colour(ex4, ey4, ez4, _colour, 1);
d3d_vertex_colour(ex3, ey3, ez3, _colour, 1);

d3d_vertex_colour(x4, y4, z4, _colour, 1);
d3d_vertex_colour(ex3, ey3, ez3, _colour, 1);
d3d_vertex_colour(x3, y3, z3, _colour, 1);


d3d_vertex_colour(x3, y3, z3, _colour, 1);
d3d_vertex_colour(ex3, ey3, ez3, _colour, 1);
d3d_vertex_colour(ex1, ey1, ez1, _colour, 1);

d3d_vertex_colour(x3, y3, z3, _colour, 1);
d3d_vertex_colour(ex1, ey1, ez1, _colour, 1);
d3d_vertex_colour(x1, y1, z1, _colour, 1);


d3d_vertex_colour(x2, y2, z2, _colour, 1);
d3d_vertex_colour(ex2, ey2, ez2, _colour, 1);
d3d_vertex_colour(ex4, ey4, ez4, _colour, 1);

d3d_vertex_colour(x2, y2, z2, _colour, 1);
d3d_vertex_colour(ex4, ey4, ez4, _colour, 1);
d3d_vertex_colour(x4, y4, z4, _colour, 1);

d3d_primitive_end();
