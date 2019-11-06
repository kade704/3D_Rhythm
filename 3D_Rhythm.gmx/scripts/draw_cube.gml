var _index = argument0;
var _colour = argument1;
var _angle = argument2;

var _u = normalize(obj_Map.Vertices[_index, 0] - obj_Map.Vertices[_index + 1, 0], obj_Map.Vertices[_index, 1] - obj_Map.Vertices[_index + 1, 1], obj_Map.Vertices[_index, 2] - obj_Map.Vertices[_index + 1, 2]);

var _v1 = rotate_axis(obj_Map.Vertices[_index, 0] - obj_Map.Vertices[_index + 2, 0], obj_Map.Vertices[_index, 1] - obj_Map.Vertices[_index + 2, 1], obj_Map.Vertices[_index, 2] - obj_Map.Vertices[_index + 2, 2], _u[0], _u[1], _u[2], _angle);
var _v2 = rotate_axis(obj_Map.Vertices[_index + 1, 0] - obj_Map.Vertices[_index + 3, 0], obj_Map.Vertices[_index + 1, 1] - obj_Map.Vertices[_index + 3, 1], obj_Map.Vertices[_index + 1, 2] - obj_Map.Vertices[_index + 3, 2], _u[0], _u[1], _u[2], _angle);
var _v3 = rotate_axis((obj_Map.Vertices[_index, 0] - obj_Map.Vertices[_index + 2, 0]) * sqrt(2), (obj_Map.Vertices[_index, 1] - obj_Map.Vertices[_index + 2, 1]) * sqrt(2), (obj_Map.Vertices[_index, 2] - obj_Map.Vertices[_index + 2, 2]) * sqrt(2), _u[0], _u[1], _u[2], _angle - 45);
var _v4 = rotate_axis((obj_Map.Vertices[_index + 1, 0] - obj_Map.Vertices[_index + 3, 0]) * sqrt(2), (obj_Map.Vertices[_index + 1, 1] - obj_Map.Vertices[_index + 3, 1]) * sqrt(2), (obj_Map.Vertices[_index + 1, 2] - obj_Map.Vertices[_index + 3, 2]) * sqrt(2), _u[0], _u[1], _u[2], _angle - 45);
var _v5 = rotate_axis(obj_Map.Vertices[_index, 0] - obj_Map.Vertices[_index + 2, 0], obj_Map.Vertices[_index, 1] - obj_Map.Vertices[_index + 2, 1], obj_Map.Vertices[_index, 2] - obj_Map.Vertices[_index + 2, 2], _u[0], _u[1], _u[2], _angle - 90);
var _v6 = rotate_axis(obj_Map.Vertices[_index + 1, 0] - obj_Map.Vertices[_index + 3, 0], obj_Map.Vertices[_index + 1, 1] - obj_Map.Vertices[_index + 3, 1], obj_Map.Vertices[_index + 1, 2] - obj_Map.Vertices[_index + 3, 2], _u[0], _u[1], _u[2], _angle - 90);



d3d_transform_set_identity();
d3d_primitive_begin(pr_linelist);

d3d_vertex_colour(obj_Map.Vertices[_index, 0], obj_Map.Vertices[_index, 1], obj_Map.Vertices[_index, 2], _colour, 1);
d3d_vertex_colour(obj_Map.Vertices[_index + 1, 0], obj_Map.Vertices[_index + 1, 1], obj_Map.Vertices[_index + 1, 2], _colour, 1);
d3d_vertex_colour(obj_Map.Vertices[_index + 1, 0], obj_Map.Vertices[_index + 1, 1], obj_Map.Vertices[_index + 1, 2], _colour, 1);
d3d_vertex_colour(obj_Map.Vertices[_index + 1, 0] + _v2[0], obj_Map.Vertices[_index + 1, 1] + _v2[1], obj_Map.Vertices[_index + 1, 2] + _v2[2], _colour, 1);
d3d_vertex_colour(obj_Map.Vertices[_index + 1, 0] + _v2[0], obj_Map.Vertices[_index + 1, 1] + _v2[1], obj_Map.Vertices[_index + 1, 2] + _v2[2], _colour, 1);
d3d_vertex_colour(obj_Map.Vertices[_index, 0] + _v1[0], obj_Map.Vertices[_index, 1] + _v1[1], obj_Map.Vertices[_index, 2] + _v1[2], _colour, 1);
d3d_vertex_colour(obj_Map.Vertices[_index, 0] + _v1[0], obj_Map.Vertices[_index, 1] + _v1[1], obj_Map.Vertices[_index, 2] + _v1[2], _colour, 1);
d3d_vertex_colour(obj_Map.Vertices[_index, 0], obj_Map.Vertices[_index, 1], obj_Map.Vertices[_index, 2], _colour, 1);

d3d_vertex_colour(obj_Map.Vertices[_index, 0] + _v5[0], obj_Map.Vertices[_index, 1] + _v5[1], obj_Map.Vertices[_index, 2] + _v5[2], _colour, 1);
d3d_vertex_colour(obj_Map.Vertices[_index + 1, 0] + _v6[0], obj_Map.Vertices[_index + 1, 1] + _v6[1], obj_Map.Vertices[_index + 1, 2] + _v6[2], _colour, 1);
d3d_vertex_colour(obj_Map.Vertices[_index + 1, 0] + _v6[0], obj_Map.Vertices[_index + 1, 1] + _v6[1], obj_Map.Vertices[_index + 1, 2] + _v6[2], _colour, 1);
d3d_vertex_colour(obj_Map.Vertices[_index + 1, 0] + _v4[0], obj_Map.Vertices[_index + 1, 1] + _v4[1], obj_Map.Vertices[_index + 1, 2] + _v4[2], _colour, 1);
d3d_vertex_colour(obj_Map.Vertices[_index + 1, 0] + _v4[0], obj_Map.Vertices[_index + 1, 1] + _v4[1], obj_Map.Vertices[_index + 1, 2] + _v4[2], _colour, 1);
d3d_vertex_colour(obj_Map.Vertices[_index, 0] + _v3[0], obj_Map.Vertices[_index, 1] + _v3[1], obj_Map.Vertices[_index, 2] + _v3[2], _colour, 1);
d3d_vertex_colour(obj_Map.Vertices[_index, 0] + _v3[0], obj_Map.Vertices[_index, 1] + _v3[1], obj_Map.Vertices[_index, 2] + _v3[2], _colour, 1);
d3d_vertex_colour(obj_Map.Vertices[_index, 0] + _v5[0], obj_Map.Vertices[_index, 1] + _v5[1], obj_Map.Vertices[_index, 2] + _v5[2], _colour, 1);

d3d_vertex_colour(obj_Map.Vertices[_index, 0], obj_Map.Vertices[_index, 1], obj_Map.Vertices[_index, 2], _colour, 1);
d3d_vertex_colour(obj_Map.Vertices[_index, 0] + _v5[0], obj_Map.Vertices[_index, 1] + _v5[1], obj_Map.Vertices[_index, 2] + _v5[2], _colour, 1);
d3d_vertex_colour(obj_Map.Vertices[_index + 1, 0], obj_Map.Vertices[_index + 1, 1], obj_Map.Vertices[_index + 1, 2], _colour, 1);
d3d_vertex_colour(obj_Map.Vertices[_index + 1, 0] + _v6[0], obj_Map.Vertices[_index + 1, 1] + _v6[1], obj_Map.Vertices[_index + 1, 2] + _v6[2], _colour, 1);
d3d_vertex_colour(obj_Map.Vertices[_index + 1, 0] + _v2[0], obj_Map.Vertices[_index + 1, 1] + _v2[1], obj_Map.Vertices[_index + 1, 2] + _v2[2], _colour, 1);
d3d_vertex_colour(obj_Map.Vertices[_index + 1, 0] + _v4[0], obj_Map.Vertices[_index + 1, 1] + _v4[1], obj_Map.Vertices[_index + 1, 2] + _v4[2], _colour, 1);
d3d_vertex_colour(obj_Map.Vertices[_index, 0] + _v1[0], obj_Map.Vertices[_index, 1] + _v1[1], obj_Map.Vertices[_index, 2] + _v1[2], _colour, 1);
d3d_vertex_colour(obj_Map.Vertices[_index, 0] + _v3[0], obj_Map.Vertices[_index, 1] + _v3[1], obj_Map.Vertices[_index, 2] + _v3[2], _colour, 1);

d3d_primitive_end();
