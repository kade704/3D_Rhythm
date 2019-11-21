///shader_set_uniform_vec4(shader, name, r, g, b, a)

var _shader = argument0;
var _name = argument1;
var _r = argument2;
var _g = argument3;
var _b = argument4;
var _a = argument5;

shader_set_uniform_f(shader_get_uniform(_shader, _name), _r, _g, _b, _a);
