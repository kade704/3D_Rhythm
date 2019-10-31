var angle = argument0;

_matrix[0, 0] = 1;
_matrix[0, 1] = 0;
_matrix[0, 2] = 0;
_matrix[0, 3] = 0;

_matrix[1, 0] = 0;
_matrix[1, 1] = cos(degtorad(angle));
_matrix[1, 2] = -sin(degtorad(angle));
_matrix[1, 3] = 0;

_matrix[2, 0] = 0;
_matrix[2, 1] = sin(degtorad(angle));
_matrix[2, 2] = cos(degtorad(angle));
_matrix[2, 3] = 0;

_matrix[3, 0] = 0;
_matrix[3, 1] = 0;
_matrix[3, 2] = 0;
_matrix[3, 3] = 1;

matrix = matrix_multiply(matrix, _matrix);
matrix_set(matrix_world, matrix);
