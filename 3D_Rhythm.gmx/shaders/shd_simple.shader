attribute vec3 in_Position;
attribute vec3 in_Normal;

varying vec3 v_vPosition;
varying vec3 v_vNormal;

uniform vec3 _position;
uniform vec3 _direction;
uniform vec3 _side;
uniform vec3 _up;
uniform float _size;

void main()
{
    float _px = _position.x + (_direction.x * in_Position.x * _size) + (_side.x * in_Position.y * _size) + (_up.x * in_Position.z * _size);
    float _py = _position.y + (_direction.y * in_Position.x * _size) + (_side.y * in_Position.y * _size) + (_up.y * in_Position.z * _size);
    float _pz = _position.z + (_direction.z * in_Position.x * _size) + (_side.z * in_Position.y * _size) + (_up.z * in_Position.z * _size);
    vec3 _p = vec3(_px, _py, _pz);
    
    float _nx = (_direction.x * in_Normal.x) + (_side.x * in_Normal.y) + (_up.x * in_Normal.z);
    float _ny = (_direction.y * in_Normal.x) + (_side.y * in_Normal.y) + (_up.y * in_Normal.z);
    float _nz = (_direction.z * in_Normal.x) + (_side.z * in_Normal.y) + (_up.z * in_Normal.z);
    vec3 _n = normalize(vec3(_nx, _ny, _nz));
    
    v_vPosition = _p;
    v_vNormal = _n;
    
    vec4 object_space_pos = vec4(_p.x, _p.y, _p.z, 1.0);
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
}
//######################_==_YOYO_SHADER_MARKER_==_######################@~varying vec3 v_vPosition;
varying vec3 v_vNormal;
varying vec4 v_vColour;

uniform vec4 _colour;

void main()
{
    vec3 _lightDir = vec3(-10, -30, -20);

    float _min = 0.7;
    float _max = 1.0;
    
    float _intensity = abs(dot(normalize(v_vNormal), normalize(_lightDir)));
        
    float _result = _min + ((_max - _min) * _intensity);
    gl_FragColor = vec4(_colour.rgb * _result, _colour.a);
}
