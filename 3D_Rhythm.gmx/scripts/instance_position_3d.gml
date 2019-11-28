///instance_position_3d(x, y, z, object)

var _x = argument0;
var _y = argument1;
var _z = argument2;
var _object = argument3;

for (var i = 0; i < instance_number(_object); i++)
{
    var _inst = instance_find(_object, i);
    if(_inst.PositionX == _x && _inst.PositionY == _y && _inst.PositionZ == _z)
    {
        return _inst;
    }
}

return noone;
