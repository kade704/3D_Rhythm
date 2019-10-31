var size = argument0;
var size2 = size / 2;
var colour = argument1;
var angle = argument2;

var x1 = cos(degtorad(angle - 180)) * size;
var y1 = sin(degtorad(angle - 180)) * size;

var x2 = cos(degtorad(angle - 135)) * size * sqrt(2);
var y2 = sin(degtorad(angle - 135)) * size * sqrt(2);

var x3 = cos(degtorad(angle - 90)) * size;
var y3 = sin(degtorad(angle - 90)) * size;


d3d_primitive_begin(pr_linelist);

d3d_vertex_colour(0,   size2, 0,  colour, 1);
d3d_vertex_colour(x1,  size2, y1, colour, 1);
d3d_vertex_colour(x1,  size2, y1, colour, 1);
d3d_vertex_colour(x2,  size2, y2, colour, 1);
d3d_vertex_colour(x2,  size2, y2, colour, 1);
d3d_vertex_colour(x3,  size2, y3, colour, 1);
d3d_vertex_colour(x3,  size2, y3, colour, 1);
d3d_vertex_colour(0,   size2, 0,  colour, 1);

d3d_vertex_colour(0,  -size2, 0,  colour, 1);
d3d_vertex_colour(x1, -size2, y1, colour, 1);
d3d_vertex_colour(x1, -size2, y1, colour, 1);
d3d_vertex_colour(x2, -size2, y2, colour, 1);
d3d_vertex_colour(x2, -size2, y2, colour, 1);
d3d_vertex_colour(x3, -size2, y3, colour, 1);
d3d_vertex_colour(x3, -size2, y3, colour, 1);
d3d_vertex_colour(0,  -size2, 0,  colour, 1);

d3d_vertex_colour(0,  -size2, 0, colour, 1);
d3d_vertex_colour(0,   size2, 0, colour, 1);
d3d_vertex_colour(x1, -size2, y1, colour, 1);
d3d_vertex_colour(x1,  size2, y1, colour, 1);
d3d_vertex_colour(x2, -size2, y2, colour, 1);
d3d_vertex_colour(x2,  size2, y2, colour, 1);
d3d_vertex_colour(x3, -size2, y3, colour, 1);
d3d_vertex_colour(x3,  size2, y3, colour, 1);

d3d_primitive_end();
