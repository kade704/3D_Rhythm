var x1 = argument0;
var y1 = argument1; 
var z1 = argument2; 
var x2 = argument3; 
var y2 = argument4; 
var z2 = argument5; 

result[0] = (y1 * z2) - (z1 * y2);
result[1] = (z1 * x2) - (x1 * z2);
result[2] = (x1 * y2) - (y1 * x2);

return result;
