var _vx = argument0;
var _vy = argument1;
var _vz = argument2;

var _length = sqrt((_vx * _vx) + (_vy * _vy) + (_vz * _vz));

var _result = noone;
_result[0] = _vx / _length;
_result[1] = _vy / _length;
_result[2] = _vz / _length;
return _result;
