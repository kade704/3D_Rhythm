var Size = argument0;
var Colour = argument1;

d3d_primitive_begin(pr_linelist);
d3d_vertex_colour(-Size, -Size, -Size, Colour, 1.0);
d3d_vertex_colour(-Size, -Size,  Size, Colour, 1.0);
d3d_vertex_colour(-Size, -Size, -Size, Colour, 1.0);
d3d_vertex_colour( Size, -Size, -Size, Colour, 1.0);
d3d_vertex_colour(-Size, -Size,  Size, Colour, 1.0);
d3d_vertex_colour( Size, -Size,  Size, Colour, 1.0);
d3d_vertex_colour( Size, -Size, -Size, Colour, 1.0);
d3d_vertex_colour( Size, -Size,  Size, Colour, 1.0);

d3d_vertex_colour(-Size, Size, -Size, Colour, 1.0);
d3d_vertex_colour(-Size, Size,  Size, Colour, 1.0);
d3d_vertex_colour(-Size, Size, -Size, Colour, 1.0);
d3d_vertex_colour( Size, Size, -Size, Colour, 1.0);
d3d_vertex_colour(-Size, Size,  Size, Colour, 1.0);
d3d_vertex_colour( Size, Size,  Size, Colour, 1.0);
d3d_vertex_colour( Size, Size, -Size, Colour, 1.0);
d3d_vertex_colour( Size, Size,  Size, Colour, 1.0);

d3d_vertex_colour(-Size, -Size, -Size, Colour, 1.0);
d3d_vertex_colour(-Size,  Size, -Size, Colour, 1.0);
d3d_vertex_colour( Size, -Size, -Size, Colour, 1.0);
d3d_vertex_colour( Size,  Size, -Size, Colour, 1.0);
d3d_vertex_colour(-Size, -Size,  Size, Colour, 1.0);
d3d_vertex_colour(-Size,  Size,  Size, Colour, 1.0);
d3d_vertex_colour( Size, -Size,  Size, Colour, 1.0);
d3d_vertex_colour( Size,  Size,  Size, Colour, 1.0);

d3d_primitive_end();
