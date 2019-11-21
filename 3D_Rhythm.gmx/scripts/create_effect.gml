///create_effect(index)

var _index = argument0;

var _effect = instance_create(0, 0, obj_Effect);
_effect.Px = obj_Data.Positions[_index, 0];
_effect.Py = obj_Data.Positions[_index, 1];
_effect.Pz = obj_Data.Positions[_index, 2];
_effect.Fx = obj_Data.Forwards[_index, 0];
_effect.Fy = obj_Data.Forwards[_index, 1];
_effect.Fz = obj_Data.Forwards[_index, 2];
_effect.Rx = obj_Data.Rights[_index, 0];
_effect.Ry = obj_Data.Rights[_index, 1];
_effect.Rz = obj_Data.Rights[_index, 2];
_effect.Ux = obj_Data.Ups[_index, 0];
_effect.Uy = obj_Data.Ups[_index, 1];
_effect.Uz = obj_Data.Ups[_index, 2];
