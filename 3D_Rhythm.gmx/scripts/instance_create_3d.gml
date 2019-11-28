///instance_create_3d(px, py, pz, fx, fy, fz, rx, ry, rz, ux, uy, uz, object)

var _px = argument0;
var _py = argument1;
var _pz = argument2;
var _fx = argument3;
var _fy = argument4;
var _fz = argument5;
var _rx = argument6;
var _ry = argument7;
var _rz = argument8;
var _ux = argument9;
var _uy = argument10;
var _uz = argument11;
var _object = argument12;

var _instance = instance_create(0, 0, _object);
_instance.PositionX = _px;
_instance.PositionY = _py;
_instance.PositionZ = _pz;
_instance.ForwardX = _fx;
_instance.ForwardY = _fy;
_instance.ForwardZ = _fz;
_instance.RightX = _rx;
_instance.RightY = _ry;
_instance.RightZ = _rz;
_instance.UpX = _ux;
_instance.UpY = _uy;
_instance.UpZ = _uz;

return _instance;
