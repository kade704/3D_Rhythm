///draw_quad(px, py, pz, fx, fy, fz, sx, sy, sz, ux, uy, uz, size, edge, colour, alpha)

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
var _size = argument12 / 2;
var _edge = argument13;
var _colour = argument14;
var _alpha = argument15;

//  3 ┌───┐ 4
//    │ ↑ │
//  1 └───┘ 2

var x1 = _px + (_rx * _size) - (_fx * _size);
var y1 = _py + (_ry * _size) - (_fy * _size);
var z1 = _pz + (_rz * _size) - (_fz * _size);

var x2 = _px - (_rx * _size) - (_fx * _size);
var y2 = _py - (_ry * _size) - (_fy * _size);
var z2 = _pz - (_rz * _size) - (_fz * _size);

var x3 = _px + (_rx * _size) + (_fx * _size);
var y3 = _py + (_ry * _size) + (_fy * _size);
var z3 = _pz + (_rz * _size) + (_fz * _size);

var x4 = _px - (_rx * _size) + (_fx * _size);
var y4 = _py - (_ry * _size) + (_fy * _size);
var z4 = _pz - (_rz * _size) + (_fz * _size);

var ex1 = _px + (_rx * (_size - _edge)) - (_fx * (_size - _edge));
var ey1 = _py + (_ry * (_size - _edge)) - (_fy * (_size - _edge));
var ez1 = _pz + (_rz * (_size - _edge)) - (_fz * (_size - _edge));

var ex2 = _px - (_rx * (_size - _edge)) - (_fx * (_size - _edge));
var ey2 = _py - (_ry * (_size - _edge)) - (_fy * (_size - _edge));
var ez2 = _pz - (_rz * (_size - _edge)) - (_fz * (_size - _edge));

var ex3 = _px + (_rx * (_size - _edge)) + (_fx * (_size - _edge));
var ey3 = _py + (_ry * (_size - _edge)) + (_fy * (_size - _edge));
var ez3 = _pz + (_rz * (_size - _edge)) + (_fz * (_size - _edge));

var ex4 = _px - (_rx * (_size - _edge)) + (_fx * (_size - _edge));
var ey4 = _py - (_ry * (_size - _edge)) + (_fy * (_size - _edge));
var ez4 = _pz - (_rz * (_size - _edge)) + (_fz * (_size - _edge));

d3d_primitive_begin(pr_trianglelist);

d3d_vertex_colour(ex2, ey2, ez2, _colour, _alpha);
d3d_vertex_colour(ex1, ey1, ez1, _colour, _alpha);
d3d_vertex_colour(x1, y1, z1, _colour, _alpha);

d3d_vertex_colour(x2, y2, z2, _colour, _alpha);
d3d_vertex_colour(ex2, ey2, ez2, _colour, _alpha);
d3d_vertex_colour(x1, y1, z1, _colour, _alpha);


d3d_vertex_colour(ex3, ey3, ez3, _colour, _alpha);
d3d_vertex_colour(ex4, ey4, ez4, _colour, _alpha);
d3d_vertex_colour(x4, y4, z4, _colour, _alpha);

d3d_vertex_colour(x3, y3, z3, _colour, _alpha);
d3d_vertex_colour(ex3, ey3, ez3, _colour, _alpha);
d3d_vertex_colour(x4, y4, z4, _colour, _alpha);


d3d_vertex_colour(ex1, ey1, ez1, _colour, _alpha);
d3d_vertex_colour(ex3, ey3, ez3, _colour, _alpha);
d3d_vertex_colour(x3, y3, z3, _colour, _alpha);

d3d_vertex_colour(x1, y1, z1, _colour, _alpha);
d3d_vertex_colour(ex1, ey1, ez1, _colour, _alpha);
d3d_vertex_colour(x3, y3, z3, _colour, _alpha);


d3d_vertex_colour(ex4, ey4, ez4, _colour, _alpha);
d3d_vertex_colour(ex2, ey2, ez2, _colour, _alpha);
d3d_vertex_colour(x2, y2, z2, _colour, _alpha);

d3d_vertex_colour(x4, y4, z4, _colour, _alpha);
d3d_vertex_colour(ex4, ey4, ez4, _colour, _alpha);
d3d_vertex_colour(x2, y2, z2, _colour, _alpha);

d3d_primitive_end();

d3d_transform_set_identity();
