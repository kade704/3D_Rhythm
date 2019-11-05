var _index = argument0;
var _colour = argument1;

d3d_transform_set_identity();
d3d_primitive_begin(pr_linestrip);
d3d_vertex_colour(global.Vertices[_index, 0], global.Vertices[_index, 1], global.Vertices[_index, 2], _colour, 1);
d3d_vertex_colour(global.Vertices[_index + 1, 0], global.Vertices[_index + 1, 1], global.Vertices[_index + 1, 2], _colour, 1);
d3d_vertex_colour(global.Vertices[_index + 3, 0], global.Vertices[_index + 3, 1], global.Vertices[_index + 3, 2], _colour, 1);
d3d_vertex_colour(global.Vertices[_index + 2, 0], global.Vertices[_index + 2, 1], global.Vertices[_index + 2, 2], _colour, 1);
d3d_vertex_colour(global.Vertices[_index, 0], global.Vertices[_index, 1], global.Vertices[_index, 2], _colour, 1);
d3d_primitive_end();
