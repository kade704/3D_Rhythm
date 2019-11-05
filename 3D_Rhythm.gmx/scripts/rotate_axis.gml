var _vx = argument0;
var _vy = argument1;
var _vz = argument2;
var _ux = argument3;
var _uy = argument4;
var _uz = argument5;
var _angle = degtorad(argument6);

var _matrix = noone;
_matrix[0, 0] = cos(_angle) + (_ux * _ux * (1 - cos(_angle)));
_matrix[0, 1] = (_ux * _uy * (1 - cos(_angle))) - (_uz * sin(_angle));
_matrix[0, 2] = (_ux * _uz * (1 - cos(_angle))) + (_uy * sin(_angle));

_matrix[1, 0] = (_uy * _ux * (1 - cos(_angle))) + (_uz * sin(_angle));
_matrix[1, 1] = cos(_angle) + (_uy * _uy * (1 - cos(_angle)));
_matrix[1, 2] = (_uy * _uz * (1 - cos(_angle))) - (_ux * sin(_angle));

_matrix[2, 0] = (_uz * _ux * (1 - cos(_angle))) - (_uy * sin(_angle));
_matrix[2, 1] = (_uz * _uy * (1 - cos(_angle))) + (_ux * sin(_angle));
_matrix[2, 2] = cos(_angle) + (_uz * _uz * (1 - cos(_angle)));

var _result = noone;
_result[0] = _matrix[0, 0] * _vx + _matrix[0, 1] * _vy + _matrix[0, 2] * _vz;
_result[1] = _matrix[1, 0] * _vx + _matrix[1, 1] * _vy + _matrix[1, 2] * _vz;
_result[2] = _matrix[2, 0] * _vx + _matrix[2, 1] * _vy + _matrix[2, 2] * _vz;
return _result;
