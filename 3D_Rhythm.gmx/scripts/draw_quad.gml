var colour = make_colour_rgb(255, 255, 255);

d3d_transform_set_identity();
d3d_primitive_begin(pr_linestrip);
d3d_vertex_colour(vertices[0, 0], vertices[0, 1], vertices[0, 2], colour, 1);
d3d_vertex_colour(vertices[1, 0], vertices[1, 1], vertices[1, 2], colour, 1);
d3d_vertex_colour(vertices[3, 0], vertices[3, 1], vertices[3, 2], colour, 1);
d3d_vertex_colour(vertices[2, 0], vertices[2, 1], vertices[2, 2], colour, 1);
d3d_vertex_colour(vertices[0, 0], vertices[0, 1], vertices[0, 2], colour, 1);
d3d_primitive_end();
