var _index = argument0;
var _colour = argument1;

d3d_transform_set_identity();
d3d_primitive_begin(pr_linestrip);
d3d_vertex_colour(Vertices[_index, 0], Vertices[_index, 1], Vertices[_index, 2], _colour, 1);
d3d_vertex_colour(Vertices[_index + 1, 0], Vertices[_index + 1, 1], Vertices[_index + 1, 2], _colour, 1);
d3d_vertex_colour(Vertices[_index + 3, 0], Vertices[_index + 3, 1], Vertices[_index + 3, 2], _colour, 1);
d3d_vertex_colour(Vertices[_index + 2, 0], Vertices[_index + 2, 1], Vertices[_index + 2, 2], _colour, 1);
d3d_vertex_colour(Vertices[_index, 0], Vertices[_index, 1], Vertices[_index, 2], _colour, 1);
d3d_primitive_end();
