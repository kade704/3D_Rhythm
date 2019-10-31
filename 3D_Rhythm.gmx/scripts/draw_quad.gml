var size = argument0;
var size2 = size / 2;
var colour = argument1;

d3d_primitive_begin(pr_linelist);

d3d_vertex_colour(0,    -size2, 0, colour, 1);
d3d_vertex_colour(0,     size2, 0, colour, 1);
d3d_vertex_colour(size, -size2, 0, colour, 1);
d3d_vertex_colour(size,  size2, 0, colour, 1);
d3d_vertex_colour(0,     size2, 0, colour, 1);
d3d_vertex_colour(size,  size2, 0, colour, 1);
d3d_vertex_colour(0,    -size2, 0, colour, 1);
d3d_vertex_colour(size, -size2, 0, colour, 1);

d3d_primitive_end();
