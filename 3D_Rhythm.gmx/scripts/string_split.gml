var _string = argument0;
var _sub

var _result = noone;

var _index = string_pos(" ", _string);
var i = 0;
while(_index != 0)
{
    _result[i++] = string_copy(_string, 1, _index - 1);
    _string = string_delete(_string, 1, _index);
    _index = string_pos(" ", _string);
}
_result[i] = _string;

return _result;
