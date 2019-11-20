///shader_set_uniform_vec3(shader, name, x, y, z)

var _shader = argument0;
var _name = argument1;
var _x = argument2;
var _y = argument3;
var _z = argument4;

shader_set_uniform_f(shader_get_uniform(_shader, _name), _x, _y, _z);
