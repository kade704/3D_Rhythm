///shader_set_uniform_float(shader, name, value)

var _shader = argument0;
var _name = argument1;
var _value = argument2;

shader_set_uniform_f(shader_get_uniform(_shader, _name), _value);
