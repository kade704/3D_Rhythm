///pingpong(t, length)

var _t = argument0;
var _length = argument1;

var _l = 2 * length;
_t %= _l;

return _l - _t;
