var scale = argument0;

d3d_transform_add_scaling(scale, scale, scale);

d3d_primitive_begin(pr_linelist);
d3d_vertex_colour(-100, 0, 0, make_colour_rgb(255, 0, 0), 1);
d3d_vertex_colour(100, 0, 0, make_colour_rgb(255, 0, 0), 1);
d3d_vertex_colour(100, 5, 0, make_colour_rgb(255, 0, 0), 1);
d3d_vertex_colour(100, -5, 0, make_colour_rgb(255, 0, 0), 1);
d3d_vertex_colour(100, 5, 0, make_colour_rgb(255, 0, 0), 1);
d3d_vertex_colour(110, 0, 0, make_colour_rgb(255, 0, 0), 1);
d3d_vertex_colour(100, -5, 0, make_colour_rgb(255, 0, 0), 1);
d3d_vertex_colour(110, 0, 0, make_colour_rgb(255, 0, 0), 1);

d3d_vertex_colour(0, -100, 0, make_colour_rgb(0, 255, 0), 1);
d3d_vertex_colour(0, 100, 0, make_colour_rgb(0, 255, 0), 1);
d3d_vertex_colour(5, 100, 0, make_colour_rgb(0, 255, 0), 1);
d3d_vertex_colour(-5, 100, 0, make_colour_rgb(0, 255, 0), 1);
d3d_vertex_colour(5, 100, 0, make_colour_rgb(0, 255, 0), 1);
d3d_vertex_colour(0,110, 0, make_colour_rgb(0, 255, 0), 1);
d3d_vertex_colour(-5, 100, 0, make_colour_rgb(0, 255, 0), 1);
d3d_vertex_colour(0, 110, 0, make_colour_rgb(0, 255, 0), 1);

d3d_vertex_colour(0, 0, -100, make_colour_rgb(0, 0, 255), 1);
d3d_vertex_colour(0, 0, 100, make_colour_rgb(0, 0, 255), 1);
d3d_vertex_colour(0, 5, 100, make_colour_rgb(0, 0, 255), 1);
d3d_vertex_colour(0, -5, 100, make_colour_rgb(0, 0, 255), 1);
d3d_vertex_colour(0, 5,  100, make_colour_rgb(0, 0, 255), 1);
d3d_vertex_colour(0, 0,110, make_colour_rgb(0, 0, 255), 1);
d3d_vertex_colour(0, -5, 100, make_colour_rgb(0, 0, 255), 1);
d3d_vertex_colour(0, 0, 110, make_colour_rgb(0, 0, 255), 1);

d3d_primitive_end();
