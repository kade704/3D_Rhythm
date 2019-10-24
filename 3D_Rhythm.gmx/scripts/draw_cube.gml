var Size = argument0;

d3d_primitive_begin(pr_linelist);
d3d_vertex(-Size, -Size, -Size);
d3d_vertex(-Size, -Size,  Size);
d3d_vertex(-Size, -Size, -Size);
d3d_vertex( Size, -Size, -Size);
d3d_vertex(-Size, -Size,  Size);
d3d_vertex( Size, -Size,  Size);
d3d_vertex( Size, -Size, -Size);
d3d_vertex( Size, -Size,  Size);

d3d_vertex(-Size, Size, -Size);
d3d_vertex(-Size, Size,  Size);
d3d_vertex(-Size, Size, -Size);
d3d_vertex( Size, Size, -Size);
d3d_vertex(-Size, Size,  Size);
d3d_vertex( Size, Size,  Size);
d3d_vertex( Size, Size, -Size);
d3d_vertex( Size, Size,  Size);

d3d_vertex(-Size, -Size, -Size);
d3d_vertex(-Size,  Size, -Size);
d3d_vertex( Size, -Size, -Size);
d3d_vertex( Size,  Size, -Size);
d3d_vertex(-Size, -Size,  Size);
d3d_vertex(-Size,  Size,  Size);
d3d_vertex( Size, -Size,  Size);
d3d_vertex( Size,  Size,  Size);

d3d_primitive_end();
