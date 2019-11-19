///rotate_axis(vx, vy, vz, ax, ay, az, angle)

var _vx = argument0;
var _vy = argument1;
var _vz = argument2;
var _ax = argument3;
var _ay = argument4;
var _az = argument5;
var _angle = degtorad(argument6);

var _matrix = noone;
_matrix[0, 0] = cos(_angle) + (_ax * _ax * (1 - cos(_angle)));
_matrix[0, 1] = (_ax * _ay * (1 - cos(_angle))) - (_az * sin(_angle));
_matrix[0, 2] = (_ax * _az * (1 - cos(_angle))) + (_ay * sin(_angle));

_matrix[1, 0] = (_ay * _ax * (1 - cos(_angle))) + (_az * sin(_angle));
_matrix[1, 1] = cos(_angle) + (_ay * _ay * (1 - cos(_angle)));
_matrix[1, 2] = (_ay * _az * (1 - cos(_angle))) - (_ax * sin(_angle));

_matrix[2, 0] = (_az * _ax * (1 - cos(_angle))) - (_ay * sin(_angle));
_matrix[2, 1] = (_az * _ay * (1 - cos(_angle))) + (_ax * sin(_angle));
_matrix[2, 2] = cos(_angle) + (_az * _az * (1 - cos(_angle)));

var _result = noone;
_result[0] = _matrix[0, 0] * _vx + _matrix[0, 1] * _vy + _matrix[0, 2] * _vz;
_result[1] = _matrix[1, 0] * _vx + _matrix[1, 1] * _vy + _matrix[1, 2] * _vz;
_result[2] = _matrix[2, 0] * _vx + _matrix[2, 1] * _vy + _matrix[2, 2] * _vz;
return _result;
